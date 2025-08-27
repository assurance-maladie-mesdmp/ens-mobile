/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/domain/models/habitude_de_vie_answer.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/domain/models/habitude_de_vie_enum.dart';

class HabitudesDeVieOutputMapper {
  static List<GLifestyleAnswerInput> toLifestyleAnswerInputList(List<HabitudeDeVieUserDetailAnswer> answers) {
    return answers.map((answer) => toLifestyleAnswerInput(answer)).nonNulls.toList();
  }

  static GLifestyleAnswerInput toLifestyleAnswerInput(HabitudeDeVieUserDetailAnswer answer) {
    String? textValue;
    String? enumValue;

    switch (answer) {
      case final HabitudeDeVieUserDetailRadioAnswer radioAnswer:
        enumValue = radioAnswer.value;
      case final HabitudeDeVieUserDetailTextAnswer answer:
        textValue = answer.value;
    }
    return GLifestyleAnswerInput(
      (input) => input
        ..name = answer.code
        ..countValue = textValue
        ..value = enumValue,
    );
  }

  static String toGraphQL(HabitudeDeVieCategoryCode code) {
    return switch (code) {
      HabitudeDeVieCategoryCode.TOBACCO => 'tobacco',
      HabitudeDeVieCategoryCode.PHYSICAL_ACTIVITY => 'physicalActivity',
      HabitudeDeVieCategoryCode.FOOD => 'food',
      HabitudeDeVieCategoryCode.SOMMEIL => 'sleep',
      HabitudeDeVieCategoryCode.ECRANS => 'screen',
      HabitudeDeVieCategoryCode.ALCOOL => 'alcohol',
    };
  }

  static GLifestyleSectionEnum toLifestyleSectionEnum(HabitudeDeVieCategoryCode code) {
    return switch (code) {
      HabitudeDeVieCategoryCode.TOBACCO => GLifestyleSectionEnum.TOBACCO,
      HabitudeDeVieCategoryCode.PHYSICAL_ACTIVITY => GLifestyleSectionEnum.PHYSICAL_ACTIVITY,
      HabitudeDeVieCategoryCode.FOOD => GLifestyleSectionEnum.FOOD,
      HabitudeDeVieCategoryCode.SOMMEIL => GLifestyleSectionEnum.SLEEP,
      HabitudeDeVieCategoryCode.ECRANS => GLifestyleSectionEnum.SCREEN,
      HabitudeDeVieCategoryCode.ALCOOL => GLifestyleSectionEnum.ALCOHOL,
    };
  }
}
