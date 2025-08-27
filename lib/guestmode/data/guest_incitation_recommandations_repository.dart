/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/data/questionnaire_ages_cles_mapper.dart';
import 'package:fr_cnamts_ens/recommandations/data/recommandations_repository.dart';
import 'package:fr_cnamts_ens/recommandations/domain/ens_delayed_recommandation.dart';
import 'package:fr_cnamts_ens/recommandations/domain/ens_recommandation.dart';

class GuestRecommandationsRepository extends IRecommandationsRepository {
  @override
  Future<RequestResult<GetRecommandationsResponse>> getRecommandations(String patientId) {
    final recommandations = [
      const EnsRecommandation(recommandationCode: RecommandationCode.INFORMER_TRAITEMENT_EN_COURS),
      const EnsRecommandation(recommandationCode: RecommandationCode.INCITER_RAFRAICHIR_SYNTHESE_PML),
      const EnsRecommandation(recommandationCode: RecommandationCode.INCITER_COMPLETER_QUIZ),
    ];
    return Future.value(
      RequestResultSuccess(
        GetRecommandationsResponse(
          recommandations: recommandations,
          questionnaireCode: QuestionnaireCode.QUIZ_45_50_CODE,
          questionnaireVersion: '1',
        ),
      ),
    );
  }

  @override
  Future<RequestResult<RecommandationDifferee>> fetchRecommandationDifferee(String patientId) {
    return Future.value(
      RequestResultSuccess(
        const RecommandationDifferee(
          recommandationCode: RecommandationDiffereeCode.INCITER_ACTIVER_PROFILS_ENFANTS,
          listeEnfants: [
            ProfilEnfantAActiver(firstName: 'John', lastName: 'Doe'),
            ProfilEnfantAActiver(firstName: 'Jane', lastName: 'Doe'),
          ],
        ),
      ),
    );
  }

  @override
  Future<RequestResult<void>> dismissRecommandationDifferee(String patientId, RecommandationDiffereeCode code) async {
    return RequestResultSuccess(null);
  }
}
