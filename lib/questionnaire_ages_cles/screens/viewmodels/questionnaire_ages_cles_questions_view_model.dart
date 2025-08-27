/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/data/questionnaire_ages_cles_mapper.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/domain/models/question.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/redux/questionnaire_ages_cles_redux.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/redux/questionnaire_ages_cles_selectors.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/counted_text_input.dart';
import 'package:redux/redux.dart';

class QuestionnaireAgesClesQuestionsViewModel extends Equatable {
  final List<String> currentQuestionAnswer;
  final List<dynamic> previousDisplayModels;
  final List<dynamic> currentDisplayModels;
  final int currentQuestionIndex;
  final List<TextInputConstraints> constraints;
  final SaveStatus saveStatus;
  final QuestionnaireFormStatus questionnaireStatus;
  final bool editMode;
  final QuestionnaireCode questionnaireCode;
  final String? questionnaireVersion;
  final String trackingQuestionCode;
  final void Function(List<String>) updateCurrentQuestionAnswer;
  final void Function(bool editMode) fetchQuestionnaire;
  final void Function() resetDraft;
  final void Function() finalizeQuiz;

  const QuestionnaireAgesClesQuestionsViewModel._({
    required this.currentQuestionAnswer,
    required this.previousDisplayModels,
    required this.currentDisplayModels,
    required this.currentQuestionIndex,
    required this.constraints,
    required this.saveStatus,
    required this.questionnaireStatus,
    required this.editMode,
    required this.trackingQuestionCode,
    required this.updateCurrentQuestionAnswer,
    required this.fetchQuestionnaire,
    required this.resetDraft,
    required this.finalizeQuiz,
    required this.questionnaireCode,
    required this.questionnaireVersion,
  });

  @override
  List<Object?> get props => [
        currentQuestionAnswer,
        previousDisplayModels,
        currentDisplayModels,
        currentQuestionIndex,
        constraints,
        saveStatus,
        questionnaireStatus,
        editMode,
        trackingQuestionCode,
        questionnaireCode,
        questionnaireVersion,
      ];

  factory QuestionnaireAgesClesQuestionsViewModel(
    Store<EnsState> store,
    bool editMode,
    QuestionnaireCode? questionnaireCodeFromArgs,
    String? questionnaireVersionFromArgs,
  ) {
    final questionnaireAgesClesState = store.state.questionnaireAgesClesState;
    final questionnaireListeState = questionnaireAgesClesState.questionsListState;
    final questionnaireAgesClesResponsesStatus = questionnaireAgesClesState.questionnaireAgesClesResponsesStatus;
    final currentQuestionIndex = questionnaireAgesClesState.currentQuestionIndex;
    List<dynamic> previousDisplayModels = [];
    List<dynamic> currentDisplayModels = [];
    String trackingQuestionCode = '';
    QuestionnaireCode questionnaireCode =
        questionnaireCodeFromArgs ?? questionnaireAgesClesState.questionnaireVersionState.questionnaireCode;

    final initialQuestionAnswer = QuestionnaireAgesClesSelectors.getCurrentAnswer(store.state);
    List<TextInputConstraints> constraints = [];
    QuestionnaireFormStatus questionnaireStatus = QuestionnaireFormStatus.LOADING;

    final questionnaireSaveState = questionnaireAgesClesState.questionnaireSaveState;
    SaveStatus saveStatus = SaveStatus.DEFAULT;
    if (questionnaireSaveState.status.isSuccess()) {
      saveStatus = questionnaireSaveState.isDraft ? SaveStatus.DRAFT_SAVED : SaveStatus.FINAL_SAVED;
    } else if (questionnaireSaveState.status.isLoading()) {
      saveStatus = SaveStatus.LOADING;
    } else if (questionnaireSaveState.status.isError()) {
      saveStatus = SaveStatus.ERROR;
    }

    if (questionnaireListeState.isSuccessWithData && questionnaireAgesClesResponsesStatus.isNotLoading()) {
      questionnaireStatus = QuestionnaireFormStatus.SUCCESS;
      final questions = questionnaireListeState.questionnaireAgesCles!.questions;
      final nbOfQuestion = questions.length;
      final currentQuestion = questions[currentQuestionIndex];
      questionnaireCode = questionnaireCodeFromArgs ?? questionnaireListeState.questionnaireAgesCles!.code;
      trackingQuestionCode = currentQuestion.code.toLowerCase();

      final previousQuestionIndex = questionnaireAgesClesState.previousQuestionIndex;
      if (previousQuestionIndex >= 0) {
        previousDisplayModels = _buildDisplayModels(
          previousQuestionIndex,
          nbOfQuestion,
          questions[previousQuestionIndex],
          store,
          saveStatus,
          editMode,
          trackingQuestionCode,
          questionnaireCode.getTrancheAgeForTracking(),
        );
      }
      currentDisplayModels = _buildDisplayModels(
        currentQuestionIndex,
        nbOfQuestion,
        currentQuestion,
        store,
        saveStatus,
        editMode,
        trackingQuestionCode,
        questionnaireCode.getTrancheAgeForTracking(),
      );
      final textFieldDisplayModel = currentDisplayModels.whereType<OptionTextFieldDisplayModel>().firstOrNull;
      constraints = textFieldDisplayModel?.constraints ?? [];
    } else if (questionnaireListeState.isErrorOrSuccessWithoutData) {
      questionnaireStatus = QuestionnaireFormStatus.ERROR;
    }

    return QuestionnaireAgesClesQuestionsViewModel._(
      previousDisplayModels: previousDisplayModels,
      currentDisplayModels: currentDisplayModels,
      currentQuestionAnswer: initialQuestionAnswer,
      constraints: constraints,
      currentQuestionIndex: currentQuestionIndex,
      updateCurrentQuestionAnswer: (currentQuestionAnswer) =>
          store.dispatch(UpdateCurrentQuestionAnswerAction(answerCodes: currentQuestionAnswer)),
      fetchQuestionnaire: (bool editMode) {
        store.dispatch(
          FetchQuestionnaireAgesClesAction(
            editMode: editMode,
            code: questionnaireCode,
            version: questionnaireVersionFromArgs,
          ),
        );
      },
      resetDraft: () => store.dispatch(ResetQuestionnaireAgesClesAction()),
      finalizeQuiz: () => store.dispatch(FinalizeQuestionnaireAgesClesAction(shouldDisplayUpdateDocSnakbar: editMode)),
      saveStatus: saveStatus,
      questionnaireStatus: questionnaireStatus,
      editMode: editMode,
      trackingQuestionCode: trackingQuestionCode,
      questionnaireCode: questionnaireCode,
      questionnaireVersion: questionnaireVersionFromArgs,
    );
  }

  String get trackingTrancheAge => questionnaireCode.getTrancheAgeForTracking();

  static List<dynamic> _buildDisplayModels(
    int currentQuestionNumber,
    int nbOfQuestion,
    Question currentQuestion,
    Store<EnsState> store,
    SaveStatus saveStatus,
    bool editMode,
    String trackingQuestionCode,
    String trackingTrancheAge,
  ) {
    final displayModels = [];
    displayModels.add(StepperDisplayModel(currentQuestionNumber, nbOfQuestion));
    displayModels.add(TitleDisplayModel(title: currentQuestion.title, subTitle: currentQuestion.subTitle));
    displayModels.add(getQuestionDisplayModel(currentQuestion: currentQuestion));
    displayModels.add(
      getButtonsDisplayModel(
        store,
        currentQuestionNumber,
        nbOfQuestion,
        saveStatus == SaveStatus.LOADING,
        editMode,
        trackingQuestionCode,
        trackingTrancheAge,
      ),
    );
    return displayModels;
  }

  static Equatable? getQuestionDisplayModel({
    required Question currentQuestion,
  }) {
    if (currentQuestion is MultipleChoiceQuestion) {
      return OptionsDisplayModel(
        options: currentQuestion.options
            .map(
              (option) => OptionMultipleDisplayModel(
                label: option.label,
                code: option.code,
              ),
            )
            .toList(),
        isSingleChoice: currentQuestion is SingleAnswerQuestion,
      );
    } else if (currentQuestion is TextFieldAnswerQuestion) {
      return OptionTextFieldDisplayModel(
        label: currentQuestion.label,
        description: currentQuestion.description,
        maxCharacters: currentQuestion.maxCharacters,
        constraints: currentQuestion.constraints,
        isMultiline: currentQuestion.isMultiline,
      );
    }
    return null;
  }

  static ButtonsDisplayModel getButtonsDisplayModel(
    Store<EnsState> store,
    int currentQuestionNumber,
    int nbOfQuestion,
    bool isFinishButtonLoading,
    bool isInEditMode,
    String trackingCode,
    String trackingTrancheAge,
  ) {
    return ButtonsDisplayModel(
      goToPreviousQuestion: () => store.dispatch(GoToPreviousQuestionAction()),
      goToNextQuestion: () => store.dispatch(GoToNextQuestionAction()),
      isFirstQuestion: currentQuestionNumber == 0,
      isLastQuestion: currentQuestionNumber == nbOfQuestion - 1,
      isFinishButtonLoading: isFinishButtonLoading,
      isInEditMode: isInEditMode,
      trackingCode: trackingCode,
      trackingTrancheAge: trackingTrancheAge,
    );
  }
}

class OptionsDisplayModel extends Equatable {
  final List<OptionMultipleDisplayModel> options;
  final bool isSingleChoice;

  const OptionsDisplayModel({required this.options, required this.isSingleChoice});

  @override
  List<Object?> get props => [options, isSingleChoice];
}

abstract class OptionDisplayModel extends Equatable {
  final String label;
  final String? description;

  const OptionDisplayModel({required this.label, this.description});

  @override
  List<Object?> get props => [label, description];
}

class OptionMultipleDisplayModel extends OptionDisplayModel {
  final String code;

  const OptionMultipleDisplayModel({required super.label, required this.code});

  @override
  List<Object?> get props => [...super.props, code];
}

class OptionTextFieldDisplayModel extends OptionDisplayModel {
  final double maxCharacters;
  final List<TextInputConstraints> constraints;
  final bool isMultiline;

  const OptionTextFieldDisplayModel({
    required super.label,
    super.description,
    required this.maxCharacters,
    required this.constraints,
    required this.isMultiline,
  });

  @override
  List<Object?> get props => [...super.props, maxCharacters, constraints, isMultiline];
}

enum SaveStatus {
  LOADING,
  DEFAULT,
  ERROR,
  DRAFT_SAVED,
  FINAL_SAVED,
}

enum QuestionnaireFormStatus {
  LOADING,
  ERROR,
  SUCCESS,
}

class ButtonsDisplayModel extends Equatable {
  final void Function() goToPreviousQuestion;
  final void Function() goToNextQuestion;
  final bool isFirstQuestion;
  final bool isLastQuestion;
  final bool isFinishButtonLoading;
  final bool isInEditMode;
  final String trackingCode;
  final String trackingTrancheAge;

  const ButtonsDisplayModel({
    required this.goToPreviousQuestion,
    required this.goToNextQuestion,
    required this.isFirstQuestion,
    required this.isLastQuestion,
    required this.isFinishButtonLoading,
    required this.isInEditMode,
    required this.trackingCode,
    required this.trackingTrancheAge,
  });

  @override
  List<Object?> get props => [
        isFirstQuestion,
        isLastQuestion,
        isFinishButtonLoading,
        isInEditMode,
        trackingCode,
        trackingTrancheAge,
      ];
}

class TitleDisplayModel extends Equatable {
  final String title;
  final String? subTitle;

  const TitleDisplayModel({required this.title, this.subTitle});

  @override
  List<Object?> get props => [title, subTitle];
}

class StepperDisplayModel extends Equatable {
  final int value;
  final int max;

  const StepperDisplayModel(this.value, this.max);

  @override
  List<Object?> get props => [value, max];
}
