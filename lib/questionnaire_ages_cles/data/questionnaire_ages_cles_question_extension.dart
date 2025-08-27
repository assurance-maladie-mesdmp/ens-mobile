/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_questionnaire_get_questionnaire.query.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/domain/models/question.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/counted_text_input.dart';

extension QuestionnaireAgesClesQuestionExtension on Gget_questionnaireData_fetchHealthQuiz {
  List<Question> toAgesClesQuestions() {
    return items
        .map((item) {
          final question = item.questionGroupItem.questions[0];
          if (question.choiceQuestion != null) {
            return _toMultipleChoiceQuestion(item);
          } else if (question.rowQuestion != null || question.textQuestion != null) {
            return _toTextFieldQuestion(item);
          }
        })
        .whereType<Question>()
        .toList();
  }

  MultipleChoiceQuestion _toMultipleChoiceQuestion(Gget_questionnaireData_fetchHealthQuiz_items item) {
    final title = item.questionGroupItem.title;
    final question = item.questionGroupItem.questions[0];
    final optionsAnswers = question.choiceQuestion!.options
        .map(
          (option) => OptionAnswer(
            label: option.value,
            code: option.code,
          ),
        )
        .toList();

    if (question.choiceQuestion!.type == GChoiceQuestionType.RADIO) {
      return SingleAnswerQuestion(
        title: title,
        subTitle: question.choiceQuestion!.title,
        code: question.code,
        options: optionsAnswers,
        numberOfNextQuestionsToSkip: item.questionGroupItem.goToNext?.toInt() ?? 0,
        conditionToSkipNext: item.questionGroupItem.goToNextOn?.toList() ?? [],
        numberOfPreviousQuestionsToSkip: item.questionGroupItem.goToPrevious?.toInt() ?? 0,
        conditionToSkipPrevious: item.questionGroupItem.goToPreviousOn?.toList() ?? [],
      );
    } else {
      return MultipleAnswersQuestion(
        title: title,
        subTitle: question.choiceQuestion!.title,
        code: question.code,
        options: optionsAnswers,
        numberOfNextQuestionsToSkip: item.questionGroupItem.goToNext?.toInt() ?? 0,
        conditionToSkipNext: item.questionGroupItem.goToNextOn?.toList() ?? [],
        numberOfPreviousQuestionsToSkip: item.questionGroupItem.goToPrevious?.toInt() ?? 0,
        conditionToSkipPrevious: item.questionGroupItem.goToPreviousOn?.toList() ?? [],
      );
    }
  }

  TextFieldAnswerQuestion _toTextFieldQuestion(Gget_questionnaireData_fetchHealthQuiz_items item) {
    final question = item.questionGroupItem.questions[0];

    List<TextInputConstraints> constraints = [];
    if (question.constraints != null) {
      constraints = question.constraints!
          .map(
            (constraint) => TextInputConstraints(
              regexp: constraint.regexp,
              rangeMin: constraint.range?.min,
              rangeMax: constraint.range?.max,
              errorMessage: constraint.message,
            ),
          )
          .toList();
    }

    return TextFieldAnswerQuestion(
      title: item.questionGroupItem.title,
      code: question.code,
      label: question.rowQuestion?.title ?? question.textQuestion!.title,
      description: question.rowQuestion?.description,
      maxCharacters: question.maxLength ?? 0,
      constraints: constraints,
      numberOfNextQuestionsToSkip: item.questionGroupItem.goToNext?.toInt() ?? 0,
      conditionToSkipNext: item.questionGroupItem.goToNextOn?.toList() ?? [],
      numberOfPreviousQuestionsToSkip: item.questionGroupItem.goToPrevious?.toInt() ?? 0,
      conditionToSkipPrevious: item.questionGroupItem.goToPreviousOn?.toList() ?? [],
      isMultiline: question.textQuestion != null,
    );
  }
}
