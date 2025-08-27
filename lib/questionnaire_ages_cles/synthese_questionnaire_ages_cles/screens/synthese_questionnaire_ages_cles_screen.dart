/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_redux.dart';
import 'package:fr_cnamts_ens/files/screens/file_sharing_bottom_sheet.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/interruption_services/widget/interruption_service_helper.dart';
import 'package:fr_cnamts_ens/profil_medical/bilan_de_prevention/screen/bilan_de_prevention_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/redux/mesures_redux.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/data/questionnaire_ages_cles_mapper.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/domain/models/fin_informations.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/redux/questionnaire_ages_cles_redux.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/screens/questionnaire_ages_cles_question_screen.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/screens/start_new_version_questionnaire_screen.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/synthese_questionnaire_ages_cles/screens/viewModels/synthese_questionnaire_ages_cles_screen_view_model.dart';
import 'package:fr_cnamts_ens/synthese_pdf/redux/synthese_pdf_redux.dart';
import 'package:fr_cnamts_ens/synthese_pdf/widgets/synthese_pdf_widget.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_bilan_de_prevention.dart';
import 'package:fr_cnamts_ens/tags/tags_questionnaire_ages_cles.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/resources/resource_extension.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/dynamic_action_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/information_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/multi_action_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/multi_action_illustration_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button_secondary.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_external_link.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_link_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_rich_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/navigation_utils.dart';
import 'package:fr_cnamts_ens/utils/screen_status.dart';
import 'package:lottie/lottie.dart';

class SyntheseQuestionnaireAgesClesScreenArgument {
  final bool isFromBilanDePrevention;
  final QuestionnaireCode code;
  final bool isDraft;
  final String? version;

  SyntheseQuestionnaireAgesClesScreenArgument({
    required this.isFromBilanDePrevention,
    required this.code,
    required this.isDraft,
    required this.version,
  });
}

class SyntheseQuestionnaireAgesClesScreen extends StatelessWidget {
  static const routeName = '/medical/profil/synthese_questionnaire';

  const SyntheseQuestionnaireAgesClesScreen();

  @override
  Widget build(BuildContext context) {
    final argument = ModalRoute.of(context)?.settings.arguments as SyntheseQuestionnaireAgesClesScreenArgument?;
    final bool isFromBilanDePrevention = argument?.isFromBilanDePrevention ?? false;
    final String? version = argument?.version;
    final QuestionnaireCode? questionnaireCode = argument?.code;
    final bool isDraft = argument?.isDraft ?? false;

    return StoreConnector<EnsState, SyntheseQuestionnaireAgesClesScreenViewModel>(
      converter: (store) => SyntheseQuestionnaireAgesClesScreenViewModel(
        store: store,
        version: version,
        questionnaireCodeFromArgs: questionnaireCode,
      ),
      onInit: (store) {
        store.dispatch(
          FetchQuestionnaireAgesClesAction(
            version: version,
            code: questionnaireCode,
          ),
        );
        store.dispatch(InitSynthesePdfStateAction());
        store.dispatch(
          FetchSyntheseQuestionnaireAction(
            version: version,
            code: questionnaireCode,
          ),
        );
        store.dispatch(FetchDocumentsAction());
        store.dispatch(const FetchLastMesuresAction());
      },
      onInitialBuild: (vm) {
        context.tagAction(TagsQuestionnaireAgesCles.tagSyntheseQuestionnaire995(vm.trackingTrancheAge));
      },
      onDidChange: (oldVm, vm) {
        if (oldVm?.fetchQuestionnaireVersionQueryStatus.isNotSuccess() == true &&
            vm.fetchQuestionnaireVersionQueryStatus.isSuccess() &&
            ModalRoute.of(context)?.isCurrent == true) {
          vm.redirectToStartNewVersion
              ? Navigator.pushNamed(context, StartNewVersionQuestionnaireScreen.routeName)
              : Navigator.pushReplacementNamed(
                  context,
                  QuestionnaireAgesClesQuestionScreen.routeName,
                  arguments: QuestionnaireAgesClesQuestionScreenArguments(
                    isEditMode: true,
                    isFromBilanDePrevention: isFromBilanDePrevention,
                    questionnaireCode: vm.questionnaireCode,
                  ),
                );
        }
      },
      onWillChange: (oldvm, vm) {
        if (oldvm?.shouldDisplayConfidentialiteBottomSheet != true && vm.shouldDisplayConfidentialiteBottomSheet) {
          _openConfidentialiteBottomSheet(context, vm);
        }
      },
      distinct: true,
      builder: (_, SyntheseQuestionnaireAgesClesScreenViewModel vm) => Scaffold(
        appBar: _AppBar(vm: vm, isDraft: isDraft),
        body: _Content(vm: vm, isFromBilanDePrevention: isFromBilanDePrevention, isDraft: isDraft),
      ),
    );
  }
}

class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(64);

  final SyntheseQuestionnaireAgesClesScreenViewModel vm;
  final bool isDraft;

  const _AppBar({required this.vm, required this.isDraft});

  @override
  Widget build(BuildContext context) {
    return EnsAppBar(
      title: isDraft ? 'Questionnaire de santé' : 'Questionnaire de santé complété',
      leading: IconButton(
        icon: const EnsSvg(EnsImages.ic_close_big, color: EnsColors.title, width: 14, height: 14),
        tooltip: 'Fermer la fenêtre',
        splashRadius: 24,
        onPressed: () {
          if (vm.syntheseDocumentStatus == SyntheseDocumentStatus.SYNTHESE_DOC_CAN_BE_SAVE &&
              vm.syntheseViewStatus.isNotError()) {
            _openQuitActionBottomSheet(context, vm);
          } else {
            Navigator.of(context).pop();
          }
        },
      ),
      action: vm.syntheseViewStatus.isSuccess()
          ? Padding(
              padding: const EdgeInsets.only(right: 8),
              child: IconButton(
                icon: const EnsSvg(EnsImages.ic_more_vertical, color: EnsColors.title, height: 16, width: 4),
                tooltip: 'Effectuer des actions sur la synthèse du questionnaire',
                splashRadius: 24,
                onPressed: () => _displayActionsBottomSheet(context, vm),
              ),
            )
          : const SizedBox(width: 24),
    );
  }

  void _displayActionsBottomSheet(
    BuildContext context,
    SyntheseQuestionnaireAgesClesScreenViewModel vm,
  ) {
    context.tagAction(TagsQuestionnaireAgesCles.tagButtonOptionsQuestionnaire1513(vm.trackingTrancheAge));
    context.tagAction(TagsQuestionnaireAgesCles.tagPopinSelectionnerActionQuestionnaire1514(vm.trackingTrancheAge));
    DynamicActionBottomSheet.showOptionsBottomSheet(
      _setBottomSheetActions(context, vm),
      context,
    );
  }
}

class _Content extends StatelessWidget {
  final SyntheseQuestionnaireAgesClesScreenViewModel vm;
  final bool isFromBilanDePrevention;
  final bool isDraft;

  const _Content({required this.vm, required this.isFromBilanDePrevention, required this.isDraft});

  @override
  Widget build(BuildContext context) {
    switch (vm.syntheseViewStatus) {
      case ScreenStatus.SUCCESS:
        return SynthesePdfWidget(
          synthesePdf: vm.synthese!,
          semanticLabel: 'Votre synthèse du questionnaire au format PDF',
          bottomTitle: isDraft ? 'Questionnaire de santé' : 'Questionnaire de santé complété',
          bottomSubtitle: isDraft ? null : vm.synthese?.updateDate,
          bottomContent: isDraft
              ? EnsButton(
                  label: 'Retourner à Bilan de prévention',
                  onTap: () {
                    Navigator.popUntil(context, ModalRoute.withName(BilanDePreventionScreen.routeName));
                  },
                )
              : _BottomTileContent(
                  trackingTrancheAge: vm.trackingTrancheAge,
                  isSyntheseNewVersion: vm.isSyntheseNewVersion,
                  hasSyntheseDocument: vm.hasSyntheseDocument,
                  syntheseBottomTileState: vm.syntheseDocumentStatus,
                  isFromBilanDePrevention: isFromBilanDePrevention,
                  addSyntheseToDocs: vm.addSyntheseToDocs,
                  finInformations: vm.finInformations,
                  isFinInformationRemplis: vm.isFinInformationsRemplis,
                  interruptionServiceSnackbarMessage: vm.interruptionServiceSnackbarMessage,
                ),
        );
      case ScreenStatus.ERROR:
        return _Error(vm);
      case ScreenStatus.LOADING:
        return _Loading();
    }
  }
}

class _BottomTileContent extends StatelessWidget {
  final String trackingTrancheAge;
  final bool isSyntheseNewVersion;
  final bool isFromBilanDePrevention;
  final bool hasSyntheseDocument;
  final SyntheseDocumentStatus syntheseBottomTileState;
  final FinInformations finInformations;
  final bool isFinInformationRemplis;
  final Function(bool?) addSyntheseToDocs;
  final String? interruptionServiceSnackbarMessage;

  const _BottomTileContent({
    required this.trackingTrancheAge,
    required this.isSyntheseNewVersion,
    required this.hasSyntheseDocument,
    required this.isFromBilanDePrevention,
    required this.addSyntheseToDocs,
    required this.syntheseBottomTileState,
    required this.finInformations,
    required this.isFinInformationRemplis,
    required this.interruptionServiceSnackbarMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _DocumentsExplanation(
          isSyntheseNewVersion: isSyntheseNewVersion,
          isSyntheseStoreInDocuments: hasSyntheseDocument,
        ),
        const SizedBox(height: 18),
        if (isFinInformationRemplis)
          _RendezVousMedecinTraitantCard(trackingTrancheAge: trackingTrancheAge, finInformations: finInformations),
        const SizedBox(height: 28),
        _ButtonsTileWidget(
          sendSynthese: addSyntheseToDocs,
          trackingTrancheAge: trackingTrancheAge,
          isFromBilanDePrevention: isFromBilanDePrevention,
          syntheseBottomTileState: syntheseBottomTileState,
          interruptionServiceSnackbarMessage: interruptionServiceSnackbarMessage,
        ),
      ],
    );
  }
}

class _RendezVousMedecinTraitantCard extends StatelessWidget {
  final String trackingTrancheAge;
  final FinInformations finInformations;

  const _RendezVousMedecinTraitantCard({required this.trackingTrancheAge, required this.finInformations});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const EnsSvg(EnsImages.agenda_rendez_vous_background_blue, height: 64),
        const SizedBox(width: 12),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              EnsRichText(
                text: TextSpan(
                  text: finInformations.labels.first,
                  children: [
                    WidgetSpan(
                      child: EnsExternalLink.withRedirection(
                        linkUrl: finInformations.link!,
                        linkText: ' ${finInformations.linkText} ',
                        onTap: () {
                          context.tagAction(
                            TagsQuestionnaireAgesCles.tagButtonSantePubliqueFrance1001(trackingTrancheAge),
                          );
                        },
                      ),
                    ),
                    TextSpan(
                      text: finInformations.labels.last,
                      style: EnsTextStyle.text14_w400_normal_body,
                    ),
                  ],
                  style: EnsTextStyle.text14_w400_normal_body,
                ),
              ),
              EnsLinkText(
                label: finInformations.titreBouton!,
                textStyle: EnsTextStyle.text14_w700_primary_underline,
                textPadding: EdgeInsets.zero,
                onTap: () {
                  _openInfoBottomSheet(context);
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _DocumentsExplanation extends StatelessWidget {
  final bool isSyntheseNewVersion;
  final bool isSyntheseStoreInDocuments;

  const _DocumentsExplanation({
    required this.isSyntheseNewVersion,
    required this.isSyntheseStoreInDocuments,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        EnsSvg(isSyntheseNewVersion ? EnsImages.synthese_questionnaire_maj : EnsImages.suivi_medical, height: 64),
        const SizedBox(width: 12),
        if (isSyntheseStoreInDocuments)
          const Flexible(
            child: Text(
              'Mes réponses sont enregistrées dans mes documents afin de les partager à mes professionnels de santé.',
              style: EnsTextStyle.text14_w400_normal_body,
            ),
          )
        else
          Flexible(
            child: Text(
              isSyntheseNewVersion
                  ? 'J\'enregistre mes nouvelles réponses dans mes documents afin de les partager à mes professionnels de santé. L’enregistrement remplacera la précédente version de mon questionnaire dans mes Documents.'
                  : 'J\'enregistre mes réponses dans mes documents afin de les partager à mes professionnels de santé.',
              style: EnsTextStyle.text14_w400_normal_body,
            ),
          ),
      ],
    );
  }
}

class _ButtonsTileWidget extends StatelessWidget {
  final void Function(bool?) sendSynthese;
  final String trackingTrancheAge;
  final bool isFromBilanDePrevention;
  final SyntheseDocumentStatus syntheseBottomTileState;
  final String? interruptionServiceSnackbarMessage;

  const _ButtonsTileWidget({
    required this.sendSynthese,
    required this.trackingTrancheAge,
    required this.isFromBilanDePrevention,
    required this.syntheseBottomTileState,
    required this.interruptionServiceSnackbarMessage,
  });

  @override
  Widget build(BuildContext context) {
    if (syntheseBottomTileState != SyntheseDocumentStatus.SYNTHESE_DOC_ALREADY_SAVED) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          EnsButton(
            label: 'Enregistrer dans mes documents',
            onTap: () async {
              context.tagAction(
                TagsQuestionnaireAgesCles.tagButtonSyntheseQuestionnaireEnregistrer997(trackingTrancheAge),
              );
              InterruptionServiceHelper.showSnackbarOnInterruption(
                context,
                interruptionServiceSnackbarMessage: interruptionServiceSnackbarMessage,
                onNotInterrompu: () => sendSynthese(null),
              );
            },
            isLoading: syntheseBottomTileState == SyntheseDocumentStatus.LOADING,
          ),
          const SizedBox(height: 12),
          if (isFromBilanDePrevention)
            const _BilanDeSanteButton()
          else
            Center(
              child: EnsInkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    'Quitter sans enregistrer',
                    style: EnsTextStyle.text16_w700_primary_underline,
                  ),
                ),
              ),
            ),
        ],
      );
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          EnsButtonSecondary(
            label: 'Aller dans mes documents',
            onTap: () async {
              context.tagAction(
                TagsQuestionnaireAgesCles.tagButtonSyntheseQuestionnaireAllerDocuments1002(trackingTrancheAge),
              );
              navigateInApp('/documents');
              Navigator.of(context).popUntil((route) => route.isFirst);
            },
          ),
          const SizedBox(height: 12),
          if (isFromBilanDePrevention) const _BilanDeSanteButton(),
        ],
      );
    }
  }
}

class _BilanDeSanteButton extends StatelessWidget {
  const _BilanDeSanteButton();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: EnsLinkText(
        label: 'Retourner à la rubrique Bilan de prévention',
        textStyle: EnsTextStyle.text16_w700_primary_underline,
        textPadding: const EdgeInsets.all(8.0),
        textAlign: TextAlign.center,
        onTap: () {
          context.tagAction(TagsBilanDePrevention.tag_2378_button_synthese_questionnaire_retour);
          Navigator.popUntil(context, ModalRoute.withName(BilanDePreventionScreen.routeName));
        },
        alignment: AlignmentDirectional.center,
      ),
    );
  }
}

class _Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Spacer(flex: 2),
          Lottie.asset('assets/anims/file_download.json', height: 160, width: 160, fit: BoxFit.contain),
          const Text('Chargement de la synthèse...', style: EnsTextStyle.text14_w700_normal_primary),
          const Spacer(flex: 3),
        ],
      ),
    );
  }
}

class _Error extends StatelessWidget {
  final SyntheseQuestionnaireAgesClesScreenViewModel vm;

  const _Error(this.vm);

  @override
  Widget build(BuildContext context) {
    return ErrorPage(reloadFunction: () => vm.reloadSynthese());
  }
}

void _openInfoBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return const EnsInformationWithIllustrationBottomSheet(
        asset: EnsImages.agenda,
        title: 'Je bénéficie d’une visite médicale',
        additionalContent: [
          EnsRichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: 'Je me rends sur ',
              children: [
                WidgetSpan(
                  child: EnsExternalLink.withRedirection(
                    linkUrl: 'https://www.sante.fr/annuaire-mon-bilan-prevention',
                    linkText: 'sante.fr',
                    semanticsLabel: 'santé point fr',
                  ),
                ),
                TextSpan(
                  text:
                      ' pour prendre rendez-vous avec mon médecin traitant ou un professionnel de santé et bénéficier de conseils personnalisés et d’actions de prévention adaptées, me permettant d’améliorer mon état de santé.',
                  style: EnsTextStyle.text14_w400_normal_body,
                ),
              ],
              style: EnsTextStyle.text14_w400_normal_body,
            ),
          ),
          SizedBox(height: 16),
          Text(
            'Ce bilan de prévention est pris en charge à 100% par l’assurance maladie.',
            textAlign: TextAlign.center,
            style: EnsTextStyle.text14_w400_normal_body,
          ),
        ],
      );
    },
  );
}

void _openConfidentialiteBottomSheet(BuildContext context, SyntheseQuestionnaireAgesClesScreenViewModel vm) {
  context.tagAction(TagsQuestionnaireAgesCles.tagPopinQuestionnaireVisibiliteDocument1519(vm.trackingTrancheAge));
  showConfidentialiteBottomSheet(
    context: context,
    title: 'Je rends visible mes réponses au questionnaire',
    description:
        'J’ai choisi de masquer par défaut tous mes documents aux professionnels de santé.\n\n Pour permettre à mes professionnels de santé d’accéder à mes informations, je rends visible la synthèse de mes réponses au questionnaire.',
    tagOnPositive: () => context
        .tagAction(TagsQuestionnaireAgesCles.tagButtonSyntheseQuestionnaireRendreVisible1520(vm.trackingTrancheAge)),
    tagOnNegative: () =>
        context.tagAction(TagsQuestionnaireAgesCles.tagButtonSyntheseQuestionnaireMasquer1521(vm.trackingTrancheAge)),
    tagOnClose: () => context.tagAction(
      TagsQuestionnaireAgesCles.tagButtonSyntheseQuestionnaireFermerRendreVisible1522(vm.trackingTrancheAge),
    ),
    addSyntheseToDoc: vm.addSyntheseToDocs,
    reset: vm.resetConfidentialiteBottomSheet,
  );
}

List<BottomSheetAction> _setBottomSheetActions(
  BuildContext context,
  SyntheseQuestionnaireAgesClesScreenViewModel vm,
) {
  return [
    BottomSheetAction(
      assetName: EnsImages.ic_download,
      label: 'Télécharger',
      execution: () {
        context.tagAction(
          TagsQuestionnaireAgesCles.tagButtonSyntheseQuestionnaireTelecharger1519(vm.trackingTrancheAge),
        );
        vm.exportSynthese();
      },
    ),
    if (vm.isQuestionnaireNonExpire || vm.syntheseDocumentStatus == SyntheseDocumentStatus.SYNTHESE_DOC_ALREADY_SAVED)
      BottomSheetAction(
        assetName: EnsImagesExtension.icShare,
        label: 'Partager',
        execution: () {
          context.tagAction(
            TagsQuestionnaireAgesCles.tagButtonSyntheseQuestionnairePartager1515(vm.trackingTrancheAge),
          );
          openShareContentBottomSheet(context, vm.synthese!, vm.syntheseName);
        },
      ),
    if (vm.isQuestionnaireNonExpire)
      BottomSheetAction(
        assetName: EnsImages.ic_edit,
        label: 'Modifier mon questionnaire',
        execution: () {
          context.tagAction(
            TagsQuestionnaireAgesCles.tagButtonSyntheseQuestionnaireModifier1000(vm.trackingTrancheAge),
          );
          vm.getVersionQuestionnaire();
        },
      ),
    BottomSheetAction(
      assetName: EnsImages.ic_trash,
      label: 'Supprimer mes réponses',
      execution: () {
        context.tagAction(
          TagsQuestionnaireAgesCles.tagPopinSyntheseQuestionnaireSupprimer1149(vm.trackingTrancheAge),
        );
        _showDeleteAnswersConfirmation(context, vm);
      },
    ),
  ];
}

Future<dynamic> _showDeleteAnswersConfirmation(BuildContext context, SyntheseQuestionnaireAgesClesScreenViewModel vm) {
  return showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return ConfirmationBottomSheet(
        title: 'Supprimer les réponses au questionnaire ?',
        content: vm.hasSyntheseDocument
            ? const Text(
                'Je peux également supprimer mon questionnaire de santé enregistré dans mes Documents.',
                style: EnsTextStyle.text16_w400_normal_body,
                textAlign: TextAlign.center,
              )
            : null,
        positiveButtonLabel: 'Supprimer',
        positiveButtonHandler: () {
          context.tagAction(
            TagsQuestionnaireAgesCles.tagButtonSyntheseQuestionnaireSupprimerValider1151(vm.trackingTrancheAge),
          );
          vm.deleteQuestionnaireResponses();
          Navigator.of(context).pop();
        },
        negativeButtonLabel: 'Annuler',
        negativeButtonHandler: () {
          context.tagAction(
            TagsQuestionnaireAgesCles.tagButtonSyntheseQuestionnaireSupprimerAnnuler1150(vm.trackingTrancheAge),
          );
          Navigator.of(context).pop();
        },
      );
    },
  );
}

void _openQuitActionBottomSheet(BuildContext context, SyntheseQuestionnaireAgesClesScreenViewModel vm) {
  context.tagAction(TagsQuestionnaireAgesCles.tagPopinQuestionnaireRetourAccueil1004(vm.trackingTrancheAge));
  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return MultiActionIllustrationBottomSheet(
        title: 'Enregistrer le questionnaire dans vos documents ?',
        helpText:
            'J’enregistre la synthèse de mes réponses au questionnaire dans mes documents de santé afin de les rendre visibles à mes professionnels de santé.',
        actionOptions: [
          EnsMultiActionOption(
            buttonTitle: 'Enregistrer',
            buttonClickHandler: () {
              context.tagAction(
                TagsQuestionnaireAgesCles.tagQuestionnaireRetourAccueilEnregistrer1193(vm.trackingTrancheAge),
              );
              vm.addSyntheseToDocs(null);
            },
            isPrimaryAction: true,
          ),
          EnsMultiActionOption(
            buttonTitle: 'Ne pas enregistrer',
            buttonClickHandler: () {
              vm.onLeaveSynthese();
              Navigator.pop(context);
            },
            isPrimaryAction: false,
          ),
        ],
        closeButtonHandler: () {
          context.tagAction(TagsQuestionnaireAgesCles.tagButtonPopinQuestionnaireFermer(vm.trackingTrancheAge));
        },
      );
    },
  );
}
