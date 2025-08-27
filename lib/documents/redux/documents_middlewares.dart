/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'documents_redux.dart';

class DocumentsMiddleware {
  final IDocumentsRepository documentsRepository;
  final IDocumentInteractor documentsInteractor;
  final FilePreprocessor filePreprocessor;
  final PdfGenerator pdfGenerator;
  final IScannerBridgeWrapper scannerBridgeWrapper;
  final ISecureStorageRepository secureStorageRepository;
  final FileStorage fileStorage;

  static const int delay = 800;

  DocumentsMiddleware._internal(
    this.documentsRepository,
    this.documentsInteractor,
    this.filePreprocessor,
    this.pdfGenerator,
    this.scannerBridgeWrapper,
    this.secureStorageRepository,
    this.fileStorage,
  );

  static List<Middleware<EnsState>> create(
    IDocumentsRepository documentsRepository,
    IDocumentInteractor documentsInteractor,
    FilePreprocessor filePreprocessor,
    PdfGenerator pdfGenerator,
    IScannerBridgeWrapper scannerBridgeWrapper,
    ISecureStorageRepository secureStorageRepository,
    FileStorage fileStorage,
  ) {
    final middlewares = DocumentsMiddleware._internal(
      documentsRepository,
      documentsInteractor,
      filePreprocessor,
      pdfGenerator,
      scannerBridgeWrapper,
      secureStorageRepository,
      fileStorage,
    );

    return [
      TypedMiddleware<EnsState, FetchDocumentsAction>(middlewares._onFetchDocumentsAction).call,
      TypedMiddleware<EnsState, InitDocumentEditionFromFileAction>(middlewares._onInitDocumentEditionFromFileAction)
          .call,
      TypedMiddleware<EnsState, UploadDocumentAction>(middlewares._onUploadDocumentAction).call,
      TypedMiddleware<EnsState, UpdateDocumentAction>(middlewares._onUpdateDocumentAction).call,
      TypedMiddleware<EnsState, InitDocumentDisplayAction>(middlewares._onInitDocumentDisplayAction).call,
      TypedMiddleware<EnsState, DownloadDocumentAction>(middlewares._onDownloadDocumentAction).call,
      TypedMiddleware<EnsState, DeleteDocumentsAction>(middlewares._onDeleteDocumentAction).call,
      TypedMiddleware<EnsState, DeleteDirectivesAnticipeesAction>(middlewares._onDeleteDirectivesAnticipeesAction).call,
      TypedMiddleware<EnsState, FetchDefaultConfidentialityAction>(middlewares._onFetchDefaultConfidentialityAction)
          .call,
      TypedMiddleware<EnsState, FetchConfidentialiteBeforeNextAction>(
        middlewares._onFetchConfidentialiteBeforeNextAction,
      ).call,
      TypedMiddleware<EnsState, UpdateDefaultConfidentialityForAllDocumentsAction>(
        middlewares._onUpdateDefaultConfidentialityForAllDocumentsAction,
      ).call,
      TypedMiddleware<EnsState, AddDocumentPageAction>(middlewares._onAddDocumentPageAction).call,
      TypedMiddleware<EnsState, AddScannedDocumentPageAction>(middlewares._onAddScannedDocumentPageAction).call,
      TypedMiddleware<EnsState, ValidateMultiPageAction>(middlewares._onValidateMultiPageAction).call,
      TypedMiddleware<EnsState, DeleteDocumentPageAction>(middlewares._onDeletePageAction).call,
      TypedMiddleware<EnsState, TransformToBlackAndWhitePageAction>(
        middlewares._onTransformToBlackAndWhitePageAction,
      ).call,
      TypedMiddleware<EnsState, ReCropAction>(middlewares._onReCropAction).call,
      TypedMiddleware<EnsState, CreateDossierAction>(middlewares._onCreateDossierAction).call,
      TypedMiddleware<EnsState, DeleteDossierAction>(middlewares._onDeleteDossierAction).call,
      TypedMiddleware<EnsState, RenameDossierAction>(middlewares._onRenameDossierAction).call,
      TypedMiddleware<EnsState, UpdateDocumentConfidentialitesAction>(
        middlewares._onUpdateDocumentConfidentialitesAction,
      ).call,
      TypedMiddleware<EnsState, MoveDocumentsAction>(middlewares._onMoveDocumentsAction).call,
      TypedMiddleware<EnsState, ShareDocumentAction>(middlewares._onShareDocumentAction).call,
      TypedMiddleware<EnsState, ShareDocumentContentAction>(middlewares._onShareDocumentContentAction).call,
      TypedMiddleware<EnsState, FetchShouldDisplayCreateAvisArretDeTravailDossierBottomSheetAction>(
        middlewares._onFetchShouldDisplayCreateAvisArretDeTravailDossierBottomSheetAction,
      ).call,
      TypedMiddleware<EnsState, SetAlreadyDisplayCreateAvisArretDeTravailDossierBottomSheetAction>(
        middlewares._onSetAlreadyDisplayCreateAvisArretDeTravailDossierBottomSheetAction,
      ).call,
      TypedMiddleware<EnsState, SetDocumentEpingleStatusAction>(middlewares._onSetDocumentEpingleStatusAction).call,
      TypedMiddleware<EnsState, DownloadFileAction>(middlewares._onDownloadFileAction).call,
    ];
  }

  Future<void> _onFetchDocumentsAction(Store<EnsState> store, FetchDocumentsAction action, NextDispatcher next) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    if (action.force || store.state.documentsState.documentsListState.status.isNotSuccess()) {
      store.dispatch(IsCurrentlyLoadingDocumentsAction());
      final result = await documentsInteractor.getDocuments(
        patientId: patientId,
        isMainProfile: store.state.userState.isMainProfile,
      );
      result.onSuccess((successResult) {
        store.dispatch(
          ProcessFetchDocumentsSuccessAction(
            GetDossiersAndDocumentsResult(
              documents: successResult.documents,
              dossiers: successResult.dossiers,
            ),
          ),
        );
      }).onError((error) {
        store.dispatch(ProcessFetchDocumentsErrorAction());
      });
    }
  }

  Future<void> _onInitDocumentEditionFromFileAction(
    Store<EnsState> store,
    InitDocumentEditionFromFileAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final EnsFileContent ensFileContent = action.ensFileContent;
    final result = await filePreprocessor.processDocumentEdition(ensFileContent, FileMaxSizeEnum.FIVE_MEGA_BYTE);
    if (result is FileProcessingError) {
      store.dispatch(DisplaySnackbarAction.error(result.message));
    }
    store.dispatch(ProcessDocumentEditionInitializedAction(result));
  }

  Future<void> _onUploadDocumentAction(Store<EnsState> store, UploadDocumentAction action, NextDispatcher next) async {
    next(action);
    final String patientId = UserSelectors.getPatientId(store.state);
    final result = await documentsRepository.uploadDocument(patientId, action.newDocument);
    if (result is UploadDocumentResultSuccess) {
      if (action.isFromAttachment) {
        store.dispatch(const DisplaySnackbarAction.success('Pièce jointe ajoutée à mes documents santé'));
      } else {
        DelayHelper.displayWithDelay(
          callback: () {
            store.dispatch(const DisplaySnackbarAction.success('Document ajouté'));
            store.dispatch(AddSuccessfulRatingAction());
          },
          delay: Duration(milliseconds: store.state.documentsState.documentsListState.documents.isEmpty ? delay : 0),
        );
      }
      store.dispatch(CancelMultiPageStateAction());
      store.dispatch(FetchDocumentsAction(force: true));
      DelayHelper.unhighlight(callback: () => store.dispatch(UnhighlightDocumentAction()));
    } else {
      final errorMsg = (result as UploadDocumentResultError).domainError.errorMessage;
      if (errorMsg != null) {
        store.dispatch(DisplaySnackbarAction.error(errorMsg));
      }
    }
    store.dispatch(ProcessDocumentUploadedAction(uploadResult: result));
  }

  Future<void> _onUpdateDocumentAction(Store<EnsState> store, UpdateDocumentAction action, NextDispatcher next) async {
    next(action);
    final String patientId = UserSelectors.getPatientId(store.state);
    final allDocuments = store.state.documentsState.documentsListState.documents;
    final docEdition = action.document;

    final result = await documentsInteractor.updateDocumentProperties(
      patientId: patientId,
      docInput: docEdition,
      documents: allDocuments,
    );
    result.onSuccess((successResult) {
      store.dispatch(ProcessDocumentUpdateSuccessAction());
      store.dispatch(const DisplaySnackbarAction.success('Document modifié'));
      if (docEdition.category == EnsDocumentCategorie.directivesAnticipees) {
        store.dispatch(FetchDirectivesAnticipeesAction(force: true));
      } else {
        store.dispatch(FetchDocumentsAction(force: true));
      }
    }).onError((error) {
      store.dispatch(ProcessDocumentUpdateErrorAction());
      store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
    });
  }

  Future<void> _onInitDocumentDisplayAction(
    Store<EnsState> store,
    InitDocumentDisplayAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final isMainProfile = store.state.userState.isMainProfile;
    final result = await documentsInteractor.retrieveDocument(
      patientId: patientId,
      documentId: action.documentId,
      force: action.force,
      isMainProfile: isMainProfile,
    );
    result.onSuccess((successResult) {
      store.dispatch(ProcessDocumentContentSuccessAction(action.documentId, successResult));
    }).onError((domainError) {
      store.dispatch(
        ProcessDocumentContentErrorAction(
          domainError == DocumentsDomainError.NOT_FOUND
              ? FetchDocumentContentErrorType.NOT_FOUND_ERROR
              : FetchDocumentContentErrorType.GENERIC_ERROR,
        ),
      );
      if (domainError.errorMessage != null) {
        store.dispatch(DisplaySnackbarAction.error(domainError.errorMessage!));
      }
    });
  }

  Future<void> _onDownloadDocumentAction(
    Store<EnsState> store,
    DownloadDocumentAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final isMainProfile = store.state.userState.isMainProfile;
    store.dispatch(const DisplaySnackbarAction.loading('Sauvegarde en cours'));

    final result = await documentsInteractor.downloadDocument(
      patientId: patientId,
      document: action.document,
      isMainProfile: isMainProfile,
    );

    if (result is FileExportationSuccess) {
      store.dispatch(const DisplaySnackbarAction.success('Document sauvegardé'));
      DelayHelper.displayWithDelay(
        callback: () {
          store.dispatch(TriggerRecommanderAppAction(RecommanderAppActionTriggeredFrom.DOWNLOAD_DOCUMENT));
        },
      );
    } else {
      final errorMessage = (result as FileExportationFailure).errorMessage ?? 'Échec de la sauvegarde';
      store.dispatch(DisplaySnackbarAction.error(errorMessage));
    }
  }

  Future<void> _onDeleteDocumentAction(Store<EnsState> store, DeleteDocumentsAction action, NextDispatcher next) async {
    next(action);
    _doDeleteDocuments(
      store: store,
      docIds: action.documentsIds,
      isDirectivesAnticipees: false,
    );
  }

  Future<void> _onDeleteDirectivesAnticipeesAction(
    Store<EnsState> store,
    DeleteDirectivesAnticipeesAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final directivesAnticipeesState = store.state.directivesAnticipeesState;
    if (directivesAnticipeesState.isSuccess) {
      _doDeleteDocuments(store: store, docIds: [directivesAnticipeesState.documentId!], isDirectivesAnticipees: true);
    }
  }

  Future<void> _doDeleteDocuments({
    required Store<EnsState> store,
    required List<String> docIds,
    required bool isDirectivesAnticipees,
  }) async {
    final futureDelay = isDirectivesAnticipees
        ? 0
        : store.state.documentsState.documentsListState.documents.length == 1
            ? delay
            : 0;
    DelayHelper.displayWithDelay(
      callback: () => store.dispatch(const DisplaySnackbarAction.loading('Suppression en cours\u2026')),
      delay: Duration(milliseconds: futureDelay),
    );
    final patientId = UserSelectors.getPatientId(store.state);
    final result = await documentsRepository.deleteDocuments(documentsIds: docIds, patientId: patientId);

    result.onSuccess((successResult) {
      final snackbarSuccessMessage = isDirectivesAnticipees
          ? 'Directives anticipées supprimées'
          : Intl.plural(
              docIds.length,
              one: 'Document supprimé',
              other: 'Documents supprimés',
            );
      DelayHelper.displayWithDelay(
        callback: () => store.dispatch(DisplaySnackbarAction.success(snackbarSuccessMessage)),
        delay: Duration(milliseconds: futureDelay),
      );
      final isSyntheseQuestionnaire = docIds
          .where(
            (id) =>
                DocumentsSelectors.getLoadedDocumentById(store.state, id).categorie ==
                EnsDocumentCategorie.questionnaireSante,
          )
          .isNotEmpty;
      if (isSyntheseQuestionnaire) {
        store.dispatch(const FetchRecommandationsAction(force: true));
      }
      if (isDirectivesAnticipees) {
        store.dispatch(ProcessDeleteDirectivesAnticipeesSuccessAction(successResult));
      } else {
        store.dispatch(ProcessDeleteDocumentsSuccessAction(deletedDocsIds: docIds));
      }
    }).onError((_) {
      final snackbarErrorMessage = isDirectivesAnticipees
          ? 'Erreur lors de la suppression des directives anticipées'
          : 'Erreur lors de la suppression du document';
      DelayHelper.displayWithDelay(
        callback: () => store.dispatch(DisplaySnackbarAction.error(snackbarErrorMessage)),
        delay: Duration(milliseconds: futureDelay),
      );
      if (!isDirectivesAnticipees) {
        store.dispatch(ProcessDeleteDocumentsErrorAction(deletedDocsIds: docIds));
      }
    });
    store.dispatch(InitSelectedDocumentsAction(selectedDocumentsIds: []));
  }

  Future<void> _onFetchDefaultConfidentialityAction(
    Store<EnsState> store,
    FetchDefaultConfidentialityAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final defaultConfidentialityState = store.state.documentsState.defaultConfidentialityState;
    if (action.force ||
        defaultConfidentialityState.getStatus.isNotSuccess() ||
        defaultConfidentialityState.defaultConfidentiality == null) {
      final result = await documentsRepository.getDefaultConfidentiality(patientId);
      result.onSuccess((defaultConfidentiality) {
        store.dispatch(
          ProcessFetchDefaultConfidentialitySuccessAction(
            defaultConfidentiality: defaultConfidentiality,
            patientId: patientId,
          ),
        );
      }).onError((_) {
        store.dispatch(ProcessFetchDefaultConfidentialityErrorAction());
      });
    }
  }

  Future<void> _onFetchConfidentialiteBeforeNextAction(
    Store<EnsState> store,
    FetchConfidentialiteBeforeNextAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final defaultConfidentialityState = store.state.documentsState.defaultConfidentialityState;
    final defaultConfidentiality = defaultConfidentialityState.defaultConfidentiality;
    if (defaultConfidentialityState.isSuccessWithData) {
      action.onConfidentialityLoaded(defaultConfidentiality!);
    } else {
      final result = await documentsRepository.getDefaultConfidentiality(patientId);
      result.onSuccess((successResult) {
        action.onConfidentialityLoaded(successResult);
      }).onError((error) {
        store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
      });
      result.onSuccess((defaultConfidentiality) {
        store.dispatch(
          ProcessFetchDefaultConfidentialitySuccessAction(
            defaultConfidentiality: defaultConfidentiality,
            patientId: patientId,
          ),
        );
      }).onError((_) {
        store.dispatch(ProcessFetchDefaultConfidentialityErrorAction());
      });
    }
  }

  Future<void> _onUpdateDefaultConfidentialityForAllDocumentsAction(
    Store<EnsState> store,
    UpdateDefaultConfidentialityForAllDocumentsAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final String patientId = UserSelectors.getPatientId(store.state);
    store.dispatch(const DisplaySnackbarAction.loading('Modification en cours\u2026'));

    final result = await documentsRepository.updateDefaultConfidentialityAndUpdateConfidentialityForAllDocuments(
      patientId,
      action.defaultConfidentiality,
    );
    result.onSuccess((successResult) {
      if (action.defaultConfidentiality == DefaultConfidentiality.MASKED) {
        store.dispatch(const DisplaySnackbarAction.success('Tous vos documents sont masqués.'));
      } else {
        store.dispatch(const DisplaySnackbarAction.success('Tous vos documents sont visibles.'));
      }
      store.dispatch(
        ProcessUpdateDefaultConfidentialityForAllDocumentsSuccessAction(
          defaultConfidentiality: action.defaultConfidentiality,
          patientId: patientId,
        ),
      );
      store.dispatch(FetchDocumentsAction(force: true));
    }).onError((domainError) {
      store.dispatch(ProcessUpdateDefaultConfidentialityForAllDocumentsErrorAction());
      if (domainError == DocumentsDomainError.NOT_APPLIED_FOR_ALL_DOCS) {
        final String masked = action.defaultConfidentiality == DefaultConfidentiality.MASKED ? 'masqués' : 'démasqués';
        store.dispatch(
          DisplaySnackbarAction.info(
            'Certains documents n’ont pas pu être $masked. Il est possible de modifier leur confidentialité depuis la rubrique “Documents de santé”.',
          ),
        );
        store.dispatch(FetchDocumentsAction(force: true));
      } else {
        store.dispatch(
          const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE),
        );
      }
    });
  }

  Future<void> _onAddDocumentPageAction(
    Store<EnsState> store,
    AddDocumentPageAction action,
    NextDispatcher next,
  ) async {
    final multiPagesListState = store.state.documentsState.multiPagesListState;
    final List<EnsFileImageContent> newList = [];
    final List<EnsFileImageContent> actualPages =
        (multiPagesListState is MultiPagesListWithPages) ? multiPagesListState.pages : [];

    next(action);

    newList.addAll(actualPages);
    newList.addAll(
      action.ensFileContents
          .map(
            (ensFileContent) => EnsFileImageContent(
              originalImage: OriginalImage(
                fileContent: ensFileContent,
                decodedContent: base64.decode(ensFileContent.base64Content.replaceAll(RegExp(r'\s+'), '')),
              ),
              isScannedImage: false,
            ),
          )
          .toList(),
    );

    final result = await filePreprocessor.processMultiDocumentEdition(newList);
    if (result is MultidocProcessingResultError) {
      if (result.errorType == MultidocErrorType.GENERIC) {
        store.dispatch(
          const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE),
        );
      }
    }
    store.dispatch(ProcessUpdatedDocumentPageAction(result));
  }

  Future<void> _onAddScannedDocumentPageAction(
    Store<EnsState> store,
    AddScannedDocumentPageAction action,
    NextDispatcher next,
  ) async {
    final multiPagesListState = store.state.documentsState.multiPagesListState;
    final List<EnsFileImageContent> newList = [];
    final List<EnsFileImageContent> actualPages =
        (multiPagesListState is MultiPagesListWithPages) ? multiPagesListState.pages : [];

    next(action);

    newList.addAll(actualPages);
    newList.addAll(
      action.originalImages
          .map(
            (originalImage) => EnsFileImageContent(
              originalImage: OriginalImage(
                fileContent: originalImage.fileContent,
                decodedContent: base64.decode(originalImage.fileContent.base64Content.replaceAll(RegExp(r'\s+'), '')),
                localData: originalImage.localData,
              ),
              isScannedImage: true,
            ),
          )
          .toList(),
    );

    final result = await filePreprocessor.processMultiDocumentEdition(newList);
    if (result is MultidocProcessingResultError) {
      if (result.errorType == MultidocErrorType.GENERIC) {
        store.dispatch(
          const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE),
        );
      }
    }
    store.dispatch(ProcessUpdatedDocumentPageAction(result));
  }

  Future<void> _onValidateMultiPageAction(
    Store<EnsState> store,
    ValidateMultiPageAction action,
    NextDispatcher next,
  ) async {
    next(action);
    if (action.pages.length == 1) {
      final originalFileContent = action.pages.first.originalImage.fileContent;
      final compressedBase64 = action.pages.first.isBlackAndWhiteSelected
          ? action.pages.first.blackAndWhiteImage?.base64Content
          : action.pages.first.compressedImage?.base64Content ??
              action.pages.first.originalImage.fileContent.base64Content;

      final compressedFileContent = EnsFileContent(
        filename: originalFileContent.filename,
        base64Content: compressedBase64 ?? '',
        mimeType: action.pages.first.isCompressed ? MimeType.JPEG.label : originalFileContent.mimeType,
      );

      store.dispatch(
        ProcessValidatedMultiPageAction(action.pages, MultiPageGenerationResult.success(compressedFileContent)),
      );
    } else {
      final finalPages = action.pages
          .map(
            (page) => page.isBlackAndWhiteSelected
                ? page.blackAndWhiteImage?.decodedContent
                : page.compressedImage?.decodedContent ?? page.originalImage.decodedContent,
          )
          .nonNulls
          .toList();

      final result = await pdfGenerator.toPdf(finalPages);
      if (result is MultiPageGenerationError) {
        store.dispatch(
          const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE),
        );
      }
      store.dispatch(ProcessValidatedMultiPageAction(action.pages, result));
    }
  }

  Future<void> _onDeletePageAction(Store<EnsState> store, DeleteDocumentPageAction action, NextDispatcher next) async {
    next(action);
    final MultiPagesListState currentMultiPagesState = store.state.documentsState.multiPagesListState;
    if (currentMultiPagesState is MultiPagesListWithPages) {
      final List<EnsFileImageContent> newList = currentMultiPagesState.pages.toList();
      if (action.indexToDelete < newList.length && action.indexToDelete >= 0) {
        newList.removeAt(action.indexToDelete);
      }

      final bases64 = newList.map((e) => e.compressedImage?.base64Content).whereType<String>().toList();

      if (filePreprocessor.sumOfSizeIsUnderMaxSize(bases64)) {
        store.dispatch(ProcessUpdatedDocumentPageAction(MultidocProcessingResult.success(newList)));
      } else {
        store.dispatch(
          ProcessUpdatedDocumentPageAction(MultidocProcessingResult.error(MultidocErrorType.TOO_BIG, newList)),
        );
      }
    }
  }

  Future<void> _onTransformToBlackAndWhitePageAction(
    Store<EnsState> store,
    TransformToBlackAndWhitePageAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final MultiPagesListState currentMultiPagesState = store.state.documentsState.multiPagesListState;
    if (currentMultiPagesState is MultiPagesListWithPages) {
      final List<EnsFileImageContent> newList = List.from(currentMultiPagesState.pages);
      if (action.indexToTransform < newList.length && action.indexToTransform >= 0) {
        final currentEnsFileImageContent = newList[action.indexToTransform];

        if (currentEnsFileImageContent.isBlackAndWhiteSelected) {
          newList[action.indexToTransform] = currentEnsFileImageContent.clone(isBlackAndWhiteSelected: false);
        } else if (currentEnsFileImageContent.blackAndWhiteImage != null) {
          newList[action.indexToTransform] = currentEnsFileImageContent.clone(isBlackAndWhiteSelected: true);
        } else {
          final value = await documentsRepository.getBlackAndWhiteBase64(newList[action.indexToTransform]);
          value.onSuccess((successResult) {
            newList[action.indexToTransform] = currentEnsFileImageContent.clone(
              blackAndWhiteImage: CompressedImage(
                base64Content: successResult,
                decodedContent: base64.decode(successResult.replaceAll(RegExp(r'\s+'), '')),
              ),
              isBlackAndWhiteSelected: true,
            );
          }).onError((error) {
            store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
          });
        }
      }
      store.dispatch(ProcessUpdatedDocumentPageAction(MultidocProcessingResult.success(newList)));
    }
  }

  Future<void> _onReCropAction(Store<EnsState> store, ReCropAction action, NextDispatcher next) async {
    final MultiPagesListState currentMultiPagesState = store.state.documentsState.multiPagesListState;
    next(action);

    if (currentMultiPagesState is MultiPagesListWithPages) {
      final List<EnsFileImageContent> newList = List.from(currentMultiPagesState.pages);
      final currentImage = currentMultiPagesState.pages[action.indexToTransform];

      scannerBridgeWrapper.initScannerReCropListener(currentImage, (croppedImage) {
        newList[action.indexToTransform] = croppedImage;
        store.dispatch(ProcessUpdatedDocumentPageAction(MultidocProcessingResult.success(newList)));
      });

      if (currentMultiPagesState.pages[action.indexToTransform].isScannedImage) {
        scannerBridgeWrapper.getScannedDocuments(imageLocalData: currentImage.originalImage.localData);
      } else {
        final base64content = currentImage.originalImage.fileContent.base64Content;
        scannerBridgeWrapper.getCroppingDocument(base64content);
      }
    }
  }

  Future<void> _onCreateDossierAction(Store<EnsState> store, CreateDossierAction action, NextDispatcher next) async {
    final patientId = UserSelectors.getPatientId(store.state);
    next(action);
    final result = await documentsRepository.createDossier(patientId: patientId, folderName: action.name);
    result.onSuccess((successResult) {
      store.dispatch(_ProcessCreateDossierSuccessAction(successResult));
      DelayHelper.displayWithDelay(
        callback: () => store.dispatch(const DisplaySnackbarAction.success('Dossier créé')),
      );
      DelayHelper.unhighlight(callback: () => store.dispatch(UnhighlightDossierAction()));
      store.dispatch(AddSuccessfulRatingAction());
    }).onError((domainError) {
      store.dispatch(_ProcessCreateDossierErrorAction(domainError: domainError));
    });
  }

  Future<void> _onRenameDossierAction(Store<EnsState> store, RenameDossierAction action, NextDispatcher next) async {
    next(action);
    final result = await documentsRepository.renameDossier(
      folderId: action.dossierId,
      folderName: action.dossierName,
      patientId: UserSelectors.getPatientId(store.state),
    );
    result.onSuccess((successResult) {
      store.dispatch(_ProcessRenameDossierSuccessAction(action.dossierId, action.dossierName));
      store.dispatch(const DisplaySnackbarAction.success('Dossier renommé'));
    }).onError((domainError) {
      store.dispatch(_ProcessRenameDossierErrorAction(domainError: domainError));
    });
  }

  Future<void> _onUpdateDocumentConfidentialitesAction(
    Store<EnsState> store,
    UpdateDocumentConfidentialitesAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final result = await documentsRepository.updateDocumentConfidentialityOnly(
      patientId,
      action.docId,
      action.newConfidentialites,
    );
    result.onSuccess((successResult) {
      store.dispatch(ProcessDocumentUpdateSuccessAction());
      store.dispatch(const DisplaySnackbarAction.success('Confidentialité modifiée'));
      store.dispatch(
        ProcessUpdatedDocumentConfidentialitesAction(
          docId: action.docId,
          newConfidentialites: action.newConfidentialites,
        ),
      );
    }).onError((error) {
      store.dispatch(ProcessDocumentUpdateErrorAction());
      store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
    });
  }

  Future<void> _onMoveDocumentsAction(Store<EnsState> store, MoveDocumentsAction action, NextDispatcher next) async {
    next(action);
    store.dispatch(const DisplaySnackbarAction.loading('Déplacement en cours'));
    final targetFolder = DossiersSelectors.getDossierById(store.state, action.targetFolderId);
    final patientId = UserSelectors.getPatientId(store.state);
    final result = await documentsRepository.moveDocuments(
      patientId,
      action.documentsIds,
      targetFolder == null ? null : action.targetFolderId,
    );

    if (result is RequestResultSuccess) {
      String successMsg;
      if (targetFolder == null) {
        successMsg = Intl.plural(
          action.documentsIds.length,
          one: '1 document déplacé',
          other: '${action.documentsIds.length} documents déplacés',
        );
      } else {
        final firstDocumentTitle =
            store.state.documentsState.documentsListState.documents[action.documentsIds.first]?.title;
        successMsg = Intl.plural(
          action.documentsIds.length,
          one:
              '${firstDocumentTitle != null ? '”$firstDocumentTitle”' : '1 document'} déplacé vers “${targetFolder.name}”',
          other: '${action.documentsIds.length} documents déplacés vers “${targetFolder.name}”',
        );
      }
      store.dispatch(DisplaySnackbarAction.success(successMsg));
      store.dispatch(FetchDocumentsAction(force: true));
      store.dispatch(InitSelectedDocumentsAction(selectedDocumentsIds: []));
      store.dispatch(ProcessMoveDocumentsSuccessAction());
    } else {
      store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
      store.dispatch(ProcessMoveDocumentsErrorAction());
    }
  }

  Future<void> _onShareDocumentAction(Store<EnsState> store, ShareDocumentAction action, NextDispatcher next) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final isMainProfile = store.state.userState.isMainProfile;
    final result = await documentsInteractor.shareDocument(
      patientId: patientId,
      documentId: action.documentId,
      documentName: action.documentName,
      isMainProfile: isMainProfile,
    );
    if (result.shareStatus == ShareResultStatus.success) {
      store.dispatch(ProcessShareDocumentSuccessAction());
      DelayHelper.displayWithDelay(
        callback: () => store.dispatch(TriggerRecommanderAppAction(RecommanderAppActionTriggeredFrom.SHARE_DOCUMENT)),
      );
    } else if (result.shareStatus == ShareResultStatus.dismissed) {
      store.dispatch(ProcessShareDocumentDismissedAction());
    } else if (result.shareStatus == ShareResultStatus.unavailable) {
      store.dispatch(DisplaySnackbarAction.error(result.errorMessage ?? GENERIC_ERROR_MESSAGE));
      store.dispatch(ProcessShareDocumentErrorAction());
    }
  }

  Future<void> _onShareDocumentContentAction(
    Store<EnsState> store,
    ShareDocumentContentAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final result = await documentsInteractor.shareDocumentContent(
      document: action.document,
      documentName: action.documentName,
    );
    if (result == ShareResultStatus.success) {
      store.dispatch(ProcessShareDocumentSuccessAction());
      DelayHelper.displayWithDelay(
        callback: () => store.dispatch(TriggerRecommanderAppAction(RecommanderAppActionTriggeredFrom.SHARE_DOCUMENT)),
      );
    } else if (result == ShareResultStatus.dismissed) {
      store.dispatch(ProcessShareDocumentDismissedAction());
    } else if (result == ShareResultStatus.unavailable) {
      store.dispatch(ProcessShareDocumentErrorAction());
    }
  }

  Future<void> _onDeleteDossierAction(Store<EnsState> store, DeleteDossierAction action, NextDispatcher next) async {
    final patientId = UserSelectors.getPatientId(store.state);
    next(action);
    store.dispatch(const DisplaySnackbarAction.loading('Suppression du dossier...'));
    final result = await documentsRepository.deleteDossier(patientId: patientId, folderId: action.dossierId);
    result.onSuccess((successResult) {
      store.dispatch(_ProcessDeleteDossierSuccessAction(successResult));
      store.dispatch(const DisplaySnackbarAction.success('Dossier supprimé.'));
    }).onError((error) {
      store.dispatch(const DisplaySnackbarAction.error('Erreur lors de la suppression du dossier.'));
    });
  }

  Future<void> _onFetchShouldDisplayCreateAvisArretDeTravailDossierBottomSheetAction(
    Store<EnsState> store,
    FetchShouldDisplayCreateAvisArretDeTravailDossierBottomSheetAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final shouldDisplayCreateAvisArretDeTravailDossierBottomSheet =
        await secureStorageRepository.readShouldDisplayCreateAvisArretDeTravailDossierBottomSheet(patientId);
    store.dispatch(
      _ProcessFetchShouldDisplayCreateAvisArretDeTravailDossierBottomSheetAction(
        shouldDisplayCreateAvisArretDeTravailDossierBottomSheet,
      ),
    );
  }

  Future<void> _onSetAlreadyDisplayCreateAvisArretDeTravailDossierBottomSheetAction(
    Store<EnsState> store,
    SetAlreadyDisplayCreateAvisArretDeTravailDossierBottomSheetAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    await secureStorageRepository.writeShouldDisplayCreateAvisArretDeTravailDossierBottomSheet(patientId, false);
  }

  Future<void> _onSetDocumentEpingleStatusAction(
    Store<EnsState> store,
    SetDocumentEpingleStatusAction action,
    NextDispatcher next,
  ) async {
    if (store.state.documentsState.setDocumentEpingleStatus.isLoading()) {
      next(action);
      return;
    }
    next(action);
    store.dispatch(
      DisplaySnackbarAction.loading(
        action.newDocumentEpingleStatus ? 'Épinglage du document en cours' : 'Épingle en cours de suppression',
      ),
    );
    final patientId = UserSelectors.getPatientId(store.state);
    final result = await documentsRepository.setDocumentEpingleStatus(
      patientId,
      action.documentId,
      action.newDocumentEpingleStatus,
    );
    result.onSuccess((successResult) {
      store.dispatch(
        DisplaySnackbarAction.success(action.newDocumentEpingleStatus ? 'Épingle ajoutée' : 'Épingle retirée'),
      );
      store.dispatch(ProcessSetDocumentEpingleStatusSuccessAction(action.documentId, action.newDocumentEpingleStatus));
    }).onError((_) {
      store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
      store.dispatch(ProcessSetDocumentEpingleStatusErrorAction());
    });
  }

  Future<void> _onDownloadFileAction(Store<EnsState> store, DownloadFileAction action, NextDispatcher next) async {
    next(action);
    final exportResult = await fileStorage.exportFile(action.file);
    if (exportResult is FileExportationSuccess) {
      if (Platform.isAndroid) {
        store.dispatch(const DisplaySnackbarAction.success('Document téléchargé.'));
      } else {
        store.dispatch(const HideSnackBarAction());
      }
    }
  }
}
