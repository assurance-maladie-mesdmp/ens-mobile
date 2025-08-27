/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'questionnaire_ages_cles_redux.dart';

class QuestionnaireAgesClesMiddlewares {
  final IQuestionnaireAgesClesRepository agesClesRepository;

  QuestionnaireAgesClesMiddlewares(this.agesClesRepository);

  static List<Middleware<EnsState>> create(
    IQuestionnaireAgesClesRepository agesClesRepository,
  ) {
    final middlewares = QuestionnaireAgesClesMiddlewares(agesClesRepository);
    return [
      TypedMiddleware<EnsState, FetchQuestionnaireAgesClesAction>(
        middlewares._onFetchQuestionnaireAgesClesAction,
      ).call,
      TypedMiddleware<EnsState, SaveDraftQuestionnaireAgesClesAction>(
        middlewares._onSaveDraftQuestionnaireAgesClesDraftAction,
      ).call,
      TypedMiddleware<EnsState, FinalizeQuestionnaireAgesClesAction>(
        middlewares._onFinalizeQuestionnaireAgesClesAction,
      ).call,
      TypedMiddleware<EnsState, GoToNextQuestionAction>(
        middlewares._onGoToNextQuestionAction,
      ).call,
      TypedMiddleware<EnsState, GoToPreviousQuestionAction>(
        middlewares._onGoToPreviousQuestionAction,
      ).call,
      TypedMiddleware<EnsState, DeleteQuestionnaireResponsesAction>(
        middlewares._onDeleteQuestionnaireResponsesAction,
      ).call,
      TypedMiddleware<EnsState, FetchReponseIdToDelete>(
        middlewares._onFetchReponseIdToDelete,
      ).call,
      TypedMiddleware<EnsState, FetchVersionQuestionnaireAction>(
        middlewares._onFetchVersionQuestionnaireAction,
      ).call,
    ];
  }

  Future<void> _onFetchVersionQuestionnaireAction(
    Store<EnsState> store,
    FetchVersionQuestionnaireAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final questionnaireVersionState = store.state.questionnaireAgesClesState.questionnaireVersionState;
    if (questionnaireVersionState.status.isNotSuccess()) {
      store.dispatch(const DisplaySnackbarAction.loading('Chargement en cours...'));
      final patientId = UserSelectors.getPatientId(store.state);
      final result = await agesClesRepository.getQuestionnaireCodeVersion(
        patientId: patientId,
        fileNamePrefix: action.questionnaireCode.getSyntheseQuestionnaireFileNamePrefix(),
      );
      result.onSuccess((successResult) {
        store.dispatch(const HideSnackBarAction());
        store.dispatch(_ProcessFetchVersionQuestionnaireSuccessAction(successResult));
      }).onError((error) {
        store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
        store.dispatch(_ProcessFetchVersionQuestionnaireErrorAction());
      });
    }
  }

  Future<void> _onFetchQuestionnaireAgesClesAction(
    Store<EnsState> store,
    FetchQuestionnaireAgesClesAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final questionnaireAgesClesState = store.state.questionnaireAgesClesState;
    final questionnaireVersionState = questionnaireAgesClesState.questionnaireVersionState;
    final questionnaireCode = action.code ?? questionnaireVersionState.questionnaireCode;
    final questionnaireVersion = action.version ?? questionnaireVersionState.questionnaireLastVersionOrVersion ?? '';

    if (questionnaireAgesClesState.questionsListState.isSuccessWithData &&
        !action.force &&
        questionnaireVersionState.isQuestionnaireVersionValid()) {
      final answersResult = await agesClesRepository.getQuestionnaireAgesClesResponses(
        patientId: patientId,
        questionnaireCode: questionnaireCode,
        questionnaireVersion: questionnaireVersion,
      );
      answersResult.onSuccess((successResult) {
        store.dispatch(_ProcessFetchQuestionnaireAgesClesResponsesSuccessAction(successResult, action.editMode));
      }).onError((error) {
        store.dispatch(_ProcessFetchQuestionnaireAgesClesResponsesErrorAction());
      });
    } else {
      final result = await agesClesRepository.getQuestionnaireAgesCles(
        patientId: patientId,
        questionnaireCode: questionnaireCode,
        questionnaireVersion: questionnaireVersion,
      );
      result.onSuccess((successResult) {
        store.dispatch(_ProcessFetchQuestionnaireAgesClesSuccessAction(successResult));
      }).onError((error) {
        store.dispatch(_ProcessFetchQuestionnaireAgesClesErrorAction());
      });
      result.onSuccess((successResult) async {
        final answersResult = await agesClesRepository.getQuestionnaireAgesClesResponses(
          patientId: patientId,
          questionnaireCode: successResult.code,
          questionnaireVersion: successResult.version,
        );
        answersResult.onSuccess((answersSuccessResult) {
          store.dispatch(
            _ProcessFetchQuestionnaireAgesClesResponsesSuccessAction(answersSuccessResult, action.editMode),
          );
        }).onError((error) {
          store.dispatch(_ProcessFetchQuestionnaireAgesClesResponsesErrorAction());
        });
      });
    }
  }

  Future<void> _onFetchReponseIdToDelete(
    Store<EnsState> store,
    FetchReponseIdToDelete action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final version = action.questionnaireVersion;
    if (version != null) {
      final answersResult = await agesClesRepository.getQuestionnaireAgesClesResponses(
        patientId: patientId,
        questionnaireCode: action.questionnaireCode,
        questionnaireVersion: version,
      );
      answersResult.onSuccess((successResult) {
        store.dispatch(_ProcessFetchedReponseIdToDelete(successResult.id));
      }).onError((error) {
        store.dispatch(_ProcessFetchedReponseIdToDelete(null));
      });
    }
  }

  Future<void> _onGoToNextQuestionAction(
    Store<EnsState> store,
    GoToNextQuestionAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final question = QuestionnaireAgesClesSelectors.getCurrentQuestion(store.state);

    if (question != null) {
      final currentAnswer = store.state.questionnaireAgesClesState.answers[question.code];
      final nbrOfQuestionToSkip = question.numberOfNextQuestionsToSkip;
      final shouldSkipNextQuestion = nbrOfQuestionToSkip != 0 && _hasSkipNextConditionFilled(question, currentAnswer);
      final currentQuestionIndex = store.state.questionnaireAgesClesState.currentQuestionIndex;
      final nextQuestionIndex = currentQuestionIndex + (shouldSkipNextQuestion ? nbrOfQuestionToSkip : 1);
      store.dispatch(
        _ProcessGoToQuestionAction(
          previousQuestionIndex: currentQuestionIndex,
          currentQuestionIndex: nextQuestionIndex,
        ),
      );
      store.dispatch(PreFillAnswerToQuestion(questionIndex: nextQuestionIndex));
    }
  }

  bool _hasSkipNextConditionFilled(Question question, List<String>? currentAnswer) {
    if (question.conditionToSkipNext.isEmpty) {
      return false;
    }
    final firstChar = question.conditionToSkipNext[0][0];
    if (question.conditionToSkipNext.length == 1 && firstChar == '!') {
      if (currentAnswer == null || currentAnswer.isEmpty) return true;
      return !currentAnswer.any((answer) => question.conditionToSkipNext[0].substring(1) == answer);
    } else {
      if (currentAnswer == null || currentAnswer.isEmpty) return true;
      return currentAnswer.any((answer) => question.conditionToSkipNext.contains(answer));
    }
  }

  Future<void> _onGoToPreviousQuestionAction(
    Store<EnsState> store,
    GoToPreviousQuestionAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final allQuestions = QuestionnaireAgesClesSelectors.getQuestions(store.state);
    if (allQuestions != null) {
      final currentIndex = store.state.questionnaireAgesClesState.currentQuestionIndex;
      final allAnswers = store.state.questionnaireAgesClesState.answers;
      final nbrOfPreviousQuestionToSkip = allQuestions[currentIndex].numberOfPreviousQuestionsToSkip;
      final previousQuestionIndex = currentIndex -
          (_hasSkipPreviousConditionFilled(allQuestions, allAnswers, currentIndex) ? nbrOfPreviousQuestionToSkip : 1);

      final nbOfPreviousPreviousQuestionToSkip = allQuestions[previousQuestionIndex].numberOfPreviousQuestionsToSkip;
      store.dispatch(
        _ProcessGoToQuestionAction(
          previousQuestionIndex: previousQuestionIndex -
              (_hasSkipPreviousConditionFilled(allQuestions, allAnswers, previousQuestionIndex)
                  ? nbOfPreviousPreviousQuestionToSkip
                  : 1),
          currentQuestionIndex: previousQuestionIndex,
        ),
      );
      store.dispatch(PreFillAnswerToQuestion(questionIndex: previousQuestionIndex));
    }
  }

  bool _hasSkipPreviousConditionFilled(
    List<Question> allQuestions,
    Map<String, List<String>> allAnswers,
    int currentIndex,
  ) {
    final currentQuestion = allQuestions[currentIndex];
    final nbrOfPreviousQuestionToSkip = currentQuestion.numberOfPreviousQuestionsToSkip;
    final previousCodeQuestion = allQuestions[currentIndex - nbrOfPreviousQuestionToSkip].code;
    if (currentQuestion.conditionToSkipPrevious.isEmpty) {
      return false;
    }
    final firstChar = currentQuestion.conditionToSkipPrevious[0][0];
    if (currentQuestion.conditionToSkipPrevious.length == 1 && firstChar == '!') {
      if (!allAnswers.containsKey(previousCodeQuestion) || allAnswers[previousCodeQuestion]!.isEmpty) {
        return true;
      }
      return !allAnswers[previousCodeQuestion]!
          .any((answer) => currentQuestion.conditionToSkipPrevious[0].substring(1) == answer);
    } else {
      if (!allAnswers.containsKey(previousCodeQuestion) || allAnswers[previousCodeQuestion]!.isEmpty) {
        return true;
      }
      return allAnswers[previousCodeQuestion]!
          .any((answer) => currentQuestion.conditionToSkipPrevious.contains(answer));
    }
  }

  Future<void> _onSaveDraftQuestionnaireAgesClesDraftAction(
    Store<EnsState> store,
    SaveDraftQuestionnaireAgesClesAction action,
    NextDispatcher next,
  ) async {
    next(action);

    final questionnaireAgesClesState = store.state.questionnaireAgesClesState;
    if (questionnaireAgesClesState.questionsListState.isSuccessWithData) {
      final result = await _saveQuestionnaireAgesCles(questionnaireAgesClesState, store, true);

      result.onSuccess((successResult) {
        store.dispatch(const DisplaySnackbarAction.success('Brouillon enregistré'));
        store.dispatch(_ProcessSaveQuestionnaireAgesClesSuccessAction());
        store.dispatch(const FetchRecommandationsAction(force: true));
      }).onError((error) {
        store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
        store.dispatch(_ProcessSaveQuestionnaireAgesClesErrorAction());
      });
      store.dispatch(FetchBilanDePreventionQuestionnairesAction(force: true));
    } else {
      store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
    }
  }

  Future<void> _onFinalizeQuestionnaireAgesClesAction(
    Store<EnsState> store,
    FinalizeQuestionnaireAgesClesAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final questionnaireAgesClesState = store.state.questionnaireAgesClesState;
    if (questionnaireAgesClesState.questionsListState.isSuccessWithData) {
      final questionsListState = questionnaireAgesClesState.questionsListState;
      final result = await _saveQuestionnaireAgesCles(questionnaireAgesClesState, store, false);

      result.onSuccess((successResult) {
        store.dispatch(const FetchRecommandationsAction(force: true));
        if (action.shouldDisplayUpdateDocSnakbar) {
          store.dispatch(
            const DisplaySnackbarAction.success(
              'Votre questionnaire a été mis à jour. Enregistrez-le dans vos documents Mon espace santé.',
            ),
          );
        }
        store.dispatch(
          _ProcessFinalizeQuestionnaireAgesClesSuccessAction(
            questionnaireCode: questionsListState.questionnaireAgesCles!.code,
          ),
        );
      }).onError((error) {
        store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
        store.dispatch(_ProcessFinalizeQuestionnaireAgesClesErrorAction());
      });
    } else {
      store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
    }
  }

  Future<RequestResult<void>> _saveQuestionnaireAgesCles(
    QuestionnaireAgesClesState questionnaireAgesClesState,
    Store<EnsState> store,
    bool isDraft,
  ) async {
    final questionnaireAgesCles = questionnaireAgesClesState.questionsListState.questionnaireAgesCles;
    final patientId = UserSelectors.getPatientId(store.state);
    final answers = questionnaireAgesClesState.answers;
    final currentQuestionIndex = questionnaireAgesClesState.currentQuestionIndex;
    final responsesId = questionnaireAgesClesState.responsesId;

    final Map<String, List<String>> newAnswers = Map.from(answers);
    final questions = QuestionnaireAgesClesSelectors.getQuestions(store.state);

    if (questions != null) {
      final questionConditionnellesToReset = questions.where((question) {
        final answer = answers[question.code];
        return question.conditionToSkipNext.isNotEmpty &&
            answer != null &&
            answer.every((answ) => question.conditionToSkipNext.contains(answ));
      }).toList();

      for (final questionConditionnelle in questionConditionnellesToReset) {
        final questionCodesToReset =
            QuestionnaireAgesClesSelectors.getQuestionCodesToReset(store.state, questionConditionnelle);
        for (final questionCode in questionCodesToReset) {
          if (newAnswers[questionCode] != null) {
            newAnswers.update(questionCode, (value) => []);
          }
        }
      }
    }

    final result = await agesClesRepository.saveQuestionnaireAgesCles(
      patientId: patientId,
      questionnaire: questionnaireAgesCles!,
      userAnswers: UserAnswers(
        isDraft: isDraft,
        id: responsesId,
        questionToDisplayIndex: currentQuestionIndex,
        answers: newAnswers,
      ),
    );
    return result;
  }

  Future<void> _onDeleteQuestionnaireResponsesAction(
    Store<EnsState> store,
    DeleteQuestionnaireResponsesAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final responseId = action.responseId ?? QuestionnaireAgesClesSelectors.getResponsesId(store.state);

    if (responseId != null && responseId != '') {
      final result = await agesClesRepository.deleteQuestionnaireResponses(responseId, patientId);

      result.onSuccess((successResult) {
        store.dispatch(const FetchRecommandationsAction(force: true));
        store.dispatch(_ProcessSuccessDeleteQuestionnaireResponsesAction(questionnaireCode: action.questionnaireCode));
        store.dispatch(
          const DisplaySnackbarAction.success('Réponses supprimées'),
        );
      }).onError((_) {
        store.dispatch(
          const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE),
        );
      });
    }
  }
}
