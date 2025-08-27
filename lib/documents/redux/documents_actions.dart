/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'documents_redux.dart';

class FetchDocumentsAction {
  final bool force;

  FetchDocumentsAction({this.force = false});
}

class ProcessFetchDocumentsSuccessAction {
  final GetDossiersAndDocumentsResult dossiersAndDocuments;

  ProcessFetchDocumentsSuccessAction(this.dossiersAndDocuments);
}

class ProcessFetchDocumentsErrorAction {}

class IsCurrentlyLoadingDocumentsAction {}

class InitDocumentEditionFromFileAction {
  final EnsFileContent ensFileContent;

  InitDocumentEditionFromFileAction(this.ensFileContent);
}

class InitDocumentEditionAction {}

class ProcessDocumentEditionInitializedAction {
  final FileProcessingResult processingResult;

  ProcessDocumentEditionInitializedAction(this.processingResult);
}

class UploadingDocumentAction {}

class UploadDocumentAction extends UploadingDocumentAction {
  final DocumentEditionCreation newDocument;
  final bool isFromAttachment;

  UploadDocumentAction({required this.newDocument, required this.isFromAttachment});
}

class ProcessDocumentUploadedAction {
  final UploadDocumentResult uploadResult;

  ProcessDocumentUploadedAction({required this.uploadResult});
}

class InitDocumentDisplayAction {
  final String documentId;
  final bool force;

  InitDocumentDisplayAction({required this.documentId, required this.force});
}

class ProcessUpdateSyntheseAction {
  final String id;
  final DateTime date;

  ProcessUpdateSyntheseAction({required this.id, required this.date});
}

class ProcessDocumentContentSuccessAction {
  final String documentId;
  final DocumentAttachmentRetrieval retrieval;

  ProcessDocumentContentSuccessAction(this.documentId, this.retrieval);
}

class ProcessDocumentContentErrorAction {
  final FetchDocumentContentErrorType errorType;

  ProcessDocumentContentErrorAction(this.errorType);
}

enum FetchDocumentContentErrorType { NOT_FOUND_ERROR, GENERIC_ERROR }

class DeleteDocumentsAction {
  final List<String> documentsIds;

  DeleteDocumentsAction({required this.documentsIds});
}

class MoveDocumentsAction {
  final List<String> documentsIds;
  final String targetFolderId;
  final bool isFromCreateAvisArretDeTravailJourney;

  MoveDocumentsAction({
    required this.documentsIds,
    required this.targetFolderId,
    this.isFromCreateAvisArretDeTravailJourney = false,
  });
}

class ProcessMoveDocumentsSuccessAction {}

class ProcessMoveDocumentsErrorAction {}

class ShareDocumentAction {
  final String documentId;
  final String documentName;

  ShareDocumentAction(this.documentId, this.documentName);
}

class ShareDocumentContentAction {
  final EnsFileContent document;
  final String documentName;

  ShareDocumentContentAction(this.document, this.documentName);
}

class ProcessDeleteDocumentsSuccessAction {
  final List<String> deletedDocsIds;

  ProcessDeleteDocumentsSuccessAction({required this.deletedDocsIds});
}

class ProcessDeleteDocumentsErrorAction {
  final List<String> deletedDocsIds;

  ProcessDeleteDocumentsErrorAction({required this.deletedDocsIds});
}

class DownloadDocumentAction {
  final EnsDocument document;

  DownloadDocumentAction(this.document);
}

class DownloadFileAction {
  final EnsFileContent file;

  DownloadFileAction(this.file);
}

class UpdateDocumentAction {
  final DocumentEditionPropertiesUpdate document;

  UpdateDocumentAction({required this.document});
}

class UpdateDocumentConfidentialitesAction {
  final String docId;
  final List<KindOfConfidentiality> newConfidentialites;

  UpdateDocumentConfidentialitesAction({required this.docId, required this.newConfidentialites});
}

class ProcessUpdatedDocumentConfidentialitesAction {
  final String docId;
  final List<KindOfConfidentiality> newConfidentialites;

  ProcessUpdatedDocumentConfidentialitesAction({required this.docId, required this.newConfidentialites});
}

class ProcessDocumentUpdateSuccessAction {}

class ProcessDocumentUpdateErrorAction {}

class InitSelectedDocumentsAction {
  final List<String> selectedDocumentsIds;

  InitSelectedDocumentsAction({required this.selectedDocumentsIds});
}

class AddDocumentToSelectionAction {
  final bool isSelected;
  final String documentId;

  AddDocumentToSelectionAction({required this.isSelected, required this.documentId});
}

class AddDocumentPageAction {
  final List<EnsFileContent> ensFileContents;

  AddDocumentPageAction(this.ensFileContents);
}

class AddScannedDocumentPageAction {
  final List<OriginalImage> originalImages;

  AddScannedDocumentPageAction(this.originalImages);
}

class ProcessUpdatedDocumentPageAction {
  final MultidocProcessingResult result;

  ProcessUpdatedDocumentPageAction(this.result);
}

class ValidateMultiPageAction {
  final List<EnsFileImageContent> pages;

  ValidateMultiPageAction(this.pages);
}

class ProcessValidatedMultiPageAction {
  final List<EnsFileImageContent> pages;
  final MultiPageGenerationResult generationResult;

  ProcessValidatedMultiPageAction(this.pages, this.generationResult);
}

class DeleteDocumentPageAction {
  final int indexToDelete;

  DeleteDocumentPageAction(this.indexToDelete);
}

class TransformToBlackAndWhitePageAction {
  final int indexToTransform;

  TransformToBlackAndWhitePageAction(this.indexToTransform);
}

class ReCropAction {
  final int indexToTransform;

  ReCropAction(this.indexToTransform);
}

class CancelMultiPageStateAction {}

class ContinueMultiPageStateAction {
  final List<EnsFileImageContent> pages;

  ContinueMultiPageStateAction(this.pages);
}

class ResetCreateDossierAction {}

class ResetRenameDossierAction {}

class ResetMoveDocumentsAction {}

class CreateDossierAction {
  final String name;

  CreateDossierAction(this.name);
}

class _ProcessCreateDossierSuccessAction {
  final EnsDossier dossier;

  _ProcessCreateDossierSuccessAction(this.dossier);
}

class _ProcessCreateDossierErrorAction {
  final DomainError domainError;

  _ProcessCreateDossierErrorAction({required this.domainError});
}

class DeleteDossierAction {
  final String dossierId;

  DeleteDossierAction({required this.dossierId});
}

class _ProcessDeleteDossierSuccessAction {
  final String dossierId;

  _ProcessDeleteDossierSuccessAction(this.dossierId);
}

class RenameDossierAction {
  final String dossierId;
  final String dossierName;

  RenameDossierAction({required this.dossierId, required this.dossierName});
}

class _ProcessRenameDossierSuccessAction {
  final String dossierId;
  final String dossierName;

  _ProcessRenameDossierSuccessAction(this.dossierId, this.dossierName);
}

class _ProcessRenameDossierErrorAction {
  final DomainError domainError;

  _ProcessRenameDossierErrorAction({required this.domainError});
}

class StoreLinkedDocumentAction {
  final DocumentEdition document;

  StoreLinkedDocumentAction(this.document);
}

class RemoveDocumentAction {
  final DocumentEdition document;

  RemoveDocumentAction(this.document);
}

class UpdateDocumentsSortingMethodAction {
  final EnsItemSortingMethod sortingMethod;

  UpdateDocumentsSortingMethodAction(this.sortingMethod);
}

class ReInitDocumentUploadStatutsAction {}

class CleanDocumentsToCreateAction {}

class ProcessShareDocumentSuccessAction {}

class ProcessShareDocumentDismissedAction {}

class ProcessShareDocumentErrorAction {}

class ReinitShareStateAction {}

class FetchShouldDisplayCreateAvisArretDeTravailDossierBottomSheetAction {}

class _ProcessFetchShouldDisplayCreateAvisArretDeTravailDossierBottomSheetAction {
  final bool shouldDisplayCreateAvisArretDeTravailDossierBottomSheet;

  _ProcessFetchShouldDisplayCreateAvisArretDeTravailDossierBottomSheetAction(
    this.shouldDisplayCreateAvisArretDeTravailDossierBottomSheet,
  );
}

class SetAlreadyDisplayCreateAvisArretDeTravailDossierBottomSheetAction {}

class SetDocumentEpingleStatusAction {
  final String documentId;
  final bool newDocumentEpingleStatus;

  SetDocumentEpingleStatusAction({required this.documentId, required this.newDocumentEpingleStatus});
}

class ProcessSetDocumentEpingleStatusSuccessAction extends Equatable {
  final String documentId;
  final bool newDocumentEpingleStatus;

  const ProcessSetDocumentEpingleStatusSuccessAction(
    this.documentId,
    this.newDocumentEpingleStatus,
  );

  @override
  List<Object?> get props => [documentId, newDocumentEpingleStatus];
}

class ProcessSetDocumentEpingleStatusErrorAction {}

class UnhighlightDossierAction {}

class UnhighlightDocumentAction {}
