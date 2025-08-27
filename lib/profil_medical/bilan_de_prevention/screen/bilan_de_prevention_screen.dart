/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/bilan_de_prevention/redux/bilan_de_prevention_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/bilan_de_prevention/screen/viewModels/bilan_de_prevention_screen_view_model.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/data/questionnaire_ages_cles_mapper.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/redux/questionnaire_ages_cles_redux.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/screens/questionnaire_ages_cles_question_screen.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/screens/questionnaire_ages_cles_welcome_screen.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/synthese_questionnaire_ages_cles/screens/synthese_questionnaire_ages_cles_screen.dart';
import 'package:fr_cnamts_ens/snackbar/redux/snackbar_actions.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_bilan_de_prevention.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/dynamic_action_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_card.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_empty_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_external_link.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_rich_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/device_utils.dart';

class BilanDePreventionScreen extends StatelessWidget {
  static const String routeName = '/medical/profil/bilan-de-prevention';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EnsAppBarSubLevel(
        title: 'Bilan de prévention',
      ),
      body: StoreConnector<EnsState, BilanDePreventionScreenViewModel>(
        converter: (store) => BilanDePreventionScreenViewModel(store),
        distinct: true,
        onInitialBuild: (vm) {
          context.tagAction(TagsBilanDePrevention.tag_2368_bilan_de_prevention);
        },
        onInit: (store) {
          store.dispatch(FetchBilanDePreventionQuestionnairesAction());
        },
        builder: (context, vm) {
          return _Content(vm: vm);
        },
      ),
    );
  }
}

class _Content extends StatelessWidget {
  final BilanDePreventionScreenViewModel vm;

  const _Content({
    required this.vm,
  });

  @override
  Widget build(BuildContext context) {
    switch (vm.status) {
      case BilanDePreventionStatus.NOT_LOADED:
      case BilanDePreventionStatus.LOADING:
        return _Loading();
      case BilanDePreventionStatus.SUCCESS:
        return _Success(vm: vm);
      case BilanDePreventionStatus.ERROR:
        return ErrorPage(reloadFunction: vm.reload);
      case BilanDePreventionStatus.EMPTY:
        return EnsEmptyPage(
          title: 'Je n\'ai pas encore de bilan de prévention à réaliser',
          descriptionRichText: EnsRichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text:
                  'Mon bilan prévention est un dispositif du Ministère de la Santé et de la Prévention qui m\'invite à faire le point sur ma santé avec un professionnel de santé. \nÀ 18 ans, 45 ans, 60 ans et 70 ans, je retrouverai ici un questionnaire qui me permettra de préparer ce rendez-vous. \nPour en savoir plus sur le dispositif je me rends sur ',
              style: DeviceUtils.isSmallDevice(context)
                  ? EnsTextStyle.text14_w400_normal_body
                  : EnsTextStyle.text16_w400_normal_body,
              children: [
                WidgetSpan(
                  child: EnsExternalLink.withRedirection(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    linkUrl: 'http://monbilanprevention.sante.gouv.fr/',
                    linkText: 'monbilanprevention.sante.gouv.fr',
                    semanticsLabel: 'mon bilan prévention point santé point gouv point fr',
                    linkTextStyle: DeviceUtils.isSmallDevice(context)
                        ? EnsTextStyle.text14_w700_normal_primary_underline
                        : EnsTextStyle.text16_w700_normal_primary_underline,
                    onTap: () {
                      context.tagAction(
                        TagsBilanDePrevention.tag_2379_link_bilan_de_prevention_empty_monbilanprevention,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          buttonList: EnsEmptyButtonList.withoutButton(),
          customImagePath: EnsImages.suivi_medical,
        );
    }
  }
}

class _Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SkeletonBox(width: 300),
          SizedBox(height: 8),
          SkeletonBox(width: 225),
          SizedBox(height: 32),
          SkeletonBox(width: 80),
          SizedBox(height: 8),
          SkeletonCardWithDescription(),
          SizedBox(height: 12),
          SkeletonCardWithDescription(),
          SizedBox(height: 12),
          SkeletonCardWithDescription(),
        ],
      ),
    );
  }
}

class _Success extends StatelessWidget {
  final BilanDePreventionScreenViewModel vm;

  const _Success({required this.vm});

  @override
  Widget build(BuildContext context) {
    return ScrollviewWithScrollbar(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
      child: Column(
        children: [
          const Text(
            'Je peux retrouver mes questionnaires de santé pour préparer mon bilan de prévention.',
            style: EnsTextStyle.text14_w400_normal_body,
          ),
          const SizedBox(height: 32),
          if (vm.questionnairesAFaireDisplayModels.isNotEmpty)
            _QuestionnaireList(label: 'A faire', questionnaires: vm.questionnairesAFaireDisplayModels),
          if (vm.questionnairesEnCoursDisplayModels.isNotEmpty)
            _QuestionnaireList(label: 'En cours', questionnaires: vm.questionnairesEnCoursDisplayModels),
          if (vm.questionnairesFinisDisplayModels.isNotEmpty)
            _QuestionnaireList(label: 'Terminé', questionnaires: vm.questionnairesFinisDisplayModels),
        ],
      ),
    );
  }
}

class _QuestionnaireList extends StatelessWidget {
  final String label;
  final List<QuestionnairePreventionDisplayModel> questionnaires;

  const _QuestionnaireList({required this.label, required this.questionnaires});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: EnsTextStyle.text16_w600_body),
        const SizedBox(height: 8),
        ...questionnaires.map((questionnaire) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: _QuestionnaireCard(
              title: questionnaire.titre,
              availableLabel: questionnaire.availableLabel,
              derniereMajLabel: questionnaire.derniereMajLabel,
              enCours: questionnaire.status == BilanDePreventionQuestionnaireStatus.EN_COURS,
              onTap: () {
                switch (questionnaire.status) {
                  case BilanDePreventionQuestionnaireStatus.A_FAIRE:
                    context.tagAction(
                      TagsBilanDePrevention.tag2369to2372buttonRepondreBilanDePrevention(
                        questionnaire.trackingTrancheAge,
                      ),
                    );
                    Navigator.pushNamed(
                      context,
                      QuestionnaireAgesClesWelcomeScreen.routeName,
                      arguments: QuestionnaireAgesClesWelcomeScreenArgument(
                        isFromBilanDePrevention: true,
                        questionnaireCode: questionnaire.code,
                        questionnaireVersion: questionnaire.version,
                      ),
                    );
                  case BilanDePreventionQuestionnaireStatus.EN_COURS:
                    context.tagAction(
                      TagsBilanDePrevention.tag2369to2372buttonRepondreBilanDePrevention(
                        questionnaire.trackingTrancheAge,
                      ),
                    );
                    _showQuestionnaireEnCoursBottomSheet(
                      context,
                      questionnaire.responseId,
                      questionnaire.code,
                      questionnaire.version,
                    );
                  case BilanDePreventionQuestionnaireStatus.TERMINE:
                    if (EnsModuleContainer.currentInjector.isGuestMode()) {
                      StoreProvider.of<EnsState>(context).dispatch(
                        const DisplaySnackbarAction.unavailableInGuestMode(),
                      );
                    } else {
                      context.tagAction(TagsBilanDePrevention.tag_2377_button_afficher_bilan_de_prevention_termine);
                      Navigator.pushNamed(
                        context,
                        SyntheseQuestionnaireAgesClesScreen.routeName,
                        arguments: SyntheseQuestionnaireAgesClesScreenArgument(
                          isFromBilanDePrevention: true,
                          code: questionnaire.code,
                          version: questionnaire.version,
                          isDraft: questionnaire.isDraft,
                        ),
                      );
                    }
                }
              },
            ),
          );
        }),
        const SizedBox(height: 8),
      ],
    );
  }

  void _showQuestionnaireEnCoursBottomSheet(
    BuildContext context,
    String? responseId,
    QuestionnaireCode questionnaireCode,
    String questionnaireVersion,
  ) {
    DynamicActionBottomSheet.showOptionsBottomSheet(
      [
        BottomSheetAction(
          assetName: EnsImages.ic_edit,
          label: 'Reprendre mon questionnaire',
          execution: () {
            context.tagAction(TagsBilanDePrevention.tag_2373_bilan_de_prevention_plus_reprendre);
            Navigator.pushNamed(
              context,
              QuestionnaireAgesClesQuestionScreen.routeName,
              arguments: QuestionnaireAgesClesQuestionScreenArguments(
                isFromBilanDePrevention: true,
                questionnaireCode: questionnaireCode,
                questionnaireVersion: questionnaireVersion,
              ),
            );
          },
        ),
        BottomSheetAction(
          assetName: EnsImages.ic_trash,
          label: 'Supprimer mes réponses',
          execution: () {
            _showDeleteAnswersConfirmation(context, responseId, questionnaireCode);
          },
        ),
      ],
      context,
      title: 'Sélectionner une action',
    );
  }

  Future<dynamic> _showDeleteAnswersConfirmation(
    BuildContext context,
    String? responseId,
    QuestionnaireCode questionnaireCode,
  ) {
    context.tagAction(TagsBilanDePrevention.tag_2374_popin_bilan_de_prevention_supprimer);
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return ConfirmationBottomSheet(
          title: 'Supprimer les réponses au questionnaire ?',
          content: null,
          positiveButtonLabel: 'Supprimer',
          positiveButtonHandler: () {
            context.tagAction(TagsBilanDePrevention.tag_2376_bilan_de_prevention_supprimer_valider);
            StoreProvider.of<EnsState>(context).dispatch(ResetQuestionnaireAgesClesAction());
            StoreProvider.of<EnsState>(context).dispatch(
              DeleteQuestionnaireResponsesAction(
                responseId: responseId,
                questionnaireCode: questionnaireCode,
              ),
            );
          },
          negativeButtonLabel: 'Annuler',
          negativeButtonHandler: () {
            context.tagAction(TagsBilanDePrevention.tag_2375_bilan_de_prevention_supprimer_annuler);
          },
        );
      },
    );
  }
}

class _QuestionnaireCard extends StatelessWidget {
  final String title;
  final String? availableLabel;
  final String? derniereMajLabel;
  final bool enCours;
  final void Function()? onTap;

  const _QuestionnaireCard({
    required this.title,
    required this.availableLabel,
    required this.derniereMajLabel,
    this.enCours = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return EnsCard(
      padding: const EdgeInsets.all(16),
      borderRadius: 16,
      onTap: () {
        onTap?.call();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(child: EnsSvg(EnsImages.suivi_medical, height: 64, width: 64)),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: EnsTextStyle.text16_w700_normal_title),
                if (derniereMajLabel != null) Text(derniereMajLabel!, style: EnsTextStyle.text14_w400_normal_body),
                if (availableLabel != null) Text(availableLabel!, style: EnsTextStyle.text14_w400_normal_body),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 8, left: 4),
              child: EnsSvg(
                enCours ? EnsImages.ic_more_vertical : EnsImages.ic_chevron_right,
                height: 16,
                width: 16,
                color: EnsColors.title,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
