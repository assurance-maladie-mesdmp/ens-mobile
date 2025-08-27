/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/profil_medical/bilan_de_prevention/data/bilan_de_prevention_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/bilan_de_prevention/domain/bilan_de_prevention_questionnaire.dart';
import 'package:fr_cnamts_ens/profil_medical/bilan_de_prevention/domain/bilan_de_prevention_questionnaires.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/data/questionnaire_ages_cles_mapper.dart';

class GuestBilanDePreventionRepository extends IBilanDePreventionRepository {
  @override
  Future<RequestResult<BilanDePreventionQuestionnaires>> getQuestionnaires(String patientId) {
    return Future.value(
      RequestResultSuccess(
        BilanDePreventionQuestionnaires(
          isEmpty: false,
          ensQuestionnairesAFaire: [
            BilanDePreventionQuestionnaire(
              responseId: null,
              title: 'Questionnaire de santé 45-50 ans',
              dateDeDisponibilite: DateTime.parse('2028-01-24T09:08:23.516+01:00'),
              code: QuestionnaireCode.QUIZ_45_50_CODE,
              userVersion: 'V1',
              dateDeDerniereMiseAJour: null,
              isAvailable: true,
              isDraft: false,
            ),
          ],
          ensQuestionnairesEnCours: const [],
          ensQuestionnairesTermines: [
            BilanDePreventionQuestionnaire(
              responseId: 'responseId',
              title: 'Questionnaire de santé 18-25 ans',
              dateDeDisponibilite: DateTime.parse('2002-01-24T09:08:23.516+01:00'),
              code: QuestionnaireCode.QUIZ_18_25_CODE,
              userVersion: 'V1',
              dateDeDerniereMiseAJour: DateTime.parse('2002-01-12T09:08:23.516+01:00'),
              isAvailable: false,
              isDraft: false,
            ),
          ],
        ),
      ),
    );
  }
}
