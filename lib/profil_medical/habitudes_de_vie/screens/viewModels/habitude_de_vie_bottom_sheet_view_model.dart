/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/domain/models/habitude_de_vie_answer.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/domain/models/habitude_de_vie_detail.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/domain/models/habitude_de_vie_enum.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/domain/models/habitude_de_vie_item.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/domain/models/habitude_de_vie_option.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/redux/habitudes_de_vie_redux.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/counted_text_input.dart';
import 'package:fr_cnamts_ens/utils/keyboard_utils.dart';
import 'package:redux/redux.dart';

class HabitudesDeVieBottomSheetViewModel extends Equatable {
  final List<QuestionDisplayModel> questions;
  final void Function(List<HabitudeDeVieUserDetailAnswer>) sendAnswers;
  final int? Function(int currentIndex, List<HabitudeDeVieUserDetailAnswer> currentAnswers) getIndexOfNextQuestion;

  const HabitudesDeVieBottomSheetViewModel._internal({
    required this.questions,
    required this.sendAnswers,
    required this.getIndexOfNextQuestion,
  });

  factory HabitudesDeVieBottomSheetViewModel.from(
    Store<EnsState> store,
    String itemCode,
    HabitudeDeVieCategoryCode categoryCode,
  ) {
    final habitudesDeVieState = store.state.habitudesDeVieState;

    final category = habitudesDeVieState.habitudesDeVieListState.categories
        .where((categorie) => categorie.code == categoryCode)
        .firstOrNull;
    final categoryAnswer = habitudesDeVieState.habitudesDeVieAnswersState.answers.entries
        .where((answer) => answer.key == categoryCode)
        .firstOrNull
        ?.value;

    if (category != null) {
      final item = category.items.where((item) => item.code == itemCode).firstOrNull;
      final itemAnswers = categoryAnswer?.where((item) => item.itemCode == itemCode).firstOrNull?.answers;
      if (item != null) {
        final questions = _getQuestions(item, category.categoryTag, itemAnswers);
        return HabitudesDeVieBottomSheetViewModel._internal(
          questions: questions,
          sendAnswers: (answers) {
            store.dispatch(
              SendHabitudesDeVieCurrentAnswerAction(
                category: categoryCode,
                userAnswer: HabitudeDeVieCategoryUserDetailsAnswer(itemCode: itemCode, answers: answers),
              ),
            );
          },
          getIndexOfNextQuestion: (currentIndex, currentAnswers) {
            return _getIndexOfNextQuestion(
              currentIndex: currentIndex,
              currentAnswers: currentAnswers,
              questions: questions,
            );
          },
        );
      }
    }
    return HabitudesDeVieBottomSheetViewModel._internal(
      questions: const [],
      sendAnswers: (_) {},
      getIndexOfNextQuestion: (_, __) {
        return null;
      },
    );
  }

  @override
  List<Object?> get props => [questions];

  static List<QuestionDisplayModel> _getQuestions(
    HabitudeDeVieItem item,
    String categoryTag,
    List<HabitudeDeVieDetailAnswer>? answers,
  ) {
    return item.details.map((detail) {
      final questionTag = '${categoryTag}_${detail.detailTag}';
      if (detail.type == ItemDisplayType.RADIO) {
        final detailAnswer = answers?.where((answer) => answer.code == detail.code).firstOrNull;
        return QuestionRadioDisplayModel(
          title: detail.label,
          description: detail.description,
          exemple: detail.exemple,
          displayOnCondition: detail.displayOnCondition,
          code: detail.code,
          options: detail.options,
          initialAnswer: detailAnswer?.value,
          questionTag: questionTag,
        );
      } else {
        final detailAnswer = answers?.where((answer) => answer.code == detail.code).firstOrNull;

        return QuestionTextDisplayModel(
          title: detail.label,
          description: detail.description,
          exemple: detail.exemple,
          code: detail.code,
          displayOnCondition: detail.displayOnCondition,
          keyboardType: KeyboardUtils.getQuestionKeyboardType(constraints: detail.constraints),
          maxLength: detail.maxLength,
          constraints: detail.constraints,
          initialAnswer: detailAnswer?.value,
          questionTag: questionTag,
        );
      }
    }).toList();
  }

  static int? _getIndexOfNextQuestion({
    required int currentIndex,
    required List<HabitudeDeVieUserDetailAnswer> currentAnswers,
    required List<QuestionDisplayModel> questions,
  }) {
    final isNotLastIndex = currentIndex != questions.length - 1;
    if (isNotLastIndex) {
      final questionsToDisplayOn = questions.where((question) {
        return _areDisplayConditionsMatched(currentAnswers, question);
      });
      for (final question in questionsToDisplayOn) {
        final int nextQuestionIndex = questions.indexOf(question);
        if (nextQuestionIndex > currentIndex) {
          return nextQuestionIndex;
        }
      }
    }
    return null;
  }

  static bool _areDisplayConditionsMatched(
    List<HabitudeDeVieUserDetailAnswer> currentAnswers,
    QuestionDisplayModel question,
  ) {
    final HabitudeDeVieUserDetailAnswer firstQuestion = currentAnswers[0];
    if (question.displayOnCondition == null) return true;
    if (firstQuestion is HabitudeDeVieUserDetailRadioAnswer) {
      return question.displayOnCondition!.value == firstQuestion.value;
    } else if (firstQuestion is HabitudeDeVieUserDetailTextAnswer) {
      final rawString = question.displayOnCondition!.rawString;
      if (rawString != null) return question.displayOnCondition!.rawString == firstQuestion.value;
      final maxValue = question.displayOnCondition!.maxValue;
      final minValue = question.displayOnCondition!.minValue;
      final firstQuestionValueAsString = _parseDoubleOrNull(firstQuestion.value);
      if (firstQuestionValueAsString == null) return false;
      if (maxValue != null && minValue != null) {
        return firstQuestionValueAsString <= maxValue && firstQuestionValueAsString >= minValue;
      }
    }
    return false;
  }
}

sealed class QuestionDisplayModel extends Equatable {
  final String title;
  final String? description;
  final String? exemple;
  final String code;
  final String questionTag;
  final HabitudeDeVieDisplayOnCondition? displayOnCondition;

  const QuestionDisplayModel({
    required this.title,
    this.description,
    this.exemple,
    required this.code,
    required this.questionTag,
    this.displayOnCondition,
  });

  @override
  List<Object?> get props => [title, description, exemple, questionTag, code, displayOnCondition];
}

class QuestionRadioDisplayModel extends QuestionDisplayModel {
  final List<HabitudeDeVieOption> options;
  final String? initialAnswer;

  const QuestionRadioDisplayModel({
    required super.title,
    super.description,
    super.exemple,
    required super.questionTag,
    required super.code,
    required this.options,
    this.initialAnswer,
    super.displayOnCondition,
  });

  @override
  List<Object?> get props => [...super.props, options, initialAnswer];
}

class QuestionTextDisplayModel extends QuestionDisplayModel {
  final double? maxLength;
  final TextInputType keyboardType;
  final List<TextInputConstraints> constraints;
  final String? initialAnswer;

  const QuestionTextDisplayModel({
    required super.title,
    super.description,
    super.exemple,
    required super.code,
    required super.questionTag,
    required this.keyboardType,
    this.maxLength,
    required this.constraints,
    this.initialAnswer,
    super.displayOnCondition,
  });

  @override
  List<Object?> get props => [...super.props, maxLength, constraints, initialAnswer, keyboardType];
}

double? _parseDoubleOrNull(String? value) {
  if (value == null) return null;
  try {
    return double.parse(value);
  } catch (e) {
    return null;
  }
}
