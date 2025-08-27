/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_redux.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_selectors.dart';
import 'package:fr_cnamts_ens/files/domain/models/ens_file_content.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/interruption_services/domain/interruption_de_service_info.dart';
import 'package:fr_cnamts_ens/interruption_services/redux/interruption_selectors.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/data/questionnaire_ages_cles_mapper.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/domain/models/fin_informations.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/redux/questionnaire_ages_cles_redux.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/redux/questionnaire_ages_cles_selectors.dart';
import 'package:fr_cnamts_ens/recommandations/domain/ens_recommandation.dart';
import 'package:fr_cnamts_ens/recommandations/redux/recommandations_redux.dart';
import 'package:fr_cnamts_ens/synthese_pdf/redux/synthese_pdf_redux.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:fr_cnamts_ens/utils/screen_status.dart';
import 'package:redux/redux.dart';

class SyntheseQuestionnaireAgesClesScreenViewModel extends Equatable {
  final ScreenStatus syntheseViewStatus;
  final SyntheseDocumentStatus syntheseDocumentStatus;
  final String syntheseName;
  final EnsFileContent? synthese;
  final QuestionnaireCode questionnaireCode;
  final bool isSyntheseNewVersion;
  final bool shouldDisplayConfidentialiteBottomSheet;
  final bool redirectToStartNewVersion;
  final bool isQuestionnaireNonExpire;
  final bool hasSyntheseDocument;
  final AllPurposesStatus fetchQuestionnaireVersionQueryStatus;
  final FinInformations finInformations;
  final bool isFinInformationsRemplis;
  final void Function() reloadSynthese;
  final void Function() exportSynthese;
  final void Function(bool? isForcedToVisible) addSyntheseToDocs;
  final void Function() resetConfidentialiteBottomSheet;
  final void Function() onLeaveSynthese;
  final void Function() deleteQuestionnaireResponses;
  final void Function() getVersionQuestionnaire;
  final String? interruptionServiceSnackbarMessage;

  const SyntheseQuestionnaireAgesClesScreenViewModel._internal({
    this.synthese,
    required this.syntheseViewStatus,
    required this.syntheseDocumentStatus,
    required this.syntheseName,
    required this.reloadSynthese,
    required this.exportSynthese,
    required this.hasSyntheseDocument,
    required this.addSyntheseToDocs,
    required this.questionnaireCode,
    required this.finInformations,
    required this.isFinInformationsRemplis,
    required this.resetConfidentialiteBottomSheet,
    required this.shouldDisplayConfidentialiteBottomSheet,
    required this.onLeaveSynthese,
    required this.deleteQuestionnaireResponses,
    required this.redirectToStartNewVersion,
    required this.isSyntheseNewVersion,
    required this.isQuestionnaireNonExpire,
    required this.getVersionQuestionnaire,
    required this.fetchQuestionnaireVersionQueryStatus,
    required this.interruptionServiceSnackbarMessage,
  });

  @override
  List<Object?> get props => [
        syntheseViewStatus,
        synthese,
        syntheseName,
        hasSyntheseDocument,
        shouldDisplayConfidentialiteBottomSheet,
        syntheseDocumentStatus,
        questionnaireCode,
        redirectToStartNewVersion,
        isSyntheseNewVersion,
        isQuestionnaireNonExpire,
        getVersionQuestionnaire,
        fetchQuestionnaireVersionQueryStatus,
        finInformations,
        isFinInformationsRemplis,
        interruptionServiceSnackbarMessage,
      ];

  factory SyntheseQuestionnaireAgesClesScreenViewModel({
    required Store<EnsState> store,
    String? version,
    QuestionnaireCode? questionnaireCodeFromArgs,
  }) {
    final questionnaireVersionState = store.state.questionnaireAgesClesState.questionnaireVersionState;
    final isSyntheseNewVersion = questionnaireVersionState.newVersionEnCours;
    final questionnaireVersionStatus = questionnaireVersionState.status;
    final questionnaireCode = questionnaireCodeFromArgs ?? questionnaireVersionState.questionnaireCode;
    final questionnaireListState = store.state.questionnaireAgesClesState.questionsListState;

    final syntheseState = store.state.synthesePdfState;
    final EnsFileContent? syntheseQuestionnaire = _getSyntheseQuestionnaire(syntheseState);

    ScreenStatus syntheseViewStatus = ScreenStatus.LOADING;
    FinInformations finInformations = FinInformations.empty();
    if (questionnaireListState.isSuccessWithData) {
      finInformations = questionnaireListState.questionnaireAgesCles!.finInformations;
      syntheseViewStatus = ScreenStatus.getFromAllPurposesStatus(syntheseState.status);
    } else if (questionnaireListState.isErrorOrSuccessWithoutData) {
      syntheseViewStatus = ScreenStatus.ERROR;
    }

    final hasSyntheseDocument = DocumentsSelectors.getQuestionnaireDeSanteDocument(
          store.state,
          questionnaireCode,
        ) !=
        null;
    final isQuestionnaireNonExpire = QuestionnaireAgesClesSelectors.isQuestionnaireNonExpire(
      store.state,
      questionnaireCode,
    );
    final syntheseName = DocumentsSelectors.getQuestionnaireDeSanteDocumentFileNameForAge(
      store.state,
      questionnaireCode,
    );
    final interruptionServiceSnackbarMessage = InterruptionSelectors.getCurrentInterruptionInfos(
      state: store.state,
      domaine: DomaineInterruption.DOCUMENTS,
    )?.messageSnackbar;

    return SyntheseQuestionnaireAgesClesScreenViewModel._internal(
      syntheseViewStatus: syntheseViewStatus,
      synthese: syntheseQuestionnaire,
      syntheseName: syntheseName,
      finInformations: finInformations,
      reloadSynthese: () {
        store.dispatch(InitSynthesePdfStateAction());
        store.dispatch(FetchSyntheseQuestionnaireAction(version: version, code: questionnaireCode));
        store.dispatch(FetchDocumentsAction());
      },
      exportSynthese: () =>
          store.dispatch(ExportSynthesePdfAction(syntheseQuestionnaire!, syntheseQuestionnaire.filename)),
      addSyntheseToDocs: (isSetToVisible) {
        if (isSyntheseNewVersion) {
          store.dispatch(ReInitNewVersionQuestionnaireAction());
        }
        store.dispatch(
          UploadSyntheseQuestionnairePdfAction(
            ensFileContent: syntheseQuestionnaire!,
            questionnaireCode: questionnaireCode,
            isForcedToVisible: isSetToVisible,
          ),
        );
      },
      resetConfidentialiteBottomSheet: () => store.dispatch(DisplayConfidentialiteBottomSheetAction(false)),
      shouldDisplayConfidentialiteBottomSheet: _isDisplayConfidentialiteBottomSheet(syntheseState),
      onLeaveSynthese: () => store.dispatch(const FetchRecommandationsAction(force: true)),
      deleteQuestionnaireResponses: () {
        store.dispatch(ResetQuestionnaireAgesClesAction());
        store.dispatch(DeleteQuestionnaireResponsesAction(questionnaireCode: questionnaireCode));
      },
      questionnaireCode: questionnaireCode,
      redirectToStartNewVersion: questionnaireVersionState.doQuestionnaireNeedUpdate(),
      isSyntheseNewVersion: isSyntheseNewVersion,
      isQuestionnaireNonExpire: isQuestionnaireNonExpire,
      getVersionQuestionnaire: () =>
          store.dispatch(FetchVersionQuestionnaireAction(questionnaireCode: questionnaireCode)),
      fetchQuestionnaireVersionQueryStatus: questionnaireVersionStatus,
      syntheseDocumentStatus: _getSyntheseDocumentState(store.state, hasSyntheseDocument, isQuestionnaireNonExpire),
      hasSyntheseDocument: hasSyntheseDocument,
      isFinInformationsRemplis: finInformations.labels.isNotEmpty &&
          finInformations.link != null &&
          finInformations.linkText != null &&
          finInformations.titreBouton != null,
      interruptionServiceSnackbarMessage: interruptionServiceSnackbarMessage,
    );
  }

  String get trackingTrancheAge => questionnaireCode.getTrancheAgeString();

  static SyntheseDocumentStatus _getSyntheseDocumentState(
    EnsState state,
    bool hasSyntheseDocumentSave,
    bool isQuestionnaireDisponible,
  ) {
    final synthesePdfState = state.synthesePdfState;
    if (synthesePdfState.isSuccessWithData) {
      if (synthesePdfState.saveDocumentStatus.isLoading()) {
        return SyntheseDocumentStatus.LOADING;
      }

      if (isQuestionnaireDisponible) {
        return state.monActuState.questionnaireArticle?.recommandationCode == RecommandationCode.INCITER_AFFICHER_QUIZ
            ? SyntheseDocumentStatus.SYNTHESE_DOC_ALREADY_SAVED
            : SyntheseDocumentStatus.SYNTHESE_DOC_CAN_BE_SAVE;
      } else {
        return hasSyntheseDocumentSave
            ? SyntheseDocumentStatus.SYNTHESE_DOC_ALREADY_SAVED
            : SyntheseDocumentStatus.SYNTHESE_DOC_CAN_BE_SAVE;
      }
    } else {
      return SyntheseDocumentStatus.UNKNOWN;
    }
  }

  static EnsFileContent? _getSyntheseQuestionnaire(SynthesePdfState state) {
    if (state.isSuccessWithData) {
      return state.data!.synthesePdf;
    }
    return null;
  }

  static bool _isDisplayConfidentialiteBottomSheet(SynthesePdfState state) {
    if (state.isSuccessWithData) {
      return state.data!.displayConfidentialiteBottomSheet;
    }
    return false;
  }
}

enum SyntheseDocumentStatus {
  UNKNOWN,
  SYNTHESE_DOC_CAN_BE_SAVE,
  SYNTHESE_DOC_ALREADY_SAVED,
  LOADING;
}
