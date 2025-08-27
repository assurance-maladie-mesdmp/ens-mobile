/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'questionnaire_ages_cles_redux.dart';

class QuestionnaireAgesClesReducers {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, FetchQuestionnaireAgesClesAction>(
          QuestionnaireAgesClesReducers._onFetchQuestionnaireAgesClesAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchQuestionnaireAgesClesSuccessAction>(
          QuestionnaireAgesClesReducers._onProcessFetchQuestionnaireAgesClesSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchQuestionnaireAgesClesErrorAction>(
          QuestionnaireAgesClesReducers._onProcessFetchQuestionnaireAgesClesErrorAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchQuestionnaireAgesClesResponsesSuccessAction>(
          QuestionnaireAgesClesReducers._onProcessFetchQuestionnaireAgesClesResponsesSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchQuestionnaireAgesClesResponsesErrorAction>(
          QuestionnaireAgesClesReducers._onProcessFetchQuestionnaireAgesClesResponsesErrorAction,
        ).call,
        TypedReducer<EnsState, _ProcessGoToQuestionAction>(
          QuestionnaireAgesClesReducers._onProcessGoToQuestionAction,
        ).call,
        TypedReducer<EnsState, UpdateCurrentQuestionAnswerAction>(
          QuestionnaireAgesClesReducers._onUpdateCurrentQuestionAnswerAction,
        ).call,
        TypedReducer<EnsState, ResetQuestionnaireAgesClesAction>(
          QuestionnaireAgesClesReducers._onResetQuestionnaireAgesClesAction,
        ).call,
        TypedReducer<EnsState, SaveDraftQuestionnaireAgesClesAction>(
          QuestionnaireAgesClesReducers._onSaveDraftQuestionnaireAgesClesAction,
        ).call,
        TypedReducer<EnsState, FinalizeQuestionnaireAgesClesAction>(
          QuestionnaireAgesClesReducers._onFinalizeQuestionnaireAgesClesAction,
        ).call,
        TypedReducer<EnsState, _ProcessSaveQuestionnaireAgesClesSuccessAction>(
          QuestionnaireAgesClesReducers._onProcessSaveQuestionnaireAgesClesSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessSaveQuestionnaireAgesClesErrorAction>(
          QuestionnaireAgesClesReducers._onProcessSaveQuestionnaireAgesClesErrorAction,
        ).call,
        TypedReducer<EnsState, _ProcessFinalizeQuestionnaireAgesClesSuccessAction>(
          QuestionnaireAgesClesReducers._onProcessFinalizeQuestionnaireAgesClesSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessFinalizeQuestionnaireAgesClesErrorAction>(
          QuestionnaireAgesClesReducers._onProcessFinalizeQuestionnaireAgesClesErrorAction,
        ).call,
        TypedReducer<EnsState, InitSynthesePdfStateAction>(
          QuestionnaireAgesClesReducers._onInitSynthesePdfStateAction,
        ).call,
        TypedReducer<EnsState, SaveResponseIdAction>(
          QuestionnaireAgesClesReducers._onSaveResponseIdAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchVersionQuestionnaireSuccessAction>(
          QuestionnaireAgesClesReducers._onProcessFetchVersionQuestionnaireSuccessAction,
        ).call,
        TypedReducer<EnsState, FetchVersionQuestionnaireAction>(
          QuestionnaireAgesClesReducers._onFetchVersionQuestionnaireAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchVersionQuestionnaireErrorAction>(
          QuestionnaireAgesClesReducers._onProcessFetchVersionQuestionnaireErrorAction,
        ).call,
        TypedReducer<EnsState, NewVersionQuestionnaireEnCoursAction>(
          QuestionnaireAgesClesReducers._onNewVersionQuestionnaireEnCoursAction,
        ).call,
        TypedReducer<EnsState, ReInitNewVersionQuestionnaireAction>(
          QuestionnaireAgesClesReducers._onReInitNewVersionQuestionnaireAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchedReponseIdToDelete>(
          QuestionnaireAgesClesReducers._onProcessFetchedReponseIdToDelete,
        ).call,
        TypedReducer<EnsState, ReInitVersionQuestionnaireStatusAction>(
          QuestionnaireAgesClesReducers._onReInitVersionQuestionnaireStatusAction,
        ).call,
        TypedReducer<EnsState, PreFillAnswerToQuestion>(
          QuestionnaireAgesClesReducers._onPreFillAnswerToQuestion,
        ).call,
        TypedReducer<EnsState, _ProcessSuccessDeleteQuestionnaireResponsesAction>(
          QuestionnaireAgesClesReducers._onProcessSuccessDeleteQuestionnaireResponsesAction,
        ).call,
      ];

  static EnsState _onFetchQuestionnaireAgesClesAction(EnsState state, FetchQuestionnaireAgesClesAction action) {
    final questionnaireAgesClesState = state.questionnaireAgesClesState;
    final newQuestionsState = questionnaireAgesClesState.questionsListState.isSuccessWithData &&
            !action.force &&
            questionnaireAgesClesState.questionnaireVersionState.isQuestionnaireVersionValid()
        ? state.questionnaireAgesClesState.questionsListState
        : const QuestionsListState(status: AllPurposesStatus.LOADING);

    return state.clone(
      questionnaireAgesClesState: state.questionnaireAgesClesState.clone(
        questionsListState: newQuestionsState,
        questionnaireAgesClesResponsesStatus: AllPurposesStatus.LOADING,
      ),
    );
  }

  static EnsState _onProcessFetchQuestionnaireAgesClesSuccessAction(
    EnsState state,
    _ProcessFetchQuestionnaireAgesClesSuccessAction action,
  ) {
    return state.clone(
      questionnaireAgesClesState: state.questionnaireAgesClesState.clone(
        questionsListState: QuestionsListState(
          status: AllPurposesStatus.SUCCESS,
          questionnaireAgesCles: action.questionnaire,
        ),
        questionnaireSaveState: const QuestionnaireSaveState(),
      ),
    );
  }

  static EnsState _onProcessFetchQuestionnaireAgesClesErrorAction(
    EnsState state,
    _ProcessFetchQuestionnaireAgesClesErrorAction action,
  ) {
    return state.clone(
      questionnaireAgesClesState: state.questionnaireAgesClesState.clone(
        questionsListState: const QuestionsListState(status: AllPurposesStatus.ERROR),
        questionnaireSaveState: const QuestionnaireSaveState(),
      ),
    );
  }

  static EnsState _onProcessFetchQuestionnaireAgesClesResponsesSuccessAction(
    EnsState state,
    _ProcessFetchQuestionnaireAgesClesResponsesSuccessAction action,
  ) {
    final userAnswers = action.userAnswers;
    final indexOfQuestionToDisplay = action.isEditMode ? 0 : userAnswers.questionToDisplayIndex;
    final answers = Map<String, List<String>>.of(userAnswers.answers);

    final newState = state.clone(
      questionnaireAgesClesState: state.questionnaireAgesClesState.clone(
        questionnaireAgesClesResponsesStatus: AllPurposesStatus.SUCCESS,
        questionnaireStatus: userAnswers.answers.isEmpty ? QuestionnaireStatus.NOT_STARTED : QuestionnaireStatus.DRAFT,
        responsesIdOptional: Optional.ofNullable(userAnswers.id),
        currentQuestionIndex: indexOfQuestionToDisplay,
        questionDejaVuEtPreRemplis: [indexOfQuestionToDisplay],
        lastUpdateDateOptional: Optional.ofNullable(userAnswers.lastUpdateDate),
      ),
    );

    final preFillAnswer = _getCurrentValueToPreFillForQuestionAtIndex(newState, indexOfQuestionToDisplay);
    if (preFillAnswer != null) {
      answers.addAll(preFillAnswer);
    }

    return newState.clone(
      questionnaireAgesClesState: newState.questionnaireAgesClesState.clone(answers: answers),
    );
  }

  static EnsState _onProcessFetchQuestionnaireAgesClesResponsesErrorAction(
    EnsState state,
    _ProcessFetchQuestionnaireAgesClesResponsesErrorAction action,
  ) {
    return state.clone(
      questionnaireAgesClesState: state.questionnaireAgesClesState.clone(
        questionnaireAgesClesResponsesStatus: AllPurposesStatus.ERROR,
      ),
    );
  }

  static EnsState _onProcessGoToQuestionAction(EnsState state, _ProcessGoToQuestionAction action) {
    return state.clone(
      questionnaireAgesClesState: state.questionnaireAgesClesState.clone(
        previousQuestionIndex: action.previousQuestionIndex,
        currentQuestionIndex: action.currentQuestionIndex,
      ),
    );
  }

  static EnsState _onUpdateCurrentQuestionAnswerAction(EnsState state, UpdateCurrentQuestionAnswerAction action) {
    final answers = state.questionnaireAgesClesState.answers;
    final Map<String, List<String>> newAnswers = Map.from(answers);
    final currentQuestion = QuestionnaireAgesClesSelectors.getCurrentQuestion(state);

    if (currentQuestion != null) {
      final currentQuestionCode = currentQuestion.code;
      if (answers.containsKey(currentQuestionCode)) {
        newAnswers.update(currentQuestionCode, (value) => action.answerCodes);
      } else {
        newAnswers.addEntries({currentQuestionCode: action.answerCodes}.entries);
      }
    }

    return state.clone(
      questionnaireAgesClesState: state.questionnaireAgesClesState.clone(
        questionnaireStatus: newAnswers.isEmpty ? QuestionnaireStatus.NOT_STARTED : QuestionnaireStatus.DRAFT,
        answers: newAnswers,
      ),
    );
  }

  static EnsState _onResetQuestionnaireAgesClesAction(EnsState state, ResetQuestionnaireAgesClesAction action) {
    return state.clone(
      questionnaireAgesClesState: state.questionnaireAgesClesState.clone(
        questionnaireStatus: QuestionnaireStatus.NOT_STARTED,
        previousQuestionIndex: -1,
        currentQuestionIndex: 0,
        answers: {},
        questionnaireSaveState: const QuestionnaireSaveState(),
      ),
    );
  }

  static EnsState _onProcessSaveQuestionnaireAgesClesSuccessAction(
    EnsState state,
    _ProcessSaveQuestionnaireAgesClesSuccessAction action,
  ) {
    return state.clone(
      questionnaireAgesClesState: state.questionnaireAgesClesState.clone(
        questionnaireSaveState: const QuestionnaireSaveState(status: AllPurposesStatus.SUCCESS, isDraft: true),
      ),
    );
  }

  static EnsState _onProcessSaveQuestionnaireAgesClesErrorAction(
    EnsState state,
    _ProcessSaveQuestionnaireAgesClesErrorAction action,
  ) {
    return state.clone(
      questionnaireAgesClesState: state.questionnaireAgesClesState.clone(
        questionnaireSaveState: const QuestionnaireSaveState(status: AllPurposesStatus.ERROR),
      ),
    );
  }

  static EnsState _onProcessFinalizeQuestionnaireAgesClesSuccessAction(
    EnsState state,
    _ProcessFinalizeQuestionnaireAgesClesSuccessAction action,
  ) {
    final newBilanDePreventionState =
        _updateBilanDePreventionAFaireOuEnCoursVersTermines(state, action.questionnaireCode);

    return state.clone(
      questionnaireAgesClesState: state.questionnaireAgesClesState.clone(
        questionnaireStatus: QuestionnaireStatus.FINISHED,
        questionnaireSaveState: const QuestionnaireSaveState(status: AllPurposesStatus.SUCCESS, isDraft: false),
      ),
      bilanDePreventionState: newBilanDePreventionState ?? state.bilanDePreventionState,
    );
  }

  static EnsState _onProcessFinalizeQuestionnaireAgesClesErrorAction(
    EnsState state,
    _ProcessFinalizeQuestionnaireAgesClesErrorAction action,
  ) {
    return state.clone(
      questionnaireAgesClesState: state.questionnaireAgesClesState.clone(
        questionnaireSaveState: const QuestionnaireSaveState(status: AllPurposesStatus.ERROR),
      ),
    );
  }

  static EnsState _onProcessSuccessDeleteQuestionnaireResponsesAction(
    EnsState state,
    _ProcessSuccessDeleteQuestionnaireResponsesAction action,
  ) {
    final BilanDePreventionState? newBilanDePreventionState =
        _updateBilanDePreventionTerminesEtEnCoursVersAFaireOuEmptyState(state, action.questionnaireCode);

    return state.clone(
      bilanDePreventionState: newBilanDePreventionState ?? state.bilanDePreventionState,
    );
  }

  static EnsState _onSaveDraftQuestionnaireAgesClesAction(
    EnsState state,
    SaveDraftQuestionnaireAgesClesAction action,
  ) {
    return _getQuestionnaireSaveStateSetToLoading(state);
  }

  static EnsState _onFinalizeQuestionnaireAgesClesAction(
    EnsState state,
    FinalizeQuestionnaireAgesClesAction action,
  ) {
    return _getQuestionnaireSaveStateSetToLoading(state);
  }

  static EnsState _getQuestionnaireSaveStateSetToLoading(EnsState state) {
    return state.clone(
      questionnaireAgesClesState: state.questionnaireAgesClesState.clone(
        questionnaireSaveState: const QuestionnaireSaveState(status: AllPurposesStatus.LOADING),
      ),
    );
  }

  static EnsState _onInitSynthesePdfStateAction(EnsState state, InitSynthesePdfStateAction action) {
    return state.clone(
      questionnaireAgesClesState: state.questionnaireAgesClesState.clone(
        questionnaireSaveState: const QuestionnaireSaveState(),
      ),
    );
  }

  static EnsState _onSaveResponseIdAction(EnsState state, SaveResponseIdAction action) {
    return state.clone(
      questionnaireAgesClesState: state.questionnaireAgesClesState.clone(
        responsesIdOptional: Optional.ofNullable(action.responseId),
      ),
    );
  }

  static EnsState _onProcessFetchVersionQuestionnaireSuccessAction(
    EnsState state,
    _ProcessFetchVersionQuestionnaireSuccessAction action,
  ) {
    return state.clone(
      questionnaireAgesClesState: state.questionnaireAgesClesState.clone(
        responsesIdOptional: Optional.ofNullable(action.questionnaireVersionReponse.responseId),
        questionnaireVersionState: state.questionnaireAgesClesState.questionnaireVersionState.clone(
          status: AllPurposesStatus.SUCCESS,
          questionnaireCode: action.questionnaireVersionReponse.code,
          questionnaireVersionOptional: Optional.ofNullable(action.questionnaireVersionReponse.savedVersion),
          questionnaireLastVersionOptional: Optional.ofNullable(action.questionnaireVersionReponse.newVersion),
        ),
      ),
    );
  }

  static EnsState _onFetchVersionQuestionnaireAction(EnsState state, FetchVersionQuestionnaireAction action) {
    return state.clone(
      questionnaireAgesClesState: state.questionnaireAgesClesState.clone(
        questionnaireVersionState: state.questionnaireAgesClesState.questionnaireVersionState.clone(
          status: AllPurposesStatus.LOADING,
        ),
      ),
    );
  }

  static EnsState _onProcessFetchVersionQuestionnaireErrorAction(
    EnsState state,
    _ProcessFetchVersionQuestionnaireErrorAction action,
  ) {
    return state.clone(
      questionnaireAgesClesState: state.questionnaireAgesClesState.clone(
        questionnaireVersionState: state.questionnaireAgesClesState.questionnaireVersionState.clone(
          status: AllPurposesStatus.ERROR,
        ),
      ),
    );
  }

  static EnsState _onNewVersionQuestionnaireEnCoursAction(EnsState state, NewVersionQuestionnaireEnCoursAction action) {
    return state.clone(
      questionnaireAgesClesState: state.questionnaireAgesClesState.clone(
        questionnaireVersionState: state.questionnaireAgesClesState.questionnaireVersionState.clone(
          newVersionEnCours: true,
        ),
      ),
    );
  }

  static EnsState _onReInitNewVersionQuestionnaireAction(EnsState state, ReInitNewVersionQuestionnaireAction action) {
    return state.clone(
      questionnaireAgesClesState: state.questionnaireAgesClesState.clone(
        questionnaireVersionState: state.questionnaireAgesClesState.questionnaireVersionState.clone(
          newVersionEnCours: false,
        ),
      ),
    );
  }

  static EnsState _onProcessFetchedReponseIdToDelete(EnsState state, _ProcessFetchedReponseIdToDelete action) {
    if (action.responseIdToDelete == null) {
      return state.clone(
        questionnaireAgesClesState: state.questionnaireAgesClesState.clone(
          questionsListState: const QuestionsListState(status: AllPurposesStatus.ERROR),
        ),
      );
    } else {
      return state.clone(
        questionnaireAgesClesState: state.questionnaireAgesClesState.clone(
          responsesIdToDeleteOptional: Optional.ofNullable(action.responseIdToDelete),
        ),
      );
    }
  }

  static EnsState _onReInitVersionQuestionnaireStatusAction(
    EnsState state,
    ReInitVersionQuestionnaireStatusAction action,
  ) {
    return state.clone(
      questionnaireAgesClesState: state.questionnaireAgesClesState.clone(
        questionnaireVersionState: state.questionnaireAgesClesState.questionnaireVersionState.clone(
          status: AllPurposesStatus.NOT_LOADED,
        ),
      ),
    );
  }

  static EnsState _onPreFillAnswerToQuestion(EnsState state, PreFillAnswerToQuestion action) {
    final Map<String, List<String>> answers = Map.of(state.questionnaireAgesClesState.answers);
    final List<int> questionDejaVuEtPreRemplis = List.of(state.questionnaireAgesClesState.questionDejaVuEtPreRemplis);

    if (!state.questionnaireAgesClesState.questionDejaVuEtPreRemplis.contains(action.questionIndex)) {
      final answer = _getCurrentValueToPreFillForQuestionAtIndex(state, action.questionIndex);
      if (answer != null) {
        answers.addAll(answer);
      }
    }
    questionDejaVuEtPreRemplis.add(action.questionIndex);

    return state.clone(
      questionnaireAgesClesState: state.questionnaireAgesClesState.clone(
        answers: answers,
        questionDejaVuEtPreRemplis: questionDejaVuEtPreRemplis,
      ),
    );
  }

  static Map<String, List<String>>? _getCurrentValueToPreFillForQuestionAtIndex(
    EnsState state,
    int currentQuestionIndex,
  ) {
    final questions = QuestionnaireAgesClesSelectors.getQuestions(state);
    final question = questions?[currentQuestionIndex];
    return question != null ? _getCurrentValueToPreFill(state, question.code) : null;
  }

  static Map<String, List<String>>? _getCurrentValueToPreFill(EnsState state, String questionCode) {
    String? preFillAnswer;

    switch (questionCode) {
      case QuestionnaireAgeCleAnswerKeyCode.SEXE:
        preFillAnswer = QuestionnaireAgesClesSelectors.getSexePreFillAnswer(state);
      case QuestionnaireAgeCleAnswerKeyCode.POIDS:
        preFillAnswer = QuestionnaireAgesClesSelectors.getPreFillMesureAnswer(state, EnsMesureType.POIDS);
      case QuestionnaireAgeCleAnswerKeyCode.TAILLE:
        preFillAnswer = QuestionnaireAgesClesSelectors.getPreFillMesureAnswer(state, EnsMesureType.TAILLE);
      case _:
        return null;
    }

    return preFillAnswer != null
        ? {
            questionCode: [preFillAnswer],
          }
        : null;
  }

  static BilanDePreventionState? _updateBilanDePreventionAFaireOuEnCoursVersTermines(
    EnsState state,
    QuestionnaireCode currentQuestionnaireCode,
  ) {
    final bilanDePreventionState = state.bilanDePreventionState;
    if (bilanDePreventionState.status == BilanDePreventionStatus.SUCCESS) {
      final newQuestionnaireAFaire = bilanDePreventionState.questionnairesAFaire
          .where((questionnaire) => questionnaire.code != currentQuestionnaireCode)
          .toList();

      final newQuestionnaireEnCours = bilanDePreventionState.questionnairesEnCours
          .where((questionnaire) => questionnaire.code != currentQuestionnaireCode)
          .toList();

      final newQuestionnaireTermines = [
        ...bilanDePreventionState.questionnairesAFaire
            .where((questionnaire) => questionnaire.code == currentQuestionnaireCode),
        ...bilanDePreventionState.questionnairesEnCours
            .where((questionnaire) => questionnaire.code == currentQuestionnaireCode),
        ...bilanDePreventionState.questionnairesTermines,
      ];

      return bilanDePreventionState.clone(
        questionnairesAFaire: newQuestionnaireAFaire,
        questionnairesEnCours: newQuestionnaireEnCours,
        questionnairesTermines: newQuestionnaireTermines,
      );
    }
    return null;
  }

  static BilanDePreventionState? _updateBilanDePreventionTerminesEtEnCoursVersAFaireOuEmptyState(
    EnsState state,
    QuestionnaireCode currentQuestionnaireCode,
  ) {
    final bilanDePreventionState = state.bilanDePreventionState;
    if (bilanDePreventionState.status == BilanDePreventionStatus.SUCCESS) {
      final newQuestionnaireEnCours = bilanDePreventionState.questionnairesEnCours
          .where((questionnaire) => questionnaire.code != currentQuestionnaireCode && questionnaire.isAvailable)
          .toList();

      final newQuestionnaireTermines = bilanDePreventionState.questionnairesTermines
          .where((questionnaire) => questionnaire.code != currentQuestionnaireCode && questionnaire.isAvailable)
          .toList();

      final newQuestionnaireAFaire = [
        ...bilanDePreventionState.questionnairesEnCours
            .where((questionnaire) => questionnaire.code == currentQuestionnaireCode && questionnaire.isAvailable),
        ...bilanDePreventionState.questionnairesTermines
            .where((questionnaire) => questionnaire.code == currentQuestionnaireCode && questionnaire.isAvailable),
        ...bilanDePreventionState.questionnairesAFaire,
      ];

      BilanDePreventionStatus status = bilanDePreventionState.status;

      if (newQuestionnaireTermines.isEmpty && newQuestionnaireEnCours.isEmpty && newQuestionnaireAFaire.isEmpty) {
        status = BilanDePreventionStatus.EMPTY;
      }

      return bilanDePreventionState.clone(
        status: status,
        questionnairesAFaire: newQuestionnaireAFaire,
        questionnairesEnCours: newQuestionnaireEnCours,
        questionnairesTermines: newQuestionnaireTermines,
      );
    }
    return null;
  }
}
