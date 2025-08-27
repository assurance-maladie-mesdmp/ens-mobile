/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'questionnaire_ages_cles_redux.dart';

class QuestionnaireAgesClesState extends Equatable {
  final QuestionnaireStatus questionnaireStatus;
  final QuestionsListState questionsListState;
  final QuestionnaireSaveState questionnaireSaveState;
  final String? responsesId;
  final String? responsesIdToDelete; // Créer juste pour supprimer les réponses d'une ancienne version de questionnaire
  final int previousQuestionIndex;
  final int currentQuestionIndex;
  final Map<String, List<String>> answers;
  final QuestionnaireVersionState questionnaireVersionState;
  final List<int> questionDejaVuEtPreRemplis;
  final DateTime? lastUpdateDate;
  final AllPurposesStatus questionnaireAgesClesResponsesStatus;

  const QuestionnaireAgesClesState({
    this.questionnaireStatus = QuestionnaireStatus.NOT_STARTED,
    this.questionsListState = const QuestionsListState(),
    this.responsesId,
    this.responsesIdToDelete,
    this.questionnaireSaveState = const QuestionnaireSaveState(),
    this.previousQuestionIndex = -1,
    this.currentQuestionIndex = 0,
    this.answers = const {},
    this.questionnaireVersionState = const QuestionnaireVersionState(),
    this.questionDejaVuEtPreRemplis = const [],
    this.lastUpdateDate,
    this.questionnaireAgesClesResponsesStatus = AllPurposesStatus.NOT_LOADED,
  });

  @override
  List<Object?> get props => [
        questionnaireStatus,
        questionsListState,
        previousQuestionIndex,
        currentQuestionIndex,
        answers,
        questionnaireSaveState,
        responsesId,
        responsesIdToDelete,
        questionnaireVersionState,
        questionDejaVuEtPreRemplis,
        lastUpdateDate,
        questionnaireAgesClesResponsesStatus,
      ];

  QuestionnaireAgesClesState clone({
    QuestionnaireStatus? questionnaireStatus,
    QuestionsListState? questionsListState,
    QuestionnaireSaveState? questionnaireSaveState,
    int? previousQuestionIndex,
    int? currentQuestionIndex,
    Question? currentQuestion,
    List<String>? currentQuestionAnswers,
    Map<String, List<String>>? answers,
    Optional<String>? responsesIdOptional,
    List<int>? questionDejaVuEtPreRemplis,
    Optional<String>? responsesIdToDeleteOptional,
    QuestionnaireVersionState? questionnaireVersionState,
    Optional<DateTime>? lastUpdateDateOptional,
    AllPurposesStatus? questionnaireAgesClesResponsesStatus,
  }) {
    return QuestionnaireAgesClesState(
      questionnaireStatus: questionnaireStatus ?? this.questionnaireStatus,
      questionsListState: questionsListState ?? this.questionsListState,
      questionnaireSaveState: questionnaireSaveState ?? this.questionnaireSaveState,
      previousQuestionIndex: previousQuestionIndex ?? this.previousQuestionIndex,
      currentQuestionIndex: currentQuestionIndex ?? this.currentQuestionIndex,
      answers: answers ?? this.answers,
      responsesId: responsesIdOptional != null ? responsesIdOptional.orElseNullable(responsesId) : responsesId,
      responsesIdToDelete: responsesIdToDeleteOptional != null
          ? responsesIdToDeleteOptional.orElseNullable(responsesIdToDelete)
          : responsesIdToDelete,
      questionnaireVersionState: questionnaireVersionState ?? this.questionnaireVersionState,
      questionDejaVuEtPreRemplis: questionDejaVuEtPreRemplis ?? this.questionDejaVuEtPreRemplis,
      lastUpdateDate:
          lastUpdateDateOptional != null ? lastUpdateDateOptional.orElseNullable(lastUpdateDate) : lastUpdateDate,
      questionnaireAgesClesResponsesStatus:
          questionnaireAgesClesResponsesStatus ?? this.questionnaireAgesClesResponsesStatus,
    );
  }
}

enum QuestionnaireStatus { NOT_STARTED, DRAFT, FINISHED }

class QuestionsListState extends Equatable {
  final AllPurposesStatus status;
  final Questionnaire? questionnaireAgesCles;

  const QuestionsListState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.questionnaireAgesCles,
  });

  bool get isSuccessWithData => status.isSuccess() && questionnaireAgesCles != null;

  bool get isErrorOrSuccessWithoutData => status.isError() || (status.isSuccess() && questionnaireAgesCles == null);

  @override
  List<Object?> get props => [status, questionnaireAgesCles];
}

class QuestionnaireSaveState extends Equatable {
  final AllPurposesStatus status;
  final bool isDraft;

  const QuestionnaireSaveState({this.status = AllPurposesStatus.NOT_LOADED, this.isDraft = false});

  @override
  List<Object?> get props => [status, isDraft];
}

class QuestionnaireVersionState extends Equatable {
  final AllPurposesStatus status;
  final QuestionnaireCode questionnaireCode;
  final String? questionnaireVersion;
  final String? questionnaireLastVersion;
  final bool newVersionEnCours;

  const QuestionnaireVersionState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.questionnaireCode = QuestionnaireCode.UNKNOWN,
    this.questionnaireVersion,
    this.questionnaireLastVersion,
    this.newVersionEnCours = false,
  });

  String? get questionnaireLastVersionOrVersion => questionnaireLastVersion ?? questionnaireVersion;

  QuestionnaireVersionState clone({
    AllPurposesStatus? status,
    QuestionnaireCode? questionnaireCode,
    Optional<String>? questionnaireVersionOptional,
    Optional<String>? questionnaireLastVersionOptional,
    bool? newVersionEnCours,
  }) {
    return QuestionnaireVersionState(
      status: status ?? this.status,
      questionnaireCode: questionnaireCode ?? this.questionnaireCode,
      questionnaireVersion: questionnaireVersionOptional != null
          ? questionnaireVersionOptional.orElseNullable(null)
          : questionnaireVersion,
      questionnaireLastVersion: questionnaireLastVersionOptional != null
          ? questionnaireLastVersionOptional.orElseNullable(null)
          : questionnaireLastVersion,
      newVersionEnCours: newVersionEnCours ?? this.newVersionEnCours,
    );
  }

  bool isQuestionnaireVersionValid() {
    return questionnaireVersion != null || questionnaireLastVersion != null;
  }

  bool doQuestionnaireNeedUpdate() {
    return questionnaireLastVersion != null &&
        questionnaireVersion != null &&
        questionnaireLastVersion != questionnaireVersion;
  }

  @override
  List<Object?> get props => [
        status,
        questionnaireCode,
        questionnaireVersion,
        questionnaireLastVersion,
        newVersionEnCours,
      ];
}
