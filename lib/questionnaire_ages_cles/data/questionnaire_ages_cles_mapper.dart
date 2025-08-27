/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:built_collection/built_collection.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_questionnaire_ages_cles.fragment.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_questionnaire_get_reponses_questionnaire.query.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/domain/models/debut_informations.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/domain/models/debut_informations_item.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/domain/models/fin_informations.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/domain/models/questionnaire.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/domain/models/user_answers.dart';
import 'package:fr_cnamts_ens/ui/resources/resource_extension.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

enum QuestionnaireCode {
  QUIZ_18_25_CODE,
  QUIZ_45_50_CODE,
  QUIZ_60_65_CODE,
  QUIZ_70_75_CODE,
  UNKNOWN;

  factory QuestionnaireCode.fromSyntheseFileName(String syntheseFileName) {
    final endIndex = syntheseFileName.indexOf('ans');
    final indexFound = endIndex != -1;

    if (indexFound) {
      return QuestionnaireCode.fromfileNamePrefix(syntheseFileName.substring(0, endIndex + 3));
    } else {
      return QuestionnaireCode.UNKNOWN;
    }
  }

  factory QuestionnaireCode.fromfileNamePrefix(String fileNamePrefix) {
    return switch (fileNamePrefix) {
      'QuestionnaireSante_1825ans' => QuestionnaireCode.QUIZ_18_25_CODE,
      'QuestionnaireSante_4550ans' => QuestionnaireCode.QUIZ_45_50_CODE,
      'QuestionnaireSante_6065ans' => QuestionnaireCode.QUIZ_60_65_CODE,
      'QuestionnaireSante_7075ans' => QuestionnaireCode.QUIZ_70_75_CODE,
      _ => QuestionnaireCode.UNKNOWN,
    };
  }

  String getValue() {
    return switch (this) {
      QuestionnaireCode.QUIZ_18_25_CODE => 'questionnaire-age-cle_18-25_tous-sexe',
      QuestionnaireCode.QUIZ_45_50_CODE => 'questionnaire-age-cle_45-50_tous-sexe',
      QuestionnaireCode.QUIZ_60_65_CODE => 'questionnaire-age-cle_60-65_tous-sexe',
      QuestionnaireCode.QUIZ_70_75_CODE => 'questionnaire-age-cle_70-75_tous-sexe',
      QuestionnaireCode.UNKNOWN => '',
    };
  }

  String getCarouselTitle() {
    return switch (this) {
      QuestionnaireCode.QUIZ_18_25_CODE =>
        'Entre 18 et 25 ans, pour faire le point sur ma santé, je prépare ma visite médicale avec mon médecin.',
      QuestionnaireCode.QUIZ_45_50_CODE =>
        'Entre 45 et 50 ans, pour faire le point sur ma santé, je prépare ma visite médicale avec mon médecin.',
      QuestionnaireCode.QUIZ_60_65_CODE =>
        'Entre 60 et 65 ans, pour faire le point sur ma santé, je prépare ma visite médicale avec mon médecin.',
      QuestionnaireCode.QUIZ_70_75_CODE =>
        'Entre 70 et 75 ans, pour faire le point sur ma santé, je prépare ma visite médicale avec mon médecin.',
      QuestionnaireCode.UNKNOWN => '',
    };
  }

  String getTrancheAgeString() {
    return switch (this) {
      QuestionnaireCode.QUIZ_18_25_CODE => '1825ans',
      QuestionnaireCode.QUIZ_45_50_CODE => '4550ans',
      QuestionnaireCode.QUIZ_60_65_CODE => '6065ans',
      QuestionnaireCode.QUIZ_70_75_CODE => '7075ans',
      QuestionnaireCode.UNKNOWN => '',
    };
  }

  String getTrancheAgeForTracking() {
    return switch (this) {
      QuestionnaireCode.QUIZ_18_25_CODE => '18-25',
      QuestionnaireCode.QUIZ_45_50_CODE => '45-50',
      QuestionnaireCode.QUIZ_60_65_CODE => '60-65',
      QuestionnaireCode.QUIZ_70_75_CODE => '70-75',
      QuestionnaireCode.UNKNOWN => '',
    };
  }

  String getLogoFilePath() {
    return switch (this) {
      QuestionnaireCode.QUIZ_18_25_CODE => EnsImages.bilan_prevention_18_25ans,
      QuestionnaireCode.QUIZ_45_50_CODE => EnsImages.bilan_prevention_45_50ans,
      QuestionnaireCode.QUIZ_60_65_CODE => EnsImages.bilan_prevention_60_65ans,
      QuestionnaireCode.QUIZ_70_75_CODE => EnsImages.bilan_prevention_70_75ans,
      QuestionnaireCode.UNKNOWN => EnsImages.error,
    };
  }

  String getSyntheseQuestionnaireFileNamePrefix() {
    return switch (this) {
      QuestionnaireCode.QUIZ_18_25_CODE => 'QuestionnaireSante_1825ans',
      QuestionnaireCode.QUIZ_45_50_CODE => 'QuestionnaireSante_4550ans',
      QuestionnaireCode.QUIZ_60_65_CODE => 'QuestionnaireSante_6065ans',
      QuestionnaireCode.QUIZ_70_75_CODE => 'QuestionnaireSante_7075ans',
      QuestionnaireCode.UNKNOWN => '',
    };
  }
}

QuestionnaireCode getQuizCodeFromString(String? codeStr) {
  return switch (codeStr) {
    'questionnaire-age-cle_18-25_tous-sexe' => QuestionnaireCode.QUIZ_18_25_CODE,
    'questionnaire-age-cle_45-50_tous-sexe' => QuestionnaireCode.QUIZ_45_50_CODE,
    'questionnaire-age-cle_60-65_tous-sexe' => QuestionnaireCode.QUIZ_60_65_CODE,
    'questionnaire-age-cle_70-75_tous-sexe' => QuestionnaireCode.QUIZ_70_75_CODE,
    _ => QuestionnaireCode.UNKNOWN,
  };
}

String getSyntheseQuestionnaireFileNamePrefixFromCode(QuestionnaireCode questionnaireCode) {
  return switch (questionnaireCode) {
    QuestionnaireCode.QUIZ_18_25_CODE => 'QuestionnaireSante_1825ans',
    QuestionnaireCode.QUIZ_45_50_CODE => 'QuestionnaireSante_4550ans',
    QuestionnaireCode.QUIZ_60_65_CODE => 'QuestionnaireSante_6065ans',
    QuestionnaireCode.QUIZ_70_75_CODE => 'QuestionnaireSante_7075ans',
    QuestionnaireCode.UNKNOWN => '',
  };
}

String getSyntheseQuestionnaireFileNamePrefixFromFileName(String syntheseFileName) {
  final endIndex = syntheseFileName.indexOf('ans');

  if (endIndex != -1) {
    return syntheseFileName.substring(0, endIndex + 3);
  } else {
    return syntheseFileName;
  }
}

extension QuestionnaireAgesClesStartMapper on GstartQuestionnaire {
  DebutInformations toDebutInformations() {
    List<DebutInformationsItem> items = [];

    final information = start.information;
    if (information != null) {
      items = information.cards
          .map(
            (card) => DebutInformationsItem(
              image: EnsImagesExtension.getSvgPath(card.image.replaceAll('-', '_')),
              text: card.text,
            ),
          )
          .toList();
    }

    return DebutInformations(
      title: start.title,
      descriptions: start.description.toList(),
      items: items,
    );
  }
}

extension QuestionnaireAgesClesEndtMapper on GendQuestionnaire {
  FinInformations toFinInformations() {
    return FinInformations(
      labels: end.medicalAppointment?.card.description.toList() ?? [],
      link: end.medicalAppointment?.card.link?.href,
      linkText: end.medicalAppointment?.card.link?.text,
      titreBouton: end.medicalAppointment?.card.titleButton,
    );
  }
}

extension QuestionnaireAgesHealthQuizInputMapper on Questionnaire {
  GHealthQuizResponseInputBuilder toHealthQuizInput(
    String patientId,
    UserAnswers userResponses,
  ) {
    final healthQuizInput = GHealthQuizResponseInput(
      (input) => input
        ..patientId = patientId
        ..quizCode = code.getValue()
        ..quizVersion = version
        ..details = ListBuilder(
          userResponses.answers.entries.map(
            (entry) => GResponseInput(
              (input) => input
                ..questionCode = entry.key
                ..value = ListBuilder(entry.value),
            ),
          ),
        )
        ..status = userResponses.isDraft ? GHealthQuizCompletionStatus.DRAFT : GHealthQuizCompletionStatus.FINAL
        ..questionToDisplay = userResponses.questionToDisplayIndex.toDouble(),
    );

    final healthQuizResponseInputBuilder = GHealthQuizResponseInputBuilder();
    healthQuizResponseInputBuilder.replace(healthQuizInput);
    return healthQuizResponseInputBuilder;
  }
}

extension QuestionnaireAgesClesResponsesMapper on Gget_reponses_questionnaireData_getHealthQuizResponses? {
  UserAnswers toUserAnswers() {
    final date = this?.lastUpdateUserDate != null ? DateTime.parse(this!.lastUpdateUserDate) : null;
    final dateUTC =
        date != null ? DateTime.utc(date.year, date.month, date.day, date.hour, date.minute, date.second) : null;
    return UserAnswers(
      isDraft: this?.status == GHealthQuizCompletionStatus.DRAFT,
      id: this?.responseId ?? '',
      questionToDisplayIndex: this?.questionToDisplay?.toInt() ?? 0,
      lastUpdateDate: dateUTC,
      answers:
          this?.details != null ? {for (final answer in this!.details) answer.questionCode: answer.value.toList()} : {},
    );
  }
}
