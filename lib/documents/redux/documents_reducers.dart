/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'documents_redux.dart';

class DocumentsReducers {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, ProcessFetchDocumentsSuccessAction>(
          DocumentsReducers._onProcessFetchDocumentsSuccessAction,
        ).call,
        TypedReducer<EnsState, ProcessFetchDocumentsErrorAction>(
          DocumentsReducers._onProcessFetchDocumentsErrorAction,
        ).call,
        TypedReducer<EnsState, ProcessDocumentUploadedAction>(DocumentsReducers._onProcessDocumentUploadedAction).call,
        TypedReducer<EnsState, IsCurrentlyLoadingDocumentsAction>(
          DocumentsReducers._onIsCurrentlyLoadingDocumentsAction,
        ).call,
        TypedReducer<EnsState, InitDocumentEditionFromFileAction>(
          DocumentsReducers._onInitDocumentEditionFromFileAction,
        ).call,
        TypedReducer<EnsState, ProcessDocumentEditionInitializedAction>(
          DocumentsReducers._onProcessDocumentEditionInitializedAction,
        ).call,
        TypedReducer<EnsState, UploadingDocumentAction>(DocumentsReducers._onUploadingDocumentAction).call,
        TypedReducer<EnsState, InitDocumentDisplayAction>(DocumentsReducers._onInitDocumentDisplayAction).call,
        TypedReducer<EnsState, ProcessDocumentContentSuccessAction>(
          DocumentsReducers._onProcessDocumentContentSuccessAction,
        ).call,
        TypedReducer<EnsState, ProcessDocumentContentErrorAction>(
          DocumentsReducers._onProcessDocumentContentErrorAction,
        ).call,
        TypedReducer<EnsState, DeleteDocumentsAction>(DocumentsReducers._onDeleteDocumentsAction).call,
        TypedReducer<EnsState, ProcessDeleteDocumentsSuccessAction>(
          DocumentsReducers._onProcessDeleteDocumentsSuccessAction,
        ).call,
        TypedReducer<EnsState, ProcessDeleteDocumentsErrorAction>(
          DocumentsReducers._onProcessDeleteDocumentsErrorAction,
        ).call,
        TypedReducer<EnsState, UpdateDocumentAction>(DocumentsReducers._onUpdateDocumentAction).call,
        TypedReducer<EnsState, ProcessDocumentUpdateSuccessAction>(
          DocumentsReducers._onProcessDocumentUpdateSuccessAction,
        ).call,
        TypedReducer<EnsState, ProcessDocumentUpdateErrorAction>(
          DocumentsReducers._onProcessDocumentUpdateErrorAction,
        ).call,
        TypedReducer<EnsState, AddDocumentToSelectionAction>(
          DocumentsReducers._onAddDocumentToSelectionAction,
        ).call,
        TypedReducer<EnsState, InitSelectedDocumentsAction>(DocumentsReducers._onInitSelectedDocumentsAction).call,
        TypedReducer<EnsState, InitDocumentEditionAction>(DocumentsReducers._onInitDocumentEditionAction).call,
        TypedReducer<EnsState, FetchConfidentialiteBeforeNextAction>(
          DocumentsReducers._onFetchConfidentialiteBeforeNextAction,
        ).call,
        TypedReducer<EnsState, FetchDefaultConfidentialityAction>(
          DocumentsReducers._onFetchDefaultConfidentialityAction,
        ).call,
        TypedReducer<EnsState, ProcessFetchDefaultConfidentialitySuccessAction>(
          DocumentsReducers._onProcessFetchDefaultConfidentialitySuccessAction,
        ).call,
        TypedReducer<EnsState, ProcessFetchDefaultConfidentialityErrorAction>(
          DocumentsReducers._onProcessFetchDefaultConfidentialityErrorAction,
        ).call,
        TypedReducer<EnsState, UpdateDefaultConfidentialityForAllDocumentsAction>(
          DocumentsReducers._onUpdateDefaultConfidentialityForAllDocumentsAction,
        ).call,
        TypedReducer<EnsState, ProcessUpdateDefaultConfidentialityForAllDocumentsSuccessAction>(
          DocumentsReducers._onProcessUpdateDefaultConfidentialityForAllDocumentsSuccessAction,
        ).call,
        TypedReducer<EnsState, ProcessUpdateDefaultConfidentialityForAllDocumentsErrorAction>(
          DocumentsReducers._onProcessUpdateDefaultConfidentialityForAllDocumentsErrorAction,
        ).call,
        TypedReducer<EnsState, ProcessUpdatedDocumentPageAction>(DocumentsReducers._onProcessUpdatedDocumentPageAction)
            .call,
        TypedReducer<EnsState, AddDocumentPageAction>(DocumentsReducers._onAddDocumentPageAction).call,
        TypedReducer<EnsState, AddScannedDocumentPageAction>(DocumentsReducers._onAddScannedDocumentAction).call,
        TypedReducer<EnsState, ReCropAction>(DocumentsReducers._onRecropDocumentAction).call,
        TypedReducer<EnsState, DeleteDocumentPageAction>(DocumentsReducers._onDeleteDocumentPageAction).call,
        TypedReducer<EnsState, ValidateMultiPageAction>(DocumentsReducers._onValidateMultiPageAction).call,
        TypedReducer<EnsState, ProcessValidatedMultiPageAction>(DocumentsReducers._onProcessValidatedMultiPageAction)
            .call,
        TypedReducer<EnsState, CancelMultiPageStateAction>(DocumentsReducers._onCancelMultiPageStateAction).call,
        TypedReducer<EnsState, ContinueMultiPageStateAction>(DocumentsReducers._onContinueMultiPageStateAction).call,
        TypedReducer<EnsState, ResetCreateDossierAction>(DocumentsReducers._onResetCreateDossierAction).call,
        TypedReducer<EnsState, CreateDossierAction>(DocumentsReducers._onCreateDossierAction).call,
        TypedReducer<EnsState, _ProcessCreateDossierSuccessAction>(
          DocumentsReducers._onProcessCreateDossierSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessCreateDossierErrorAction>(
          DocumentsReducers._onProcessCreerDossierErrorAction,
        ).call,
        TypedReducer<EnsState, _ProcessDeleteDossierSuccessAction>(
          DocumentsReducers._onProcessDeleteDossierSuccessAction,
        ).call,
        TypedReducer<EnsState, StoreLinkedDocumentAction>(DocumentsReducers._onStoreLinkedDocumentAction).call,
        TypedReducer<EnsState, RemoveDocumentAction>(DocumentsReducers._onRemoveDocumentAction).call,
        TypedReducer<EnsState, UpdateDocumentsSortingMethodAction>(
          DocumentsReducers._onUpdateDocumentsSortingMethodAction,
        ).call,
        TypedReducer<EnsState, ReInitDocumentUploadStatutsAction>(
          DocumentsReducers._onReInitDocumentUploadStatutsAction,
        ).call,
        TypedReducer<EnsState, ResetRenameDossierAction>(DocumentsReducers._onResetRenameDossierAction).call,
        TypedReducer<EnsState, RenameDossierAction>(DocumentsReducers._onRenameDossierAction).call,
        TypedReducer<EnsState, _ProcessRenameDossierSuccessAction>(
          DocumentsReducers._onProcessRenameDossierSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessRenameDossierErrorAction>(
          DocumentsReducers._onProcessRenameDossierErrorAction,
        ).call,
        TypedReducer<EnsState, CleanDocumentsToCreateAction>(DocumentsReducers._cleanDocumentsToCreateAction).call,
        TypedReducer<EnsState, ProcessUpdatedDocumentConfidentialitesAction>(
          DocumentsReducers._onProcessUpdatedDocumentConfidentialitesAction,
        ).call,
        TypedReducer<EnsState, TransformToBlackAndWhitePageAction>(
          DocumentsReducers._onTransformToBlackAndWhitePageAction,
        ).call,
        TypedReducer<EnsState, ShareDocumentAction>(DocumentsReducers._onShareDocumentAction).call,
        TypedReducer<EnsState, ShareDocumentContentAction>(DocumentsReducers._onShareDocumentContentAction).call,
        TypedReducer<EnsState, ProcessShareDocumentSuccessAction>(
          DocumentsReducers._onProcessShareDocumentSuccessAction,
        ).call,
        TypedReducer<EnsState, ProcessShareDocumentDismissedAction>(
          DocumentsReducers._onProcessShareDocumentDismissedAction,
        ).call,
        TypedReducer<EnsState, ProcessShareDocumentErrorAction>(DocumentsReducers._onProcessShareDocumentErrorAction)
            .call,
        TypedReducer<EnsState, ReinitShareStateAction>(DocumentsReducers._onReinitShareStateAction).call,
        TypedReducer<EnsState, ProcessUpdateSyntheseAction>(DocumentsReducers._onProcessUpdateSyntheseAction).call,
        TypedReducer<EnsState, _ProcessFetchShouldDisplayCreateAvisArretDeTravailDossierBottomSheetAction>(
          DocumentsReducers._onProcessFetchShouldDisplayCreateAvisArretDeTravailDossierBottomSheetAction,
        ).call,
        TypedReducer<EnsState, SetAlreadyDisplayCreateAvisArretDeTravailDossierBottomSheetAction>(
          DocumentsReducers._onSetAlreadyDisplayCreateAvisArretDeTravailDossierBottomSheetAction,
        ).call,
        TypedReducer<EnsState, MoveDocumentsAction>(
          DocumentsReducers._onMoveDocumentsAction,
        ).call,
        TypedReducer<EnsState, ProcessMoveDocumentsSuccessAction>(
          DocumentsReducers._onProcessMoveDocumentsSuccessAction,
        ).call,
        TypedReducer<EnsState, ProcessMoveDocumentsErrorAction>(
          DocumentsReducers._onProcessMoveDocumentsErrorAction,
        ).call,
        TypedReducer<EnsState, ResetMoveDocumentsAction>(
          DocumentsReducers._onResetMoveDocumentsAction,
        ).call,
        TypedReducer<EnsState, SetDocumentEpingleStatusAction>(
          DocumentsReducers._onSetDocumentPinStatusAction,
        ).call,
        TypedReducer<EnsState, ProcessSetDocumentEpingleStatusSuccessAction>(
          DocumentsReducers._onProcessSetDocumentEpingleStatusSuccessAction,
        ).call,
        TypedReducer<EnsState, ProcessSetDocumentEpingleStatusErrorAction>(
          DocumentsReducers._onProcessSetDocumentEpingleStatusErrorAction,
        ).call,
        TypedReducer<EnsState, UnhighlightDossierAction>(
          DocumentsReducers._onUnhighlightDossierAction,
        ).call,
        TypedReducer<EnsState, UnhighlightDocumentAction>(
          DocumentsReducers._onUnhighlightDocumentAction,
        ).call,
      ];

  static EnsState _onProcessFetchDocumentsSuccessAction(EnsState state, ProcessFetchDocumentsSuccessAction action) {
    final dossiers = action.dossiersAndDocuments.dossiers;
    final documents = action.dossiersAndDocuments.documents;

    final newDocuments = {
      for (final EnsDocument document in documents) document.id: document,
    };
    final directiveAnticipee = state.documentsState.documentsListState.documents.entries
        .firstWhereOrNull((entry) => entry.value.categorie == EnsDocumentCategorie.directivesAnticipees);
    if (directiveAnticipee != null) {
      newDocuments.addEntries({directiveAnticipee});
    }

    return state.clone(
      documentsState: state.documentsState.clone(
        documentsListState: state.documentsState.documentsListState.clone(
          status: AllPurposesStatus.SUCCESS,
          documents: newDocuments,
          dossiers: {for (final EnsDossier folder in dossiers) folder.id: folder},
        ),
      ),
    );
  }

  static EnsState _onProcessFetchDocumentsErrorAction(EnsState state, ProcessFetchDocumentsErrorAction action) {
    return state.clone(
      documentsState: state.documentsState.clone(
        documentsListState: state.documentsState.documentsListState.clone(status: AllPurposesStatus.ERROR),
      ),
    );
  }

  static EnsState _onIsCurrentlyLoadingDocumentsAction(EnsState state, IsCurrentlyLoadingDocumentsAction action) {
    return state.clone(
      documentsState: state.documentsState.clone(
        documentsListState: state.documentsState.documentsListState.clone(status: AllPurposesStatus.LOADING),
      ),
    );
  }

  static EnsState _onInitDocumentEditionFromFileAction(EnsState state, InitDocumentEditionFromFileAction action) {
    return state.clone(
      documentsState: state.documentsState.clone(editionStatus: const DocumentEditionStatus.initializing()),
    );
  }

  static EnsState _onInitDocumentEditionAction(EnsState state, InitDocumentEditionAction action) {
    return state.clone(
      documentsState: state.documentsState.clone(editionStatus: const DocumentEditionStatus.initializing()),
    );
  }

  static EnsState _onProcessDocumentEditionInitializedAction(
    EnsState state,
    ProcessDocumentEditionInitializedAction action,
  ) {
    return state.clone(
      documentsState: state.documentsState.clone(
        editionStatus: _buildNewDocumentEditionStatusForInit(action.processingResult),
      ),
    );
  }

  static EnsState _onUploadingDocumentAction(EnsState state, UploadingDocumentAction action) {
    return state.clone(
      documentsState: state.documentsState.clone(editionStatus: const DocumentEditionStatus.uploading('')),
    );
  }

  static EnsState _onReInitDocumentUploadStatutsAction(EnsState state, ReInitDocumentUploadStatutsAction action) {
    return state.clone(
      documentsState: state.documentsState.clone(editionStatus: const DocumentEditionStatus.initializing()),
    );
  }

  static EnsState _onUpdateDocumentAction(EnsState state, UpdateDocumentAction action) {
    return state.clone(
      documentsState: state.documentsState
          .clone(editionStatus: const DocumentEditionStatus.uploading('Déplacement en cours\u2026')),
    );
  }

  static EnsState _onProcessDocumentUploadedAction(EnsState state, ProcessDocumentUploadedAction action) {
    return state.clone(documentsState: _buildNewDocumentsStateAfterEdition(action, state.documentsState));
  }

  static EnsState _onProcessDocumentUpdateSuccessAction(EnsState state, ProcessDocumentUpdateSuccessAction action) {
    return state.clone(
      documentsState: state.documentsState.clone(editionStatus: const DocumentEditionStatus.updateSuccess()),
    );
  }

  static EnsState _onProcessDocumentUpdateErrorAction(EnsState state, ProcessDocumentUpdateErrorAction action) {
    return state.clone(
      documentsState: state.documentsState.clone(
        editionStatus: const DocumentEditionStatus.updateError(null),
      ),
    );
  }

  static EnsState _onInitDocumentDisplayAction(EnsState state, InitDocumentDisplayAction action) {
    return state.clone(documentToDisplayState: const FileState());
  }

  static EnsState _onProcessDocumentContentSuccessAction(EnsState state, ProcessDocumentContentSuccessAction action) {
    return state.clone(
      documentToDisplayState: FileState(
        status: FileStatus.SUCCESS,
        data: FileData(documentId: action.documentId, ensFileContent: action.retrieval.ensFileContent),
      ),
    );
  }

  static EnsState _onProcessDocumentContentErrorAction(EnsState state, ProcessDocumentContentErrorAction action) {
    return state.clone(
      documentToDisplayState: FileState(
        status: action.errorType == FetchDocumentContentErrorType.NOT_FOUND_ERROR
            ? FileStatus.NOT_FOUND_ERROR
            : FileStatus.GENERIC_ERROR,
      ),
    );
  }

  static EnsState _onDeleteDocumentsAction(EnsState state, DeleteDocumentsAction action) {
    final documentsState = state.documentsState;
    final newDocumentsBeingDeleted = Set<String>.from(documentsState.documentsIdsBeingDeleted);
    newDocumentsBeingDeleted.addAll(action.documentsIds);
    return state.clone(
      documentsState: documentsState.clone(
        documentsBeingDeleted: Set<String>.unmodifiable(newDocumentsBeingDeleted),
        isLastDeletionSuccessful: false,
      ),
    );
  }

  static EnsState _onProcessDeleteDocumentsSuccessAction(EnsState state, ProcessDeleteDocumentsSuccessAction action) {
    final documentsState = state.documentsState;
    final newDocumentsBeingDeleted = Set<String>.from(documentsState.documentsIdsBeingDeleted)
      ..removeWhere((docId) => action.deletedDocsIds.contains(docId));

    final newDocuments = Map<String, EnsDocument>.from(documentsState.documentsListState.documents);
    newDocuments.removeWhere((docId, _) => action.deletedDocsIds.contains(docId));

    return state.clone(
      documentsState: documentsState.clone(
        documentsListState: documentsState.documentsListState.clone(
          status: AllPurposesStatus.SUCCESS,
          documents: newDocuments,
        ),
        documentsBeingDeleted: Set<String>.unmodifiable(newDocumentsBeingDeleted),
        isLastDeletionSuccessful: true,
      ),
    );
  }

  static EnsState _onProcessDeleteDocumentsErrorAction(EnsState state, ProcessDeleteDocumentsErrorAction action) {
    final documentsState = state.documentsState;
    final newDocumentsBeingDeleted = Set<String>.from(documentsState.documentsIdsBeingDeleted)
      ..removeWhere((docId) => action.deletedDocsIds.contains(docId));

    return state.clone(
      documentsState: documentsState.clone(
        documentsBeingDeleted: Set<String>.unmodifiable(newDocumentsBeingDeleted),
        isLastDeletionSuccessful: false,
      ),
    );
  }

  static EnsState _onAddDocumentToSelectionAction(
    EnsState state,
    AddDocumentToSelectionAction action,
  ) {
    final newSelectedDocumentsIds = Set<String>.from(state.documentsState.selectedDocumentsIds);

    if (action.isSelected) {
      newSelectedDocumentsIds.add(action.documentId);
      return state.clone(
        documentsState: state.documentsState.clone(
          selectedDocuments: newSelectedDocumentsIds,
        ),
      );
    } else {
      newSelectedDocumentsIds.remove(action.documentId);
      return state.clone(
        documentsState: state.documentsState.clone(
          selectedDocuments: newSelectedDocumentsIds,
        ),
      );
    }
  }

  static EnsState _onInitSelectedDocumentsAction(
    EnsState state,
    InitSelectedDocumentsAction action,
  ) {
    final newSelectedDocumentsIds = Set<String>.from(action.selectedDocumentsIds);
    return state.clone(
      documentsState: state.documentsState.clone(selectedDocuments: newSelectedDocumentsIds),
    );
  }

  static DocumentEditionStatus _buildNewDocumentEditionStatusForInit(FileProcessingResult result) {
    switch (result) {
      case FileProcessingSuccess _:
        return DocumentEditionStatus.initializationSuccess(result.ensFileContent);
      case FileProcessingError _:
        return const DocumentEditionStatus.initializationError();
    }
  }

  static DocumentsState _buildNewDocumentsStateAfterEdition(
    ProcessDocumentUploadedAction action,
    DocumentsState documentsState,
  ) {
    final uploadResult = action.uploadResult;
    if (uploadResult is UploadDocumentResultSuccess) {
      return documentsState.clone(
        editionStatus: const DocumentEditionStatus.uploadSuccess(),
        nouveauDocumentIdOptional: Optional.of(uploadResult.createdDocumentId),
      );
    } else if (uploadResult is UploadDocumentResultError) {
      final ensFileContent = uploadResult.ensFile;
      return documentsState.clone(editionStatus: DocumentEditionStatus.updateError(ensFileContent));
    }
    return documentsState;
  }

  static EnsState _onFetchConfidentialiteBeforeNextAction(
    EnsState state,
    FetchConfidentialiteBeforeNextAction action,
  ) {
    final currentDefaultConfidentialityState = state.documentsState.defaultConfidentialityState;
    return state.clone(
      documentsState: state.documentsState.clone(
        defaultConfidentialityState: currentDefaultConfidentialityState.clone(
          getStatus: _isDefaultConfidentialityLoading(force: false, state: currentDefaultConfidentialityState)
              ? AllPurposesStatus.LOADING
              : state.documentsState.defaultConfidentialityState.getStatus,
        ),
      ),
    );
  }

  static bool _isDefaultConfidentialityLoading({
    required bool force,
    required DefaultConfidentialityState state,
  }) {
    return force || state.getStatus.isNotSuccess() || state.defaultConfidentiality == null;
  }

  static EnsState _onFetchDefaultConfidentialityAction(
    EnsState state,
    FetchDefaultConfidentialityAction action,
  ) {
    final currentDefaultConfidentialityState = state.documentsState.defaultConfidentialityState;
    return state.clone(
      documentsState: state.documentsState.clone(
        defaultConfidentialityState: currentDefaultConfidentialityState.clone(
          getStatus: _isDefaultConfidentialityLoading(force: action.force, state: currentDefaultConfidentialityState)
              ? AllPurposesStatus.LOADING
              : state.documentsState.defaultConfidentialityState.getStatus,
        ),
      ),
    );
  }

  static EnsState _onProcessFetchDefaultConfidentialitySuccessAction(
    EnsState state,
    ProcessFetchDefaultConfidentialitySuccessAction action,
  ) {
    if (state.userState.currentProfilePatientId == action.patientId) {
      return state.clone(
        documentsState: state.documentsState.clone(
          defaultConfidentialityState: state.documentsState.defaultConfidentialityState.clone(
            getStatus: AllPurposesStatus.SUCCESS,
            defaultConfidentiality: action.defaultConfidentiality,
          ),
        ),
      );
    }
    return state.clone(
      documentsState: state.documentsState.clone(
        defaultConfidentialityState: state.documentsState.defaultConfidentialityState.clone(
          getStatus: AllPurposesStatus.ERROR,
        ),
      ),
    );
  }

  static EnsState _onProcessFetchDefaultConfidentialityErrorAction(
    EnsState state,
    ProcessFetchDefaultConfidentialityErrorAction action,
  ) {
    return state.clone(
      documentsState: state.documentsState.clone(
        defaultConfidentialityState: state.documentsState.defaultConfidentialityState.clone(
          getStatus: AllPurposesStatus.ERROR,
        ),
      ),
    );
  }

  static EnsState _onUpdateDefaultConfidentialityForAllDocumentsAction(
    EnsState state,
    UpdateDefaultConfidentialityForAllDocumentsAction action,
  ) {
    return state.clone(
      documentsState: state.documentsState.clone(
        defaultConfidentialityState: state.documentsState.defaultConfidentialityState.clone(
          updateStatus: AllPurposesStatus.LOADING,
        ),
      ),
    );
  }

  static EnsState _onProcessUpdateDefaultConfidentialityForAllDocumentsSuccessAction(
    EnsState state,
    ProcessUpdateDefaultConfidentialityForAllDocumentsSuccessAction action,
  ) {
    if (state.userState.currentProfilePatientId == action.patientId) {
      return state.clone(
        documentsState: state.documentsState.clone(
          defaultConfidentialityState: state.documentsState.defaultConfidentialityState.clone(
            updateStatus: AllPurposesStatus.SUCCESS,
            defaultConfidentiality: action.defaultConfidentiality,
          ),
        ),
      );
    } else {
      return state;
    }
  }

  static EnsState _onProcessUpdateDefaultConfidentialityForAllDocumentsErrorAction(
    EnsState state,
    ProcessUpdateDefaultConfidentialityForAllDocumentsErrorAction action,
  ) {
    return state.clone(
      documentsState: state.documentsState.clone(
        defaultConfidentialityState: state.documentsState.defaultConfidentialityState.clone(
          updateStatus: AllPurposesStatus.ERROR,
        ),
      ),
    );
  }

  static EnsState _onProcessUpdatedDocumentPageAction(
    EnsState state,
    ProcessUpdatedDocumentPageAction action,
  ) {
    final actionResult = action.result;
    if (actionResult is MultidocProcessingResultSuccess) {
      return state.clone(
        documentsState: state.documentsState.clone(
          multiPagesListState: MultiPagesListState.success(
            List.unmodifiable(actionResult.fileContents),
          ),
          isBlackAndWhiteLoading: false,
        ),
      );
    }

    return state.clone(
      documentsState: state.documentsState.clone(
        multiPagesListState: MultiPagesListState.error(
          (actionResult as MultidocProcessingResultError).errorType,
          List.unmodifiable(actionResult.fileContents),
        ),
      ),
    );
  }

  static EnsState _onAddDocumentPageAction(
    EnsState state,
    AddDocumentPageAction action,
  ) {
    final multipagesState = state.documentsState.multiPagesListState;
    final currentPages = multipagesState is MultiPagesListWithPages ? multipagesState.pages : [];

    return state.clone(
      documentsState: state.documentsState.clone(
        multiPagesListState: MultiPagesListState.loading(List.unmodifiable(currentPages)),
      ),
    );
  }

  static EnsState _onAddScannedDocumentAction(
    EnsState state,
    AddScannedDocumentPageAction action,
  ) {
    final multipagesState = state.documentsState.multiPagesListState;
    final currentPages = multipagesState is MultiPagesListWithPages ? multipagesState.pages : [];

    return state.clone(
      documentsState: state.documentsState.clone(
        multiPagesListState: MultiPagesListState.loading(List.unmodifiable(currentPages)),
      ),
    );
  }

  static EnsState _onRecropDocumentAction(
    EnsState state,
    ReCropAction action,
  ) {
    final multipagesState = state.documentsState.multiPagesListState;
    final currentPages = multipagesState is MultiPagesListWithPages ? multipagesState.pages : [];

    return state.clone(
      documentsState: state.documentsState.clone(
        multiPagesListState: MultiPagesListState.loading(List.unmodifiable(currentPages)),
      ),
    );
  }

  static EnsState _onDeleteDocumentPageAction(
    EnsState state,
    DeleteDocumentPageAction action,
  ) {
    final multipagesState = state.documentsState.multiPagesListState;
    late final MultiPagesListState newMultiPagesState;
    if (multipagesState is MultiPagesListWithPages) {
      newMultiPagesState = MultiPagesListState.loading(List.unmodifiable(multipagesState.pages));
    } else {
      newMultiPagesState = multipagesState;
    }

    return state.clone(
      documentsState: state.documentsState.clone(
        multiPagesListState: newMultiPagesState,
      ),
    );
  }

  static EnsState _onValidateMultiPageAction(
    EnsState state,
    ValidateMultiPageAction action,
  ) {
    return state.clone(
      documentsState: state.documentsState.clone(
        multiPagesListState: MultiPagesListState.generating(action.pages),
      ),
    );
  }

  static EnsState _onProcessValidatedMultiPageAction(
    EnsState state,
    ProcessValidatedMultiPageAction action,
  ) {
    final generationResult = action.generationResult;

    if (generationResult is MultiPageGenerationSuccess) {
      return state.clone(
        documentsState: state.documentsState.clone(
          multiPagesListState: MultiPagesListState.generated(action.pages, generationResult.fileContent),
        ),
      );
    } else {
      return state.clone(
        documentsState: state.documentsState.clone(
          multiPagesListState: MultiPagesListState.error(MultidocErrorType.GENERIC, action.pages),
        ),
      );
    }
  }

  static EnsState _onCancelMultiPageStateAction(
    EnsState state,
    CancelMultiPageStateAction action,
  ) {
    return state.clone(
      documentsState: state.documentsState.clone(
        multiPagesListState: const MultiPagesListState.notLoaded(),
      ),
    );
  }

  static EnsState _onContinueMultiPageStateAction(
    EnsState state,
    ContinueMultiPageStateAction action,
  ) {
    return state.clone(
      documentsState: state.documentsState.clone(
        multiPagesListState: MultiPagesListState.success(action.pages),
      ),
    );
  }

  static EnsState _onResetCreateDossierAction(EnsState state, ResetCreateDossierAction action) {
    return state.clone(
      documentsState: state.documentsState.clone(createDossierStatus: DossierStatus.NOT_LOADED),
    );
  }

  static EnsState _onCreateDossierAction(
    EnsState state,
    CreateDossierAction action,
  ) {
    return state.clone(
      documentsState: state.documentsState.clone(createDossierStatus: DossierStatus.LOADING),
    );
  }

  static EnsState _onProcessCreateDossierSuccessAction(
    EnsState state,
    _ProcessCreateDossierSuccessAction action,
  ) {
    final dossier = action.dossier;
    final newDossiers = Map<String, EnsDossier>.from(state.documentsState.documentsListState.dossiers)
      ..addAll({dossier.id: dossier});

    return state.clone(
      documentsState: state.documentsState.clone(
        createDossierStatus: DossierStatus.SUCCESS,
        documentsListState: state.documentsState.documentsListState.clone(
          status: AllPurposesStatus.SUCCESS,
          dossiers: newDossiers,
        ),
        nouveauDossierIdOptional: Optional.of(dossier.id),
      ),
    );
  }

  static EnsState _onProcessCreerDossierErrorAction(
    EnsState state,
    _ProcessCreateDossierErrorAction action,
  ) {
    return state.clone(
      documentsState: state.documentsState.clone(
        createDossierStatus: action.domainError == DocumentsDomainError.DOSSIER_NAME_ALREADY_EXISTS
            ? DossierStatus.DOSSIER_NAME_ALREADY_EXISTS_ERROR
            : DossierStatus.GENERIC_ERROR,
      ),
    );
  }

  static EnsState _onResetRenameDossierAction(EnsState state, ResetRenameDossierAction action) {
    return state.clone(
      documentsState: state.documentsState.clone(renameDossierStatus: DossierStatus.NOT_LOADED),
    );
  }

  static EnsState _onRenameDossierAction(EnsState state, RenameDossierAction action) {
    return state.clone(
      documentsState: state.documentsState.clone(renameDossierStatus: DossierStatus.LOADING),
    );
  }

  static EnsState _onProcessRenameDossierSuccessAction(
    EnsState state,
    _ProcessRenameDossierSuccessAction action,
  ) {
    final oldDossier = state.documentsState.documentsListState.dossiers[action.dossierId]!;
    final newDossier = oldDossier.clone(name: action.dossierName);
    final newDossiers = Map<String, EnsDossier>.from(state.documentsState.documentsListState.dossiers);
    newDossiers[action.dossierId] = newDossier;
    return state.clone(
      documentsState: state.documentsState.clone(
        documentsListState: state.documentsState.documentsListState.clone(
          dossiers: newDossiers,
        ),
        renameDossierStatus: DossierStatus.SUCCESS,
      ),
    );
  }

  static EnsState _onProcessRenameDossierErrorAction(
    EnsState state,
    _ProcessRenameDossierErrorAction action,
  ) {
    return state.clone(
      documentsState: state.documentsState.clone(
        renameDossierStatus: action.domainError == DocumentsDomainError.DOSSIER_NAME_ALREADY_EXISTS
            ? DossierStatus.DOSSIER_NAME_ALREADY_EXISTS_ERROR
            : DossierStatus.GENERIC_ERROR,
      ),
    );
  }

  static EnsState _onProcessDeleteDossierSuccessAction(
    EnsState state,
    _ProcessDeleteDossierSuccessAction action,
  ) {
    final dossierDeletedId = action.dossierId;
    final newDossiers = Map<String, EnsDossier>.from(state.documentsState.documentsListState.dossiers)
      ..removeWhere((dossierId, _) => dossierId == dossierDeletedId);

    final newDocuments = Map<String, EnsDocument>.from(state.documentsState.documentsListState.documents).map(
      (key, value) => MapEntry(key, value.dossierId == dossierDeletedId ? value.withDossier(null) : value),
    );

    return state.clone(
      documentsState: state.documentsState.clone(
        documentsListState: state.documentsState.documentsListState.clone(
          status: AllPurposesStatus.SUCCESS,
          dossiers: newDossiers,
          documents: newDocuments,
        ),
      ),
    );
  }

  static EnsState _onStoreLinkedDocumentAction(
    EnsState state,
    StoreLinkedDocumentAction action,
  ) {
    final documentList = List<DocumentEditionCreation>.from(state.documentsState.documentsBeingLinked)
      ..add(action.document as DocumentEditionCreation);

    return state.clone(
      documentsState: state.documentsState.clone(
        documentsBeingLinked: documentList,
        multiPagesListState: const MultiPagesListState.notLoaded(),
      ),
    );
  }

  static EnsState _onRemoveDocumentAction(
    EnsState state,
    RemoveDocumentAction action,
  ) {
    final documentList = List<DocumentEditionCreation>.from(state.documentsState.documentsBeingLinked);
    documentList.remove(action.document as DocumentEditionCreation);
    return state.clone(documentsState: state.documentsState.clone(documentsBeingLinked: documentList));
  }

  static EnsState _onUpdateDocumentsSortingMethodAction(EnsState state, UpdateDocumentsSortingMethodAction action) {
    return state.clone(documentsState: state.documentsState.clone(currentDocumentSortingMethod: action.sortingMethod));
  }

  static EnsState _cleanDocumentsToCreateAction(EnsState state, CleanDocumentsToCreateAction action) {
    return state.clone(documentsState: state.documentsState.clone(documentsBeingLinked: []));
  }

  static EnsState _onProcessUpdatedDocumentConfidentialitesAction(
    EnsState state,
    ProcessUpdatedDocumentConfidentialitesAction action,
  ) {
    final newDocuments = Map<String, EnsDocument>.from(state.documentsState.documentsListState.documents);
    final document = newDocuments[action.docId];
    if (document != null) {
      newDocuments[action.docId] = document.withConfidentiality(action.newConfidentialites);
    }
    return state.clone(
      documentsState: state.documentsState.clone(
        documentsListState: state.documentsState.documentsListState.clone(
          documents: newDocuments,
        ),
      ),
    );
  }

  static EnsState _onTransformToBlackAndWhitePageAction(EnsState state, TransformToBlackAndWhitePageAction action) {
    return state.clone(documentsState: state.documentsState.clone(isBlackAndWhiteLoading: true));
  }

  static EnsState _onShareDocumentAction(EnsState state, ShareDocumentAction action) {
    return state.clone(
      documentsState: state.documentsState.clone(
        shareStatus: AllPurposesStatus.LOADING,
      ),
    );
  }

  static EnsState _onShareDocumentContentAction(EnsState state, ShareDocumentContentAction action) {
    return state.clone(
      documentsState: state.documentsState.clone(
        shareStatus: AllPurposesStatus.LOADING,
      ),
    );
  }

  static EnsState _onProcessShareDocumentSuccessAction(EnsState state, ProcessShareDocumentSuccessAction action) {
    return state.clone(
      documentsState: state.documentsState.clone(
        shareStatus: AllPurposesStatus.SUCCESS,
      ),
    );
  }

  static EnsState _onProcessShareDocumentDismissedAction(EnsState state, ProcessShareDocumentDismissedAction action) {
    return state.clone(
      documentsState: state.documentsState.clone(
        shareStatus: AllPurposesStatus.SUCCESS,
      ),
    );
  }

  static EnsState _onProcessShareDocumentErrorAction(EnsState state, ProcessShareDocumentErrorAction action) {
    return state.clone(
      documentsState: state.documentsState.clone(
        shareStatus: AllPurposesStatus.ERROR,
      ),
    );
  }

  static EnsState _onReinitShareStateAction(EnsState state, ReinitShareStateAction action) {
    return state.clone(
      documentsState: state.documentsState.clone(
        shareStatus: AllPurposesStatus.NOT_LOADED,
      ),
    );
  }

  static EnsState _onProcessUpdateSyntheseAction(EnsState state, ProcessUpdateSyntheseAction action) {
    final newDocuments = Map<String, EnsDocument>.from(state.documentsState.documentsListState.documents);
    final document = newDocuments[action.id];
    if (document != null) {
      final newDocument = EnsDocument(
        id: document.id,
        title: document.title,
        date: action.date,
        proprietaire: document.proprietaire,
        categorie: document.categorie,
        confidentialites: document.confidentialites,
        deletable: document.deletable,
        isCovidCertificate: document.isCovidCertificate,
        updatableCategory: document.updatableCategory,
        updatableTitle: document.updatableTitle,
        updatableCreationDate: document.updatableCreationDate,
        reportDate: document.reportDate,
        isEpingle: document.isEpingle,
        type: document.type,
      );

      newDocuments[action.id] = newDocument;
    }
    return state.clone(
      documentsState: state.documentsState.clone(
        documentsListState: state.documentsState.documentsListState.clone(
          documents: newDocuments,
        ),
      ),
    );
  }

  static EnsState _onProcessFetchShouldDisplayCreateAvisArretDeTravailDossierBottomSheetAction(
    EnsState state,
    _ProcessFetchShouldDisplayCreateAvisArretDeTravailDossierBottomSheetAction action,
  ) {
    return state.clone(
      documentsState: state.documentsState.clone(
        shouldDisplayCreateAvisArretDeTravailDossierBottomSheet:
            action.shouldDisplayCreateAvisArretDeTravailDossierBottomSheet,
      ),
    );
  }

  static EnsState _onSetAlreadyDisplayCreateAvisArretDeTravailDossierBottomSheetAction(
    EnsState state,
    SetAlreadyDisplayCreateAvisArretDeTravailDossierBottomSheetAction action,
  ) {
    return state.clone(
      documentsState: state.documentsState.clone(shouldDisplayCreateAvisArretDeTravailDossierBottomSheet: false),
    );
  }

  static EnsState _onMoveDocumentsAction(EnsState state, MoveDocumentsAction action) {
    return state.clone(
      documentsState: state.documentsState.clone(moveDossiersStatus: AllPurposesStatus.LOADING),
    );
  }

  static EnsState _onProcessMoveDocumentsSuccessAction(EnsState state, ProcessMoveDocumentsSuccessAction action) {
    return state.clone(
      documentsState: state.documentsState.clone(moveDossiersStatus: AllPurposesStatus.SUCCESS),
    );
  }

  static EnsState _onProcessMoveDocumentsErrorAction(EnsState state, ProcessMoveDocumentsErrorAction action) {
    return state.clone(
      documentsState: state.documentsState.clone(moveDossiersStatus: AllPurposesStatus.ERROR),
    );
  }

  static EnsState _onResetMoveDocumentsAction(EnsState state, ResetMoveDocumentsAction action) {
    return state.clone(
      documentsState: state.documentsState.clone(moveDossiersStatus: AllPurposesStatus.NOT_LOADED),
    );
  }

  static EnsState _onSetDocumentPinStatusAction(EnsState state, SetDocumentEpingleStatusAction action) {
    return state.clone(
      documentsState: state.documentsState.clone(setDocumentEpingleStatus: AllPurposesStatus.LOADING),
    );
  }

  static EnsState _onProcessSetDocumentEpingleStatusSuccessAction(
    EnsState state,
    ProcessSetDocumentEpingleStatusSuccessAction action,
  ) {
    final DocumentsState newDocumentState = state.documentsState;
    final newDocuments = Map<String, EnsDocument>.from(newDocumentState.documentsListState.documents);
    final documentToEdit = newDocuments[action.documentId];

    if (documentToEdit != null) {
      final newDocument = documentToEdit.clone(isEpingle: action.newDocumentEpingleStatus);
      newDocuments[action.documentId] = newDocument;
    }

    return state.clone(
      documentsState: newDocumentState.clone(
        documentsListState: state.documentsState.documentsListState.clone(
          documents: newDocuments,
        ),
        setDocumentEpingleStatus: AllPurposesStatus.SUCCESS,
      ),
    );
  }

  static EnsState _onProcessSetDocumentEpingleStatusErrorAction(
    EnsState state,
    ProcessSetDocumentEpingleStatusErrorAction action,
  ) {
    return state.clone(documentsState: state.documentsState.clone(setDocumentEpingleStatus: AllPurposesStatus.ERROR));
  }

  static EnsState _onUnhighlightDossierAction(
    EnsState state,
    UnhighlightDossierAction action,
  ) {
    return state.clone(
      documentsState: state.documentsState.clone(nouveauDossierIdOptional: Optional.ofNullable(null)),
    );
  }

  static EnsState _onUnhighlightDocumentAction(
    EnsState state,
    UnhighlightDocumentAction action,
  ) {
    return state.clone(
      documentsState: state.documentsState.clone(nouveauDocumentIdOptional: Optional.ofNullable(null)),
    );
  }
}
