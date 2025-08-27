/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:convert';

import 'package:clock/clock.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:fr_cnamts_ens/bottomsheet_recommander_app/redux/recommander_app_redux.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document_categorie.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_redux.dart';
import 'package:fr_cnamts_ens/documents/screens/document_preview_screen.dart';
import 'package:fr_cnamts_ens/files/domain/models/ens_file_content.dart';
import 'package:fr_cnamts_ens/files/domain/models/mimetype.dart';
import 'package:fr_cnamts_ens/files/redux/files_states.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/interruption_services/domain/interruption_de_service_info.dart';
import 'package:fr_cnamts_ens/interruption_services/redux/interruption_selectors.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_type.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/redux/mesures_redux.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/data/questionnaire_ages_cles_mapper.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/redux/questionnaire_ages_cles_redux.dart';
import 'package:fr_cnamts_ens/snackbar/redux/snackbar_actions.dart';
import 'package:fr_cnamts_ens/user/app_rating/redux/app_rating_actions.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:fr_cnamts_ens/utils/extensions/firebase_crashlytics_extension.dart';
import 'package:fr_cnamts_ens/utils/extensions/profil_extension.dart';
import 'package:pdfrx/pdfrx.dart';
import 'package:redux/redux.dart';

class DocumentPreviewScreenViewModel extends Equatable {
  final ProfilType profilType;
  final DocumentDetailDisplayModel displayModel;
  final bool shouldDisplayDeleteAction;
  final bool isCovidCertificate;
  final bool shouldDisplayEditAction;
  final bool shouldDisplayRemoveAction;
  final bool shouldDisplayDocumentSharingPanel;
  final QuestionnaireCode? questionnaireCode;
  final List<EnsMesureType> extractMesuresTypes;
  final AllPurposesStatus extractMesuresStatus;
  final bool isDocumentSuccessfullyDeleted;
  final void Function() getVersionQuestionnaire;
  final void Function() loadMesures;
  final void Function() triggerRecommanderApp;
  final void Function() displayUnavailableAsAidantSnackbar;
  final void Function(String documentId) loadDocument;
  final void Function() loadDocumentsList;
  final void Function() onDisplayedDocumentAddedByPS;
  final String? interruptionServiceSnackbarMessage;

  @override
  List<Object?> get props => [
        profilType,
        displayModel,
        shouldDisplayDeleteAction,
        isCovidCertificate,
        shouldDisplayEditAction,
        shouldDisplayRemoveAction,
        shouldDisplayDocumentSharingPanel,
        questionnaireCode,
        extractMesuresTypes,
        extractMesuresStatus,
        isDocumentSuccessfullyDeleted,
        interruptionServiceSnackbarMessage,
      ];

  static final possibleExtractMesuresTypes = [
    EnsMesureType.GLYCEMIE,
    EnsMesureType.HEMOGLOBINE_GLYQUEE,
    EnsMesureType.POIDS,
    EnsMesureType.TAILLE,
    EnsMesureType.PERIMETRE_CRANIEN,
  ];

  const DocumentPreviewScreenViewModel._internal({
    required this.displayUnavailableAsAidantSnackbar,
    required this.profilType,
    required this.displayModel,
    required this.shouldDisplayDeleteAction,
    required this.isCovidCertificate,
    required this.shouldDisplayEditAction,
    required this.shouldDisplayRemoveAction,
    required this.getVersionQuestionnaire,
    required this.loadMesures,
    required this.extractMesuresTypes,
    required this.extractMesuresStatus,
    required this.triggerRecommanderApp,
    required this.shouldDisplayDocumentSharingPanel,
    required this.isDocumentSuccessfullyDeleted,
    required this.loadDocument,
    required this.loadDocumentsList,
    required this.onDisplayedDocumentAddedByPS,
    this.questionnaireCode,
    this.interruptionServiceSnackbarMessage,
  });

  factory DocumentPreviewScreenViewModel.from(
    Store<EnsState> store,
    DocumentPreviewScreenArgument argument,
  ) {
    final profilType = ProfilsUtils.getCurrentProfilType(store.state);
    final profilFullName = store.state.userState.currentProfile.nomComplet;
    final documentToDisplayId = argument.documentToDisplayId;
    final documentState = store.state.documentsState.documentsListState;
    final documentToDisplay = store.state.documentsState.documentsListState.documents[documentToDisplayId];
    final documentFileToDisplayState = store.state.documentToDisplayState;
    final isDocumentSuccessfullyDeleted = store.state.documentsState.isLastDeletionSuccessful;
    final DocumentDetailDisplayModel displayModel;
    final List<EnsMesureType> extractMesuresTypes = [];
    QuestionnaireCode? questionnaireCode;

    if (documentState.status.isLoading() || documentFileToDisplayState.status.isNotLoaded) {
      displayModel = const DocumentDetailDisplayModel.loading();
    } else if (documentFileToDisplayState.status.isNotFoundError) {
      displayModel = const DocumentDetailDisplayModel.notFound();
    } else if (documentToDisplay != null) {
      if (documentState.status.isSuccess() && documentFileToDisplayState.isSuccessWithData) {
        displayModel = _buildLoadedFileDisplayModel(documentFileToDisplayState.data!, documentToDisplay);

        questionnaireCode = documentToDisplay.categorie == EnsDocumentCategorie.questionnaireSante
            ? QuestionnaireCode.fromSyntheseFileName(documentToDisplay.title)
            : null;

        if (displayModel is DocumentDetailDisplayModelDisplayable && displayModel.ensFileContent.mesureIds.isNotEmpty) {
          extractMesuresTypes.addAll(
            _extractMesuresFromState(
              displayModel.ensFileContent.mesureIds,
              store.state.mesuresState.mesureStatesByType,
            ),
          );
        }
      } else {
        displayModel = DocumentDetailDisplayModel.error(documentToDisplayId);
      }
    } else {
      displayModel = DocumentDetailDisplayModel.error(documentToDisplayId);
    }

    return DocumentPreviewScreenViewModel._internal(
      profilType: profilType,
      displayModel: displayModel,
      shouldDisplayDeleteAction: documentToDisplay?.deletable ?? false,
      isCovidCertificate: documentToDisplay?.isCovidCertificate ?? false,
      shouldDisplayEditAction: documentToDisplay?.updatable ?? false,
      shouldDisplayRemoveAction: argument.isLinkedToEntity,
      isDocumentSuccessfullyDeleted: isDocumentSuccessfullyDeleted,
      questionnaireCode: questionnaireCode,
      extractMesuresTypes: extractMesuresTypes,
      extractMesuresStatus: store.state.mesuresState.mesuresDataForExtractionStatus,
      getVersionQuestionnaire: () {
        if (questionnaireCode != null) {
          store.dispatch(FetchVersionQuestionnaireAction(questionnaireCode: questionnaireCode));
        }
      },
      loadMesures: () {
        if (displayModel is DocumentDetailDisplayModelDisplayable && displayModel.ensFileContent.mesureIds.isNotEmpty) {
          store.dispatch(const FetchLastMesuresAction());
          if (store.state.mesuresState.mesuresDataForExtractionStatus.isNotSuccess()) {
            store.dispatch(FetchMesuresDataForExtractAction(possibleExtractMesuresTypes));
          }
        }
      },
      triggerRecommanderApp: () {
        if (documentToDisplay?.proprietaire.ownerType != null) {
          store.dispatch(TriggerRecommanderAppAction(RecommanderAppActionTriggeredFrom.CONSULT_DOC_AJOUTE_PAR_UN_PS));
        }
      },
      displayUnavailableAsAidantSnackbar: () {
        store.dispatch(DisplaySnackbarAction.unavailableAsAidant(profilFullName));
      },
      loadDocument: (documentId) => store.dispatch(InitDocumentDisplayAction(documentId: documentId, force: false)),
      loadDocumentsList: () => store.dispatch(FetchDocumentsAction(force: true)),
      onDisplayedDocumentAddedByPS: () => store.dispatch(AddSuccessfulRatingAction()),
      shouldDisplayDocumentSharingPanel: documentToDisplay?.type == EnsDocumentType.AVIS_ARRET_DE_TRAVAIL &&
          documentToDisplay?.date != null &&
          clock.now().compareTo(documentToDisplay!.date.add(const Duration(days: 5))) < 0,
      interruptionServiceSnackbarMessage:
          InterruptionSelectors.getCurrentInterruptionInfos(state: store.state, domaine: DomaineInterruption.MESSAGERIE)
              ?.messageSnackbar,
    );
  }

  bool get isQuestionnaire => questionnaireCode != null && questionnaireCode != QuestionnaireCode.UNKNOWN;

  static List<EnsMesureType> _extractMesuresFromState(
    List<String> mesuresIds,
    Map<EnsMesureType, EnsMesureState> mesuresFromState,
  ) {
    final List<EnsMesureType> extractMesuresTypes = [];
    for (final mesureId in mesuresIds) {
      EnsMesureType extractMesureType = EnsMesureType.UNKNOWN;
      for (final mesure in mesuresFromState.entries) {
        final mesureHistoryState = mesure.value.mesureHistoryState;
        if (mesureHistoryState.status.isSuccess()) {
          for (final mesureValue in mesureHistoryState.mesureHistory) {
            if (mesureValue.id == mesureId) {
              extractMesureType = mesure.key;
              break;
            }
          }
        }
      }
      extractMesuresTypes.add(extractMesureType);
    }
    return extractMesuresTypes;
  }

  static DocumentDetailDisplayModel _buildLoadedFileDisplayModel(
    FileData fileData,
    EnsDocument document,
  ) {
    final docMimeType = MimeTypeUtils.fromLabel(fileData.ensFileContent.mimeType);

    if (MimeTypeUtils.DISPLAYABLE_MIMETYPES.contains(docMimeType)) {
      return DocumentDetailDisplayModel.displayable(fileData, document);
    }
    return DocumentDetailDisplayModel.notDisplayable(document);
  }
}

sealed class DocumentDetailDisplayModel extends Equatable {
  const DocumentDetailDisplayModel._internal();

  const factory DocumentDetailDisplayModel.loading() = DocumentDetailDisplayModelLoading._internal;

  factory DocumentDetailDisplayModel.displayable(
    FileData fileData,
    EnsDocument document,
  ) = DocumentDetailDisplayModelDisplayable;

  const factory DocumentDetailDisplayModel.notDisplayable(EnsDocument document) =
      DocumentDetailDisplayModelNonDisplayable._internal;

  const factory DocumentDetailDisplayModel.error(String id) = DocumentDetailDisplayModelError._internal;

  const factory DocumentDetailDisplayModel.notFound() = DocumentDetailDisplayModelNotFound._internal;

  @override
  List<Object?> get props => [];
}

class DocumentDetailDisplayModelLoading extends DocumentDetailDisplayModel {
  const DocumentDetailDisplayModelLoading._internal() : super._internal();
}

class DocumentDetailDisplayModelNotFound extends DocumentDetailDisplayModel {
  const DocumentDetailDisplayModelNotFound._internal() : super._internal();
}

sealed class DocumentDetailDisplayModelFound extends DocumentDetailDisplayModel {
  final EnsDocument document;

  const DocumentDetailDisplayModelFound._internal(this.document) : super._internal();

  @override
  List<Object?> get props => [document];
}

class DocumentDetailDisplayModelDisplayable extends DocumentDetailDisplayModelFound {
  final String id;
  final EnsFileContent ensFileContent;

  const DocumentDetailDisplayModelDisplayable._internal(
    this.id,
    this.ensFileContent,
    EnsDocument document,
  ) : super._internal(document);

  factory DocumentDetailDisplayModelDisplayable(
    FileData fileData,
    EnsDocument document,
  ) {
    return DocumentDetailDisplayModelDisplayable._internal(fileData.documentId, fileData.ensFileContent, document);
  }

  Future<bool> get isEncryptedPdf async {
    try {
      final base64Decoded = base64.decode(ensFileContent.base64Content.replaceAll(RegExp(r'\s+'), ''));
      final isEncrypted = (await PdfDocument.openData(base64Decoded)).isEncrypted;
      return ensFileContent.mimeType == MimeTypeUtils.PDF_LABEL && isEncrypted;
    } catch (error, stackTrace) {
      FirebaseCrashlytics.instance.smartRecordError(error, stackTrace);
      return false;
    }
  }

  @override
  List<Object?> get props => [...super.props, id, ensFileContent, document];
}

class DocumentDetailDisplayModelNonDisplayable extends DocumentDetailDisplayModelFound {
  const DocumentDetailDisplayModelNonDisplayable._internal(super.document) : super._internal();
}

class DocumentDetailDisplayModelError extends DocumentDetailDisplayModel {
  final String id;

  const DocumentDetailDisplayModelError._internal(this.id) : super._internal();

  @override
  List<Object?> get props => [...super.props, id];
}
