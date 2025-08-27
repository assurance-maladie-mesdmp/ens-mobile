/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document_categorie.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_selectors.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/interruption_services/domain/interruption_de_service_info.dart';
import 'package:fr_cnamts_ens/interruption_services/redux/interruption_selectors.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/data/questionnaire_ages_cles_mapper.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/redux/questionnaire_ages_cles_redux.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:redux/redux.dart';

class DocumentItemViewModel extends Equatable {
  final Set<String> documentsBeingModified;
  final bool shouldDisplayDeleteAction;
  final bool shouldDisplayUpdateAction;
  final String? dossierName;
  final QuestionnaireCode? questionnaireCode;
  final bool shouldDisplayMoveAction;
  final AllPurposesStatus actionBottomSheetStatus;
  final bool redirectToStartNewVersion;
  final bool isDocumentEpingle;
  final void Function() getVersionQuestionnaire;
  final String? interruptionServiceSnackbarMessage;

  const DocumentItemViewModel._internal({
    required this.documentsBeingModified,
    required this.shouldDisplayDeleteAction,
    required this.shouldDisplayUpdateAction,
    this.dossierName,
    this.questionnaireCode,
    required this.shouldDisplayMoveAction,
    required this.actionBottomSheetStatus,
    required this.redirectToStartNewVersion,
    required this.isDocumentEpingle,
    required this.getVersionQuestionnaire,
    this.interruptionServiceSnackbarMessage,
  });

  factory DocumentItemViewModel(Store<EnsState> store, EnsDocument document) {
    final dossierId = document.dossierId;
    final dossierName = dossierId != null ? DocumentsSelectors.getDossierTitleFromId(store.state, dossierId) : null;
    final questionnaireCode = document.categorie == EnsDocumentCategorie.questionnaireSante
        ? QuestionnaireCode.fromSyntheseFileName(document.title)
        : null;
    final shouldDisplayMoveAction = store.state.documentsState.documentsListState.dossiers.isNotEmpty;
    final documentsIdsBeingDeleted = store.state.documentsState.documentsIdsBeingDeleted;
    final questionnaireVersionState = store.state.questionnaireAgesClesState.questionnaireVersionState;
    final actionBottomSheetStatus = questionnaireVersionState.status;
    final redirectToStartNewVersion = questionnaireVersionState.doQuestionnaireNeedUpdate();
    void getVersionQuestionnaire() {
      if (questionnaireCode != null) {
        store.dispatch(FetchVersionQuestionnaireAction(questionnaireCode: questionnaireCode));
      }
    }

    return DocumentItemViewModel._internal(
      documentsBeingModified: documentsIdsBeingDeleted,
      shouldDisplayDeleteAction: document.deletable,
      shouldDisplayUpdateAction: document.updatable,
      dossierName: dossierName,
      questionnaireCode: questionnaireCode,
      shouldDisplayMoveAction: shouldDisplayMoveAction,
      actionBottomSheetStatus: actionBottomSheetStatus,
      redirectToStartNewVersion: redirectToStartNewVersion,
      isDocumentEpingle: document.isEpingle,
      getVersionQuestionnaire: getVersionQuestionnaire,
      interruptionServiceSnackbarMessage:
          InterruptionSelectors.getCurrentInterruptionInfos(state: store.state, domaine: DomaineInterruption.MESSAGERIE)
              ?.messageSnackbar,
    );
  }

  bool get isQuestionnaire => questionnaireCode != null && questionnaireCode != QuestionnaireCode.UNKNOWN;

  bool isDocumentBeingDeleted(String docId) => documentsBeingModified.contains(docId);

  @override
  List<Object?> get props => [
        documentsBeingModified,
        shouldDisplayDeleteAction,
        shouldDisplayUpdateAction,
        shouldDisplayMoveAction,
        dossierName,
        questionnaireCode,
        actionBottomSheetStatus,
        redirectToStartNewVersion,
        isDocumentEpingle,
        interruptionServiceSnackbarMessage,
      ];
}
