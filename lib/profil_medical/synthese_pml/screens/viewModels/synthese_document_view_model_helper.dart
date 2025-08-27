/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:clock/clock.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/data/questionnaire_ages_cles_mapper.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';

class SyntheseDocumentViewModelHelper {
  static String preparePmlFileName(String firstname, String lastname) {
    final date = clock.now();
    final preparedFirstName = firstname.capitalizeName().replaceAll(' ', '').replaceAll('-', '').replaceAll('\'', '');
    final preparedLastName = lastname.toUpperCase().replaceAll(' ', '').replaceAll('-', '').replaceAll('\'', '');
    final preparedMonth = date.month.toString().padLeft(2, '0');
    final preparedDay = date.day.toString().padLeft(2, '0');
    final preparedHour = date.hour.toString().padLeft(2, '0');
    final preparedMinute = date.minute.toString().padLeft(2, '0');
    return 'Profilmedical_${preparedFirstName}_${preparedLastName}_${date.year}$preparedMonth${preparedDay}_$preparedHour$preparedMinute';
  }

  static String prepareQuestionnaireFileName(String firstname, String lastname, QuestionnaireCode questionnaireCode) {
    final date = clock.now();
    final preparedFirstName = firstname.toUpperCase().replaceAll(' ', '').replaceAll('-', '').replaceAll('\'', '');
    final preparedLastName = lastname.toUpperCase().replaceAll(' ', '').replaceAll('-', '').replaceAll('\'', '');
    final preparedMonth = date.month.toString().padLeft(2, '0');
    final preparedDay = date.day.toString().padLeft(2, '0');
    final preparedTrancheAge = questionnaireCode.getTrancheAgeString();
    return 'QuestionnaireSante_${preparedTrancheAge}_${preparedLastName}_${preparedFirstName}_${date.year}$preparedMonth$preparedDay';
  }

  static String prepareQuestionnaireBaseFileName(
    String firstname,
    String lastname,
    QuestionnaireCode questionnaireCode,
  ) {
    final ageClefCode = questionnaireCode.getTrancheAgeString();
    final preparedFirstName = firstname.toUpperCase().replaceAll(' ', '').replaceAll('-', '').replaceAll('\'', '');
    final preparedLastName = lastname.toUpperCase().replaceAll(' ', '').replaceAll('-', '').replaceAll('\'', '');
    return 'QuestionnaireSante_${ageClefCode}_${preparedLastName}_$preparedFirstName';
  }
}
