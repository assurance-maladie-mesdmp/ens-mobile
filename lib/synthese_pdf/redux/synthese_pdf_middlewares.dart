/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'synthese_pdf_redux.dart';

class SynthesePdfMiddlewares {
  final ISyntheseQuestionnaireAgesClesRepository syntheseQuestionnaireAgesClesRepository;
  final ISynthesePmlRepository synthesePdfRepository;
  final FileStorage fileStorage;
  final IDocumentsRepository documentsRepository;

  SynthesePdfMiddlewares._(
    this.syntheseQuestionnaireAgesClesRepository,
    this.synthesePdfRepository,
    this.fileStorage,
    this.documentsRepository,
  );

  static List<Middleware<EnsState>> create(
    ISyntheseQuestionnaireAgesClesRepository syntheseQuestionnaireAgesClesRepository,
    ISynthesePmlRepository synthesePmlRepository,
    FileStorage fileStorage,
    IDocumentsRepository documentsRepository,
  ) {
    final middlewares = SynthesePdfMiddlewares._(
      syntheseQuestionnaireAgesClesRepository,
      synthesePmlRepository,
      fileStorage,
      documentsRepository,
    );
    return [
      TypedMiddleware<EnsState, FetchSynthesePMLAction>(middlewares._onFetchSynthesePMLAction).call,
      TypedMiddleware<EnsState, FetchSyntheseQuestionnaireAction>(middlewares._onFetchSyntheseQuestionnaireAction).call,
      TypedMiddleware<EnsState, ExportSynthesePdfAction>(middlewares._onExportSynthesePdf).call,
      TypedMiddleware<EnsState, UploadSynthesePmlPdfAction>(middlewares._onUploadSynthesePmlPdfAction).call,
      TypedMiddleware<EnsState, UploadSyntheseQuestionnairePdfAction>(
        middlewares._onUploadSyntheseQuestionnairePdfAction,
      ).call,
      TypedMiddleware<EnsState, UploadSynthesePdfWithConfidentialiteChargeeAction>(
        middlewares._onUploadSynthesePdfWithConfidentialiteChargee,
      ).call,
      TypedMiddleware<EnsState, ExportSyntheseRubriquePmlAction>(middlewares._onExportRubriquePdf).call,
    ];
  }

  Future<void> _onFetchSynthesePMLAction(
    Store<EnsState> store,
    FetchSynthesePMLAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final result = await synthesePdfRepository.getSynthesePml(patientId);
    result.onSuccess((successResult) {
      store.dispatch(_ProcessFetchSynthesePMLSuccessAction(successResult));
    }).onError((error) {
      store.dispatch(_ProcessFetchSynthesePMLErrorAction());
    });
  }

  Future<void> _onFetchSyntheseQuestionnaireAction(
    Store<EnsState> store,
    FetchSyntheseQuestionnaireAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final questionnaireState = store.state.questionnaireAgesClesState;
    final code = action.code ?? questionnaireState.questionnaireVersionState.questionnaireCode;
    final version = action.version ?? questionnaireState.questionnaireVersionState.questionnaireLastVersionOrVersion;
    final resultQuiz = await syntheseQuestionnaireAgesClesRepository.getSyntheseQuestionnaireAgesCles(
      patientId: patientId,
      questionnaireCode: code,
      questionnaireVersion: version,
    );

    resultQuiz.onSuccess((successResult) {
      store.dispatch(SaveResponseIdAction(successResult.responseId));
      store.dispatch(_ProcessFetchSyntheseQuestionnaireSuccessAction(successResult.synthese));
    }).onError((error) {
      store.dispatch(_ProcessFetchSyntheseQuestionnaireErrorAction());
    });
  }

  Future<void> _onExportSynthesePdf(Store<EnsState> store, ExportSynthesePdfAction action, NextDispatcher next) async {
    next(action);
    final synthesePml = action.synthese;
    final exportResult = await fileStorage.exportSynthese(
      synthesePml,
      '${action.filename}.${MimeTypeUtils.fromLabel(synthesePml.mimeType).fileExtension}',
    );
    if (exportResult is FileExportationSuccess) {
      if (Platform.isAndroid) {
        store.dispatch(const DisplaySnackbarAction.success('Téléchargement de la synthèse terminé'));
      } else {
        store.dispatch(const HideSnackBarAction());
      }
      DelayHelper.displayWithDelay(
        callback: () => store.dispatch(
          TriggerRecommanderAppAction(RecommanderAppActionTriggeredFrom.DOWNLOAD_DOCUMENT),
        ),
      );
    }
  }

  Future<void> _onExportRubriquePdf(
    Store<EnsState> store,
    ExportSyntheseRubriquePmlAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    store.dispatch(const DisplaySnackbarAction.loading('Téléchargement en cours...'));
    synthesePdfRepository.getSynthesePml(patientId, rubrique: action.pmlSection).then((value) {
      value.onSuccess((successResult) async {
        store.dispatch(const HideSnackBarAction());
        final exportResult = await fileStorage.exportSynthese(
          successResult,
          '${successResult.filename}.${MimeTypeUtils.fromLabel(successResult.mimeType).fileExtension}',
        );
        if (exportResult is FileExportationSuccess) {
          DelayHelper.displayWithDelay(
            callback: () => store.dispatch(
              TriggerRecommanderAppAction(RecommanderAppActionTriggeredFrom.DOWNLOAD_DOCUMENT),
            ),
          );
        }
      }).onError((error) {
        store.dispatch(const DisplaySnackbarAction.error('Une erreur est survenue.'));
      });
    });
  }

  Future<void> _onUploadSyntheseQuestionnairePdfAction(
    Store<EnsState> store,
    UploadSyntheseQuestionnairePdfAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final currentQuestionnaireDeSanteDocument =
        DocumentsSelectors.getQuestionnaireDeSanteDocument(store.state, action.questionnaireCode);
    if (currentQuestionnaireDeSanteDocument != null) {
      final newFileName = _getFileNameForQuestionnaire(store.state, action.questionnaireCode);
      _updateSynthese(
        store,
        oldDocument: currentQuestionnaireDeSanteDocument,
        newFileName: newFileName,
        newEnsFileContent: action.ensFileContent,
      );
    } else {
      _createSynthese(
        store: store,
        isForcedToVisible: action.isForcedToVisible,
        ensFileContent: action.ensFileContent,
        questionnaireCode: action.questionnaireCode,
      );
    }
  }

  Future<void> _onUploadSynthesePmlPdfAction(
    Store<EnsState> store,
    UploadSynthesePmlPdfAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final currentSynthesePmlDocument = DocumentsSelectors.getSynthesePmlDocument(store.state);
    if (currentSynthesePmlDocument != null) {
      final newFileName = _getFileNameForSynthesePml(store.state);
      _updateSynthese(
        store,
        oldDocument: currentSynthesePmlDocument,
        newFileName: newFileName,
        newEnsFileContent: action.ensFileContent,
      );
    } else {
      _createSynthese(
        store: store,
        isForcedToVisible: action.isForcedToVisible,
        ensFileContent: action.ensFileContent,
      );
    }
  }

  void _createSynthese({
    required Store<EnsState> store,
    bool? isForcedToVisible,
    required EnsFileContent ensFileContent,
    QuestionnaireCode? questionnaireCode,
  }) {
    final defaultConfidentialityState = store.state.documentsState.defaultConfidentialityState;
    if (defaultConfidentialityState.isSuccessWithData) {
      final defaultConfidentiality = defaultConfidentialityState.defaultConfidentiality!;
      _displayBottomSheetOrUploadSynthese(
        store,
        isForcedToVisible,
        ensFileContent,
        defaultConfidentiality,
        questionnaireCode,
      );
    } else {
      store.dispatch(
        FetchConfidentialiteBeforeNextAction(
          (confidentialite) {
            _displayBottomSheetOrUploadSynthese(
              store,
              isForcedToVisible,
              ensFileContent,
              confidentialite,
              questionnaireCode,
            );
          },
        ),
      );
    }
  }

  Future<void> _updateSynthese(
    Store<EnsState> store, {
    required EnsDocument oldDocument,
    required String newFileName,
    required EnsFileContent newEnsFileContent,
  }) async {
    store.dispatch(const UpdateSyntheseToDocsStatusAction(AllPurposesStatus.LOADING));
    final patientId = UserSelectors.getPatientId(store.state);

    final editionSyntheseData = DocumentEditionUpdateData(
      id: oldDocument.id,
      ensFileContent: newEnsFileContent,
      name: newFileName,
      documentDate: clock.now(),
      category: oldDocument.categorie,
      confidentialites: oldDocument.confidentialites,
      uploadDate: clock.now(),
    );

    final result = await documentsRepository.updateDocumentData(patientId, editionSyntheseData);
    result.onSuccess((_) {
      store.dispatch(const FetchRecommandationsAction(force: true));
      store.dispatch(FetchDocumentsAction(force: true));
      store.dispatch(const UpdateSyntheseToDocsStatusAction(AllPurposesStatus.SUCCESS));
      store.dispatch(InitDocumentDisplayAction(documentId: oldDocument.id, force: true));
      store.dispatch(ProcessUpdateSyntheseAction(id: oldDocument.id, date: clock.now()));
      store.dispatch(const DisplaySnackbarAction.success('Synthèse enregistrée dans les documents de santé'));
    }).onError((domainError) {
      store.dispatch(const UpdateSyntheseToDocsStatusAction(AllPurposesStatus.ERROR));
      if (domainError.errorMessage != null) {
        store.dispatch(DisplaySnackbarAction.error(domainError.errorMessage!));
      }
    });
  }

  void _displayBottomSheetOrUploadSynthese(
    Store<EnsState> store,
    bool? isForcedToVisible,
    EnsFileContent synthesePml,
    DefaultConfidentiality confidentialite,
    QuestionnaireCode? questionnaireCode,
  ) {
    if (isForcedToVisible == null && confidentialite == DefaultConfidentiality.MASKED) {
      store.dispatch(DisplayConfidentialiteBottomSheetAction(true));
    } else {
      store.dispatch(
        UploadSynthesePdfWithConfidentialiteChargeeAction(
          synthesePml,
          isForcedToVisible ?? false ? DefaultConfidentiality.VISIBLE : confidentialite,
          questionnaireCode,
        ),
      );
    }
  }

  Future<void> _onUploadSynthesePdfWithConfidentialiteChargee(
    Store<EnsState> store,
    UploadSynthesePdfWithConfidentialiteChargeeAction action,
    NextDispatcher next,
  ) async {
    next(action);

    store.dispatch(const UpdateSyntheseToDocsStatusAction(AllPurposesStatus.LOADING));

    const Clock clock = Clock();
    final fileName = action.questionnaireCode != null
        ? _getFileNameForQuestionnaire(store.state, action.questionnaireCode!)
        : _getFileNameForSynthesePml(store.state);
    final synthese = DocumentEditionCreation(
      ensFileContent: action.ensFileContent,
      name: fileName,
      documentDate: clock.now(),
      category: action.questionnaireCode == null
          ? EnsDocumentCategorie.syntheseMedicale
          : EnsDocumentCategorie.questionnaireSante,
      confidentialites: [_getConfidentialite(action.defaultConfidentiality)],
      uploadDate: clock.now(),
    );

    final patientId = UserSelectors.getPatientId(store.state);
    final result = await documentsRepository.uploadDocument(patientId, synthese);

    if (result is UploadDocumentResultSuccess) {
      store.dispatch(const FetchRecommandationsAction(force: true));
      store.dispatch(const UpdateSyntheseToDocsStatusAction(AllPurposesStatus.SUCCESS));
      store.dispatch(FetchDocumentsAction(force: true));
      store.dispatch(const DisplaySnackbarAction.success('Synthèse enregistrée dans les documents de santé'));
    } else if (result is UploadDocumentResultError) {
      store.dispatch(const UpdateSyntheseToDocsStatusAction(AllPurposesStatus.ERROR));
      store.dispatch(const DisplaySnackbarAction.error('Une erreur est survenue.'));
    }
  }

  String _getFileNameForSynthesePml(EnsState state) {
    final String firstName = UserSelectors.getFirstName(state) ?? '';
    final String lastName = UserSelectors.getLastName(state) ?? '';
    return SyntheseDocumentViewModelHelper.preparePmlFileName(firstName, lastName);
  }

  String _getFileNameForQuestionnaire(EnsState state, QuestionnaireCode questionnaireCode) {
    final String firstName = UserSelectors.getFirstName(state) ?? '';
    final String lastName = UserSelectors.getLastName(state) ?? '';
    return SyntheseDocumentViewModelHelper.prepareQuestionnaireFileName(firstName, lastName, questionnaireCode);
  }

  KindOfConfidentiality _getConfidentialite(DefaultConfidentiality defaultConfidentiality) {
    switch (defaultConfidentiality) {
      case DefaultConfidentiality.VISIBLE:
        return KindOfConfidentiality.PATIENT_AND_PS;
      case DefaultConfidentiality.MASKED:
        return KindOfConfidentiality.PATIENT_ONLY;
    }
  }
}
