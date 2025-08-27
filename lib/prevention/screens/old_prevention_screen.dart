/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/prevention/domain/models/article.dart';
import 'package:fr_cnamts_ens/prevention/screens/habitudes_de_vie_labels.dart';
import 'package:fr_cnamts_ens/prevention/screens/prevention_detail_screen.dart';
import 'package:fr_cnamts_ens/prevention/screens/prevention_link.dart';
import 'package:fr_cnamts_ens/prevention/screens/viewmodels/old_prevention_screen_view_model.dart';
import 'package:fr_cnamts_ens/prevention/widgets/prevention_habitudes_de_vie_card.dart';
import 'package:fr_cnamts_ens/profil_medical/bilan_de_prevention/screen/bilan_de_prevention_screen.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/data/questionnaire_ages_cles_mapper.dart';
import 'package:fr_cnamts_ens/tags/tags_prevention.dart';
import 'package:fr_cnamts_ens/tags/tags_questionnaire_ages_cles.dart';
import 'package:fr_cnamts_ens/traces/domain/ens_send_trace.dart';
import 'package:fr_cnamts_ens/ui/accessibility/accessible_tab_bar.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/ens_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_card.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_divider.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_html.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_link_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';
import 'package:fr_cnamts_ens/utils/screen_status.dart';
import 'package:fr_cnamts_ens/utils/webpage_utils.dart';

class OldPreventionScreen extends StatelessWidget {
  static const routeName = '/old-prevention';

  const OldPreventionScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EnsAppBarSubLevel(title: 'Prévention'),
      body: StoreConnector<EnsState, OldPreventionScreenViewModel>(
        converter: (store) => OldPreventionScreenViewModel.from(store),
        distinct: true,
        onInitialBuild: (vm) {
          vm.fetchPreventionData(false);
          context.tagAction(TagsPrevention.tag_2357_prevention);
        },
        builder: (context, vm) {
          switch (vm.actuSanteStatus) {
            case ScreenStatus.LOADING:
              return const _Loading();
            case ScreenStatus.ERROR:
              return _Error(vm);
            case ScreenStatus.SUCCESS:
              return _Success(vm);
          }
        },
      ),
    );
  }
}

class _Success extends StatefulWidget {
  final OldPreventionScreenViewModel vm;

  const _Success(this.vm);

  @override
  State<_Success> createState() => _SuccessState();
}

class _SuccessState extends State<_Success> with TickerProviderStateMixin {
  late final TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      vsync: this,
      length: widget.vm.thematiqueLabels.length,
    );

    tabController.addListener(() {
      if (tabController.indexIsChanging) {
        final currentThematique = widget.vm.thematiqueLabels[tabController.index];

        context.tagAction(
          TagsPrevention.tagBoutonPrevention(currentThematique.addUnderscoreToTag()),
        );
      }
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ScrollviewWithScrollbar(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  Text(
                    _getHeaderText(profilType: widget.vm.profilType),
                    style: EnsTextStyle.text14_w400_normal_body,
                  ),
                  const SizedBox(height: 24),
                  PreventionHabitudesDeVieCard(
                    label: widget.vm.profilType.isProfilPrincipal
                        ? PreventionHabitudesDeVieLabels.POUR_MOI.label
                        : PreventionHabitudesDeVieLabels.POUR_UN_TIERS.label,
                  ),
                  if (widget.vm.profilType.isAdult) ...[
                    const SizedBox(height: 24),
                    _BilanDePreventionCard(),
                  ],
                ],
              ),
            ),
            AccessibleTabBar(
              tabController: tabController,
              labels: widget.vm.thematiqueLabels,
              tabAlignment: TabAlignment.start,
            ),
            const SizedBox(height: 24),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              child: TabBarView(
                controller: tabController,
                children: widget.vm.displayModelsGroupByThematique.keys.map((thematique) {
                  return ListViewWithScrollbar.builder(
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          ...widget.vm.displayModelsGroupByThematique[thematique]!.map((displayModel) {
                            return _CardItem(
                              id: displayModel.id,
                              background: displayModel.backgroundColor,
                              image: displayModel.image,
                              imageActuSantePage: displayModel.imageActuSantePage,
                              title: displayModel.title ?? '',
                              body: displayModel.body,
                              imageFromCms: displayModel.imageFromCms,
                              link: displayModel.link,
                              textLink: displayModel.textLink,
                              hasDetailArticle: displayModel.hasDetailArticle,
                              shouldShowVisiteMedicaleBottomSheet: displayModel.shouldShowVisiteMedicalBottomSheet,
                              questionnaireCode: displayModel.questionnaireCode,
                              isLastOne: displayModel == widget.vm.displayModelsGroupByThematique[thematique]!.last,
                              isArticlePrevention: displayModel.thematique != ACTU_SANTE_THEMATIQUE,
                              labelThematique: widget.vm.thematiqueLabels[tabController.index],
                            );
                          }),
                        ],
                      );
                    },
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _BilanDePreventionCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return EnsCard(
      backgroundColor: EnsColors.neutral200,
      onTap: () {
        Navigator.pushNamed(context, BilanDePreventionScreen.routeName);
        context.traceAction(EnsTraceType.CONSULT_RUBRIQUE_BILAN_DE_PREVENTION);
      },
      padding: const EdgeInsets.all(16),
      child: const Row(
        children: [
          EnsSvg(EnsImages.suivi_medical, height: 64, width: 64),
          SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'À certains âges clés, je prépare mon bilan de prévention en répondant à un auto-questionnaire.',
                  style: EnsTextStyle.text14_w400_normal_body,
                ),
                EnsLinkText(
                  label: 'Voir les bilans de prévention',
                  textPadding: EdgeInsets.only(top: 4),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _CardItem extends StatelessWidget {
  final String id;
  final String background;
  final String? image;
  final String? imageActuSantePage;
  final String title;
  final String? body;
  final bool imageFromCms;
  final String? link;
  final String? textLink;
  final bool hasDetailArticle;
  final bool shouldShowVisiteMedicaleBottomSheet;
  final QuestionnaireCode? questionnaireCode;
  final bool isLastOne;
  final bool isArticlePrevention;
  final String labelThematique;

  const _CardItem({
    required this.id,
    required this.background,
    this.image,
    this.imageActuSantePage,
    required this.title,
    this.body,
    this.link,
    this.textLink,
    required this.hasDetailArticle,
    required this.imageFromCms,
    this.questionnaireCode,
    this.shouldShowVisiteMedicaleBottomSheet = false,
    required this.isLastOne,
    required this.isArticlePrevention,
    required this.labelThematique,
  });

  @override
  Widget build(BuildContext context) {
    final cmsUrl = EnsModuleContainer.currentInjector.getUrlsConfig().cmsUrl;
    const imagePath = '/sites/default/files/';
    return EnsInkWell(
      color: EnsColors.light,
      borderRadius: BorderRadius.circular(20),
      onTap: () {
        context.tagAction(TagsPrevention.tagBoutonArticlesPrevention(labelThematique.addUnderscoreToTag()));
        if (hasDetailArticle) {
          Navigator.pushNamed(
            context,
            PreventionDetailScreen.routeName,
            arguments: PreventionDetailScreenArgument(articleId: id, isGenerique: isArticlePrevention),
          );
        } else if (shouldShowVisiteMedicaleBottomSheet) {
          showVisiteMedicaleBottomSheet(context, questionnaireCode);
        } else if (link != null) {
          launchUrlOrInternalLink(link!);
        }
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(24),
            child: LayoutBuilder(
              builder: (context, constraints) {
                final titleLengthEvaluation = TextSpan(
                  text: title,
                  style: EnsTextStyle.text14_w400_normal_body,
                );
                final textPainter = TextPainter(
                  text: titleLengthEvaluation,
                  textDirection: TextDirection.ltr,
                );
                textPainter.layout(maxWidth: constraints.maxWidth);
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    if (!imageFromCms)
                      imageActuSantePage != null || image != null
                          ? EnsSvg(imageActuSantePage ?? image!, fit: BoxFit.fill)
                          : Container()
                    else
                      Stack(
                        fit: StackFit.passthrough,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: EnsSvg(background, fit: BoxFit.fill),
                          ),
                          Center(
                            child: Container(
                              margin: const EdgeInsets.symmetric(vertical: 40),
                              height: 80,
                              width: 80,
                              child: SvgPicture.network(
                                'https://$cmsUrl$imagePath$image',
                                height: 80,
                                width: 90,
                                excludeFromSemantics: true,
                              ),
                            ),
                          ),
                        ],
                      ),
                    const SizedBox(height: 16),
                    if (title != '')
                      Text(
                        title,
                        style: EnsTextStyle.text16_w600_title,
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                      ),
                    const SizedBox(height: 8),
                    EnsHtml(
                      data: body ?? '',
                      lineHeight: 1.4,
                      maxLines: 3,
                    ),
                    const SizedBox(height: 8),
                    PreventionLink(
                      linkUrl: link,
                      linkName: textLink,
                      style: EnsTextStyle.text14_w700_normal_primary_underline,
                    ),
                  ],
                );
              },
            ),
          ),
          if (!isLastOne) const EnsDivider(),
        ],
      ),
    );
  }
}

class _Error extends StatelessWidget {
  final OldPreventionScreenViewModel vm;

  const _Error(this.vm);

  @override
  Widget build(BuildContext context) {
    return ErrorPage(reloadFunction: () => vm.fetchPreventionData(true));
  }
}

class _Loading extends StatelessWidget {
  const _Loading();

  @override
  Widget build(BuildContext context) {
    return const ScrollviewWithScrollbar(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SkeletonBox(width: 300, height: 35),
                SizedBox(height: 8),
                SkeletonBox(width: 150, height: 35),
                SizedBox(height: 8),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(24),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SkeletonBox(width: 100, height: 35),
                SizedBox(height: 10),
                SkeletonBox(width: 100, height: 35),
                SizedBox(height: 10),
                SkeletonBox(width: 100, height: 35),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: [
                EnsCard(
                  padding: EdgeInsets.all(64),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SkeletonBox(width: 300, height: 20),
                      SizedBox(height: 8),
                      SkeletonBox(width: 300, height: 20),
                      SizedBox(height: 8),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                EnsCard(
                  padding: EdgeInsets.all(64),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SkeletonBox(width: 300, height: 20),
                      SizedBox(height: 8),
                      SkeletonBox(width: 300, height: 20),
                      SizedBox(height: 8),
                    ],
                  ),
                ),
                SizedBox(height: 15),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void showVisiteMedicaleBottomSheet(BuildContext context, QuestionnaireCode? questionnaireCode) {
  if (questionnaireCode != null) {
    context.tagAction(
      TagsQuestionnaireAgesCles.tagPopinEnsavoirPlusRdvQuestionnaire(
        questionnaireCode.getTrancheAgeForTracking(),
      ),
    );
  }
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return EnsIllustrationBottomSheet(
        title: 'Je bénéficie d’une visite médicale',
        subtitle:
            '\<div style="text-align:center">Je prends rendez-vous avec mon médecin traitant ou me rends sur \<a href="https://www.sante.fr/annuaire-mon-bilan-prevention">sante.fr</a> pour trouver un professionnel de santé partenaire près de chez moi afin de bénéficier de conseils personnalisés. Je bénéficierai ainsi d’un plan personnalisé de prévention adaptée me permettant d’améliorer mon état de santé. <br/> <br/> Ce bilan de prévention est pris en charge à 100% par l’assurance maladie.</div>',
        asset: EnsImages.agenda_rendez_vous_background_blue,
        positiveButtonLabel: 'J’ai compris',
        secondaryButtonOutlined: true,
        positiveButtonHandler: () => {
          if (questionnaireCode != null)
            context.tagAction(
              TagsQuestionnaireAgesCles.tagButtonComprisRdvQuestionnaire(
                questionnaireCode.getTrancheAgeForTracking(),
              ),
            ),
        },
        closeButtonHandler: () => {},
        isSubtitleHTML: true,
        linkHandler: () {
          if (questionnaireCode != null) {
            context.tagAction(
              TagsQuestionnaireAgesCles.tagLinkSanteFrRdvQuestionnaire(
                questionnaireCode.getTrancheAgeForTracking(),
              ),
            );
          }
        },
      );
    },
  );
}

String _getHeaderText({
  required ProfilType profilType,
}) {
  return switch (profilType) {
    ProfilType.PROFIL_PRINCIPAL =>
      'Je retrouve ici toutes les informations dont j\'ai besoin pour m\'aider à améliorer ma santé.',
    ProfilType.AIDE ||
    ProfilType.AYANT_DROIT =>
      'Je retrouve ici toutes les informations dont j\'ai besoin pour l\'aider à améliorer sa santé.'
  };
}
