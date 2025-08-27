/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'documents_redux.dart';

class DocumentsState extends Equatable {
  final DocumentsListState documentsListState;
  final DocumentEditionStatus editionStatus;
  final Set<String> documentsIdsBeingDeleted;
  final Set<String> selectedDocumentsIds;
  final DefaultConfidentialityState defaultConfidentialityState;
  final MultiPagesListState multiPagesListState;
  final DossierStatus createDossierStatus;
  final DossierStatus renameDossierStatus;
  final EnsItemSortingMethod currentDocumentSortingMethod;
  final List<DocumentEditionCreation> documentsBeingLinked;
  final bool isBlackAndWhiteLoading;
  final AllPurposesStatus shareStatus;
  final bool shouldDisplayCreateAvisArretDeTravailDossierBottomSheet;
  final AllPurposesStatus moveDossiersStatus;
  final AllPurposesStatus setDocumentEpingleStatus;
  final bool isLastDeletionSuccessful;
  final String? nouveauDocumentId;
  final String? nouveauDossierId;

  const DocumentsState({
    this.documentsListState = const DocumentsListState(),
    this.editionStatus = const DocumentEditionStatus.initializing(),
    this.documentsIdsBeingDeleted = const {},
    this.selectedDocumentsIds = const {},
    this.defaultConfidentialityState = const DefaultConfidentialityState(),
    this.multiPagesListState = const MultiPagesListState.notLoaded(),
    this.createDossierStatus = DossierStatus.NOT_LOADED,
    this.renameDossierStatus = DossierStatus.NOT_LOADED,
    this.currentDocumentSortingMethod = EnsItemSortingMethod.NEWEST,
    this.documentsBeingLinked = const [],
    this.isBlackAndWhiteLoading = false,
    this.shareStatus = AllPurposesStatus.NOT_LOADED,
    this.shouldDisplayCreateAvisArretDeTravailDossierBottomSheet = false,
    this.moveDossiersStatus = AllPurposesStatus.NOT_LOADED,
    this.setDocumentEpingleStatus = AllPurposesStatus.NOT_LOADED,
    this.isLastDeletionSuccessful = false,
    this.nouveauDocumentId,
    this.nouveauDossierId,
  });

  @override
  List<Object?> get props => [
        documentsListState,
        editionStatus,
        documentsIdsBeingDeleted,
        selectedDocumentsIds,
        defaultConfidentialityState,
        multiPagesListState,
        createDossierStatus,
        renameDossierStatus,
        currentDocumentSortingMethod,
        documentsBeingLinked,
        isBlackAndWhiteLoading,
        shareStatus,
        shouldDisplayCreateAvisArretDeTravailDossierBottomSheet,
        moveDossiersStatus,
        setDocumentEpingleStatus,
        isLastDeletionSuccessful,
        nouveauDocumentId,
        nouveauDossierId,
      ];

  DocumentsState clone({
    DocumentsListState? documentsListState,
    DocumentEditionStatus? editionStatus,
    Set<String>? documentsBeingDeleted,
    Set<String>? selectedDocuments,
    DefaultConfidentialityState? defaultConfidentialityState,
    MultiPagesListState? multiPagesListState,
    DossierStatus? createDossierStatus,
    DossierStatus? renameDossierStatus,
    List<DocumentEditionCreation>? documentsBeingLinked,
    EnsItemSortingMethod? currentDocumentSortingMethod,
    bool? isBlackAndWhiteLoading,
    AllPurposesStatus? shareStatus,
    bool? shouldDisplayCreateAvisArretDeTravailDossierBottomSheet,
    AllPurposesStatus? moveDossiersStatus,
    AllPurposesStatus? setDocumentEpingleStatus,
    Optional<String?>? nouveauDocumentIdOptional,
    Optional<String?>? nouveauDossierIdOptional,
    bool? isLastDeletionSuccessful,
  }) =>
      DocumentsState(
        documentsListState: documentsListState ?? this.documentsListState,
        editionStatus: editionStatus ?? this.editionStatus,
        documentsIdsBeingDeleted: documentsBeingDeleted ?? documentsIdsBeingDeleted,
        selectedDocumentsIds: selectedDocuments ?? selectedDocumentsIds,
        defaultConfidentialityState: defaultConfidentialityState ?? this.defaultConfidentialityState,
        multiPagesListState: multiPagesListState ?? this.multiPagesListState,
        createDossierStatus: createDossierStatus ?? this.createDossierStatus,
        renameDossierStatus: renameDossierStatus ?? this.renameDossierStatus,
        documentsBeingLinked: documentsBeingLinked ?? this.documentsBeingLinked,
        currentDocumentSortingMethod: currentDocumentSortingMethod ?? this.currentDocumentSortingMethod,
        isBlackAndWhiteLoading: isBlackAndWhiteLoading ?? this.isBlackAndWhiteLoading,
        shareStatus: shareStatus ?? this.shareStatus,
        shouldDisplayCreateAvisArretDeTravailDossierBottomSheet:
            shouldDisplayCreateAvisArretDeTravailDossierBottomSheet ??
                this.shouldDisplayCreateAvisArretDeTravailDossierBottomSheet,
        moveDossiersStatus: moveDossiersStatus ?? this.moveDossiersStatus,
        setDocumentEpingleStatus: setDocumentEpingleStatus ?? this.setDocumentEpingleStatus,
        nouveauDocumentId:
            nouveauDocumentIdOptional != null ? nouveauDocumentIdOptional.orElseNullable(null) : nouveauDocumentId,
        nouveauDossierId:
            nouveauDossierIdOptional != null ? nouveauDossierIdOptional.orElseNullable(null) : nouveauDossierId,
        isLastDeletionSuccessful: isLastDeletionSuccessful ?? this.isLastDeletionSuccessful,
      );
}

class DocumentsListState extends Equatable {
  final AllPurposesStatus status;
  final Map<String, EnsDossier> dossiers;
  final Map<String, EnsDocument> documents;

  const DocumentsListState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.dossiers = const {},
    this.documents = const {},
  });

  DocumentsListState clone({
    AllPurposesStatus? status,
    Map<String, EnsDossier>? dossiers,
    Map<String, EnsDocument>? documents,
  }) {
    return DocumentsListState(
      status: status ?? this.status,
      dossiers: dossiers ?? this.dossiers,
      documents: documents ?? this.documents,
    );
  }

  @override
  List<Object?> get props => [status, dossiers, documents];
}

abstract class DocumentEditionStatus extends Equatable {
  const DocumentEditionStatus._internal();

  const factory DocumentEditionStatus.initializing() = DocumentEditionInitializing._internal;

  const factory DocumentEditionStatus.initializationError() = DocumentEditionInitializationError._internal;

  const factory DocumentEditionStatus.initializationSuccess(EnsFileContent? ensFileContent) =
      DocumentEditionInitializationSuccess._internal;

  const factory DocumentEditionStatus.uploading(String info) = DocumentEditionUploading._internal;

  const factory DocumentEditionStatus.uploadSuccess() = DocumentEditionUploadSuccess._internal;

  const factory DocumentEditionStatus.updateError(DocumentEditionCreation? ensFileContent) =
      DocumentEditionUpdateError._internal;

  const factory DocumentEditionStatus.updateSuccess() = DocumentEditionUpdateSuccess._internal;
}

class DocumentEditionInitializing extends DocumentEditionStatus {
  const DocumentEditionInitializing._internal() : super._internal();

  @override
  List<Object?> get props => [];
}

class DocumentEditionInitializationError extends DocumentEditionStatus {
  const DocumentEditionInitializationError._internal() : super._internal();

  @override
  List<Object?> get props => [];
}

class DocumentEditionInitializationSuccess extends DocumentEditionStatus {
  final EnsFileContent? ensFileContent;

  const DocumentEditionInitializationSuccess._internal(this.ensFileContent) : super._internal();

  @override
  List<Object?> get props => [ensFileContent];
}

class DocumentEditionUploading extends DocumentEditionStatus {
  final String info;

  const DocumentEditionUploading._internal(this.info) : super._internal();

  @override
  List<Object?> get props => [info];
}

class DocumentEditionUploadSuccess extends DocumentEditionStatus {
  const DocumentEditionUploadSuccess._internal() : super._internal();

  @override
  List<Object?> get props => [];
}

class DocumentEditionUpdateSuccess extends DocumentEditionStatus {
  const DocumentEditionUpdateSuccess._internal() : super._internal();

  @override
  List<Object?> get props => [];
}

class DocumentEditionUpdateError extends DocumentEditionStatus {
  final DocumentEditionCreation? ensFile;

  const DocumentEditionUpdateError._internal(this.ensFile) : super._internal();

  @override
  List<Object?> get props => [ensFile];
}

abstract class MultiPagesListState extends Equatable {
  const MultiPagesListState._internal();

  const factory MultiPagesListState.notLoaded() = MultiPagesListStateNotLoaded._internal;

  const factory MultiPagesListState.loading(List<EnsFileImageContent> pages) = MultiPagesListStateLoading._internal;

  const factory MultiPagesListState.success(List<EnsFileImageContent> pages) = MultiPagesListStateSuccess._internal;

  const factory MultiPagesListState.error(MultidocErrorType errorType, List<EnsFileImageContent> pages) =
      MultiPagesListStateError._internal;

  const factory MultiPagesListState.generating(List<EnsFileImageContent> pages) =
      MultiPagesListStateGenerating._internal;

  const factory MultiPagesListState.generated(List<EnsFileImageContent> pages, EnsFileContent ensFileContent) =
      MultiPagesListStateGenerated._internal;
}

abstract class MultiPagesListWithPages extends MultiPagesListState {
  final List<EnsFileImageContent> pages;

  const MultiPagesListWithPages._internal(this.pages) : super._internal();

  @override
  List<Object?> get props => [pages];
}

class MultiPagesListStateNotLoaded extends MultiPagesListState {
  const MultiPagesListStateNotLoaded._internal() : super._internal();

  @override
  List<Object?> get props => [];
}

class MultiPagesListStateLoading extends MultiPagesListWithPages {
  const MultiPagesListStateLoading._internal(super.pages) : super._internal();
}

class MultiPagesListStateSuccess extends MultiPagesListWithPages {
  const MultiPagesListStateSuccess._internal(super.pages) : super._internal();
}

class MultiPagesListStateError extends MultiPagesListWithPages {
  final MultidocErrorType errorType;

  const MultiPagesListStateError._internal(this.errorType, List<EnsFileImageContent> pages) : super._internal(pages);

  @override
  List<Object?> get props => [errorType];
}

class MultiPagesListStateGenerating extends MultiPagesListWithPages {
  const MultiPagesListStateGenerating._internal(super.pages) : super._internal();
}

class MultiPagesListStateGenerated extends MultiPagesListWithPages {
  final EnsFileContent ensFileContent;

  const MultiPagesListStateGenerated._internal(super.pages, this.ensFileContent) : super._internal();

  @override
  List<Object?> get props => [ensFileContent];
}

class DefaultConfidentialityState extends Equatable {
  final AllPurposesStatus getStatus;
  final AllPurposesStatus updateStatus;
  final DefaultConfidentiality? defaultConfidentiality;

  const DefaultConfidentialityState({
    this.getStatus = AllPurposesStatus.NOT_LOADED,
    this.updateStatus = AllPurposesStatus.NOT_LOADED,
    this.defaultConfidentiality,
  });

  bool get isSuccessWithData => getStatus.isSuccess() && defaultConfidentiality != null;

  bool get isErrorOrSuccessWithoutData =>
      getStatus.isError() || (getStatus.isSuccess() && defaultConfidentiality == null);

  DefaultConfidentialityState clone({
    AllPurposesStatus? getStatus,
    AllPurposesStatus? updateStatus,
    DefaultConfidentiality? defaultConfidentiality,
  }) {
    return DefaultConfidentialityState(
      getStatus: getStatus ?? this.getStatus,
      updateStatus: updateStatus ?? this.updateStatus,
      defaultConfidentiality: defaultConfidentiality ?? this.defaultConfidentiality,
    );
  }

  @override
  List<Object?> get props => [getStatus, updateStatus, defaultConfidentiality];
}

enum DefaultConfidentiality {
  VISIBLE,
  MASKED;

  bool get isVisible => this == VISIBLE;

  bool get isMasked => this == MASKED;
}
