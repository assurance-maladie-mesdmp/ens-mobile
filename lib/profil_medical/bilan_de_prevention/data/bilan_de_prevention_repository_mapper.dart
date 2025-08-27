/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:built_collection/built_collection.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_bilan_de_prevention_get_questionnaires.query.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_bilan_de_prevention_questionnaire.fragment.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart';
import 'package:fr_cnamts_ens/profil_medical/bilan_de_prevention/domain/bilan_de_prevention_questionnaire.dart';
import 'package:fr_cnamts_ens/profil_medical/bilan_de_prevention/domain/bilan_de_prevention_questionnaires.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/data/questionnaire_ages_cles_mapper.dart';

class BilanDePreventionRepositoryMapper {
  static BilanDePreventionQuestionnaires toEnsQuestionnaires(
    Gget_questionnairesData_fetchAllHealthQuizStatus fetchAllHealthQuizStatus,
  ) {
    return BilanDePreventionQuestionnaires(
      isEmpty: fetchAllHealthQuizStatus.isEmpty,
      ensQuestionnairesAFaire: mapToEnsQuestionnaire(fetchAllHealthQuizStatus.healthQuizListToDo),
      ensQuestionnairesEnCours: mapToEnsQuestionnaire(fetchAllHealthQuizStatus.healthQuizListDoing),
      ensQuestionnairesTermines: mapToEnsQuestionnaire(fetchAllHealthQuizStatus.healthQuizListDone),
    );
  }

  static List<BilanDePreventionQuestionnaire> mapToEnsQuestionnaire(BuiltList<Gquestionnaire> healthQuiz) {
    return healthQuiz
        .map(
          (healthQuiz) => BilanDePreventionQuestionnaire(
            responseId: healthQuiz.response?.id,
            title: healthQuiz.title,
            dateDeDisponibilite: DateTime.parse(healthQuiz.availableLimitDate),
            code: getQuizCodeFromString(healthQuiz.code),
            userVersion: healthQuiz.response?.version ?? healthQuiz.lastVersion,
            dateDeDerniereMiseAJour: healthQuiz.response?.lastUpdateUserDate != null
                ? DateTime.parse(healthQuiz.response!.lastUpdateUserDate)
                : null,
            isAvailable: DateTime.now().isBefore(DateTime.parse(healthQuiz.availableLimitDate)),
            isDraft: healthQuiz.response?.status == GHealthQuizCompletionStatus.DRAFT,
          ),
        )
        .toList();
  }
}
