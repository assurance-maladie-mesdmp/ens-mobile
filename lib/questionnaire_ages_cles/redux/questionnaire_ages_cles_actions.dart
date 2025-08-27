/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'questionnaire_ages_cles_redux.dart';

class FetchQuestionnaireAgesClesAction {
  final bool force;
  final bool editMode;
  final String? version;
  final QuestionnaireCode? code;

  FetchQuestionnaireAgesClesAction({
    this.force = false,
    this.editMode = false,
    this.version,
    this.code,
  });
}

class _ProcessFetchQuestionnaireAgesClesSuccessAction {
  final Questionnaire questionnaire;

  _ProcessFetchQuestionnaireAgesClesSuccessAction(this.questionnaire);
}

class _ProcessFetchQuestionnaireAgesClesErrorAction {}

class _ProcessFetchQuestionnaireAgesClesResponsesSuccessAction {
  final UserAnswers userAnswers;
  final bool isEditMode;

  _ProcessFetchQuestionnaireAgesClesResponsesSuccessAction(this.userAnswers, this.isEditMode);
}

class _ProcessFetchQuestionnaireAgesClesResponsesErrorAction {}

class _ProcessSaveQuestionnaireAgesClesSuccessAction {}

class _ProcessSaveQuestionnaireAgesClesErrorAction {}

class _ProcessFinalizeQuestionnaireAgesClesSuccessAction {
  final QuestionnaireCode questionnaireCode;

  _ProcessFinalizeQuestionnaireAgesClesSuccessAction({required this.questionnaireCode});
}

class _ProcessFinalizeQuestionnaireAgesClesErrorAction {}

class GoToNextQuestionAction {}

class GoToPreviousQuestionAction {}

class _ProcessGoToQuestionAction {
  final int previousQuestionIndex;
  final int currentQuestionIndex;

  _ProcessGoToQuestionAction({
    required this.previousQuestionIndex,
    required this.currentQuestionIndex,
  });
}

class PreFillAnswerToQuestion {
  final int questionIndex;

  PreFillAnswerToQuestion({required this.questionIndex});
}

class UpdateCurrentQuestionAnswerAction {
  final List<String> answerCodes;

  UpdateCurrentQuestionAnswerAction({required this.answerCodes});
}

class SaveDraftQuestionnaireAgesClesAction {}

class FinalizeQuestionnaireAgesClesAction {
  final bool shouldDisplayUpdateDocSnakbar;

  FinalizeQuestionnaireAgesClesAction({required this.shouldDisplayUpdateDocSnakbar});
}

class ResetQuestionnaireAgesClesAction {}

class DeleteQuestionnaireResponsesAction {
  final String? responseId;
  final QuestionnaireCode questionnaireCode;

  DeleteQuestionnaireResponsesAction({this.responseId, required this.questionnaireCode});
}

class _ProcessSuccessDeleteQuestionnaireResponsesAction {
  final QuestionnaireCode questionnaireCode;

  const _ProcessSuccessDeleteQuestionnaireResponsesAction({required this.questionnaireCode});
}

class SaveResponseIdAction {
  final String? responseId;

  const SaveResponseIdAction(this.responseId);
}

class NewVersionQuestionnaireEnCoursAction {}

class ReInitNewVersionQuestionnaireAction {}

class FetchReponseIdToDelete {
  final QuestionnaireCode questionnaireCode;
  final String? questionnaireVersion;

  const FetchReponseIdToDelete({required this.questionnaireCode, this.questionnaireVersion});
}

class _ProcessFetchedReponseIdToDelete {
  final String? responseIdToDelete;

  _ProcessFetchedReponseIdToDelete(this.responseIdToDelete);
}

class ReInitVersionQuestionnaireStatusAction {}

class FetchVersionQuestionnaireAction {
  final QuestionnaireCode questionnaireCode;

  const FetchVersionQuestionnaireAction({required this.questionnaireCode});
}

class _ProcessFetchVersionQuestionnaireSuccessAction {
  final GetQuestionnaireVersionReponse questionnaireVersionReponse;

  _ProcessFetchVersionQuestionnaireSuccessAction(this.questionnaireVersionReponse);
}

class _ProcessFetchVersionQuestionnaireErrorAction {}
