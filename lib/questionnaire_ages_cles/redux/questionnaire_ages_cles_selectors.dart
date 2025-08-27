/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_type.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/data/questionnaire_ages_cles_mapper.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/domain/models/question.dart';
import 'package:fr_cnamts_ens/recommandations/domain/ens_recommandation.dart';
import 'package:fr_cnamts_ens/user/redux/user_selectors.dart';

class QuestionnaireAgesClesSelectors {
  const QuestionnaireAgesClesSelectors._();

  static List<Question>? getQuestions(EnsState state) {
    final questionnaireListState = state.questionnaireAgesClesState.questionsListState;
    return questionnaireListState.isSuccessWithData ? questionnaireListState.questionnaireAgesCles!.questions : null;
  }

  static Question? getCurrentQuestion(EnsState state) {
    final questions = getQuestions(state);
    return questions?[state.questionnaireAgesClesState.currentQuestionIndex];
  }

  static Question? getQuestionByIndex(EnsState state, int index) {
    final questions = getQuestions(state);
    return questions?[index];
  }

  static List<String> getCurrentAnswer(EnsState state) {
    final currentQuestionCode = getCurrentQuestion(state)?.code;
    final currentAnswer =
        currentQuestionCode != null ? state.questionnaireAgesClesState.answers[currentQuestionCode] : null;
    return currentAnswer ?? [];
  }

  static List<String> getQuestionCodesToReset(EnsState state, Question question) {
    final questions = getQuestions(state);
    if (questions != null) {
      final currentQuestionIndex = questions.indexOf(question);
      final currentQuestion = questions[currentQuestionIndex];
      final questionsToSkip = questions.sublist(
        currentQuestionIndex + 1,
        currentQuestionIndex + currentQuestion.numberOfNextQuestionsToSkip,
      );
      return questionsToSkip.map((question) => question.code).toList();
    }
    return [];
  }

  static String? getResponsesId(EnsState state) => state.questionnaireAgesClesState.responsesId;

  static bool isQuestionnaireNonExpire(EnsState state, QuestionnaireCode questionnaireCode) {
    final age = UserSelectors.getAge(state);
    if (age == null) {
      return false;
    }
    return switch (questionnaireCode) {
      QuestionnaireCode.QUIZ_18_25_CODE => age >= 18 && age <= 25,
      QuestionnaireCode.QUIZ_45_50_CODE => age >= 45 && age <= 50,
      QuestionnaireCode.QUIZ_60_65_CODE => age >= 60 && age <= 65,
      QuestionnaireCode.QUIZ_70_75_CODE => age >= 70 && age <= 75,
      QuestionnaireCode.UNKNOWN => false,
    };
  }

  static String? getSexePreFillAnswer(EnsState state) {
    final questionnaireRempliPourLaPremiereFois = state.recommandationsState.recommandations
        .where((element) => element.recommandationCode == RecommandationCode.INCITER_COMPLETER_QUIZ)
        .isNotEmpty;
    final sexData = state.userState.currentProfile?.sexe;

    if (questionnaireRempliPourLaPremiereFois) {
      return sexData?.getQuestionnaireEquivalence();
    }
    return null;
  }

  static String? getPreFillMesureAnswer(EnsState state, EnsMesureType mesureType) {
    final questionnaireRempliPourLaPremiereFois = state.recommandationsState.recommandations
        .where((recommandation) => recommandation.recommandationCode == RecommandationCode.INCITER_COMPLETER_QUIZ)
        .isNotEmpty;
    final lastMesureListStateStatus = state.mesuresState.lastMesuresState;
    final lastMesures = state.mesuresState.mesureStatesByType;
    final questionnaireUpdatedDate = state.questionnaireAgesClesState.lastUpdateDate;
    final lastMesure = lastMesures[mesureType]?.mesure;

    if (lastMesureListStateStatus.status.isSuccess() || lastMesure != null) {
      final lastMesureFormattedValue = lastMesure?.lastValue?.formattedMetricValue;
      final lastMesureDate = lastMesure?.lastValue?.effectiveDate;

      if (lastMesureFormattedValue != null) {
        final onPeutComparerLastMesureEtLaReponseDuQuestionnaire =
            questionnaireUpdatedDate != null && lastMesureDate != null;
        final lastMesureEstPlusRecenteQueLaReponseDuQuestionnaire =
            onPeutComparerLastMesureEtLaReponseDuQuestionnaire && lastMesureDate.isAfter(questionnaireUpdatedDate);
        final onPreRempliLeQuestionnaireAvecLaDerniereMesure = questionnaireRempliPourLaPremiereFois ||
            lastMesureEstPlusRecenteQueLaReponseDuQuestionnaire ||
            !onPeutComparerLastMesureEtLaReponseDuQuestionnaire;

        if (onPreRempliLeQuestionnaireAvecLaDerniereMesure) {
          return lastMesureFormattedValue;
        }
      }
    }
    return null;
  }
}
