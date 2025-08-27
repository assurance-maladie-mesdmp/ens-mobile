/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/data/questionnaire_ages_cles_mapper.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/synthese_questionnaire_ages_cles/data/synthese_questionnaire_ages_cles_repository.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/synthese_questionnaire_ages_cles/domain/models/synthese_questionnaire.dart';

class GuestSyntheseQuestionnaireAgesClesRepository extends ISyntheseQuestionnaireAgesClesRepository {
  @override
  Future<RequestResult<SyntheseQuestionnaire>> getSyntheseQuestionnaireAgesCles({
    required String patientId,
    required QuestionnaireCode questionnaireCode,
    required String? questionnaireVersion,
  }) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }
}
