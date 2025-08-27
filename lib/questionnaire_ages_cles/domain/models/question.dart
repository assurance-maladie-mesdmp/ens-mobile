/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/counted_text_input.dart';

abstract class Question extends Equatable {
  final String title;
  final String? subTitle;
  final String code;
  final int numberOfNextQuestionsToSkip;
  final List<String> conditionToSkipNext;
  final int numberOfPreviousQuestionsToSkip;
  final List<String> conditionToSkipPrevious;

  const Question({
    required this.title,
    this.subTitle,
    required this.code,
    required this.numberOfNextQuestionsToSkip,
    required this.conditionToSkipNext,
    required this.numberOfPreviousQuestionsToSkip,
    required this.conditionToSkipPrevious,
  });

  @override
  List<Object?> get props => [
        title,
        subTitle,
        code,
        numberOfNextQuestionsToSkip,
        conditionToSkipNext,
        numberOfPreviousQuestionsToSkip,
        conditionToSkipPrevious,
      ];
}

abstract class MultipleChoiceQuestion extends Question {
  final List<OptionAnswer> options;

  const MultipleChoiceQuestion({
    required super.title,
    super.subTitle,
    required super.code,
    required this.options,
    required super.numberOfNextQuestionsToSkip,
    required super.conditionToSkipNext,
    required super.numberOfPreviousQuestionsToSkip,
    required super.conditionToSkipPrevious,
  });

  @override
  List<Object?> get props => [...super.props, options];
}

class SingleAnswerQuestion extends MultipleChoiceQuestion {
  const SingleAnswerQuestion({
    required super.title,
    super.subTitle,
    required super.code,
    required super.options,
    required super.numberOfNextQuestionsToSkip,
    required super.conditionToSkipNext,
    required super.numberOfPreviousQuestionsToSkip,
    required super.conditionToSkipPrevious,
  });
}

class MultipleAnswersQuestion extends MultipleChoiceQuestion {
  const MultipleAnswersQuestion({
    required super.title,
    super.subTitle,
    required super.code,
    required super.options,
    required super.numberOfNextQuestionsToSkip,
    required super.conditionToSkipNext,
    required super.numberOfPreviousQuestionsToSkip,
    required super.conditionToSkipPrevious,
  });
}

class TextFieldAnswerQuestion extends Question {
  final String label;
  final String? description;
  final double maxCharacters;
  final List<TextInputConstraints> constraints;
  final bool isMultiline;

  const TextFieldAnswerQuestion({
    required super.title,
    super.subTitle,
    required super.code,
    required this.label,
    this.description,
    required this.maxCharacters,
    required this.constraints,
    this.isMultiline = false,
    required super.numberOfNextQuestionsToSkip,
    required super.conditionToSkipNext,
    required super.numberOfPreviousQuestionsToSkip,
    required super.conditionToSkipPrevious,
  });

  @override
  List<Object?> get props => [...super.props, label, description, maxCharacters, constraints, isMultiline];
}

class OptionAnswer extends Equatable {
  final String label;
  final String code;

  const OptionAnswer({required this.label, required this.code});

  @override
  List<Object?> get props => [label, code];
}
