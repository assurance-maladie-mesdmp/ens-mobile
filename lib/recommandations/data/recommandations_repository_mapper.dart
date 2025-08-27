/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_incentive_reco.fragment.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_recommandation_get_delayed_recommendations.query.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/data/questionnaire_ages_cles_mapper.dart';
import 'package:fr_cnamts_ens/recommandations/data/recommandations_repository.dart';
import 'package:fr_cnamts_ens/recommandations/domain/ens_delayed_recommandation.dart';
import 'package:fr_cnamts_ens/recommandations/domain/ens_recommandation.dart';

class RecommandationsRepositoryMapper {
  static List<EnsRecommandation> _toEnsRecommandations(
    List<GincentiveReco> incentiveRecoModelList,
  ) {
    return incentiveRecoModelList.map((recoModel) => _toEnsRecommandation(recoModel)).toList();
  }

  static EnsRecommandation _toEnsRecommandation(GincentiveReco incentiveRecoModel) {
    if (isQuestionnaireRecommandation(incentiveRecoModel.code)) {
      return EnsRecommandationQuestionnaire(
        recommandationCode: toRecommandationCode(incentiveRecoModel.code),
        questionnaireCode: incentiveRecoModel.data.quizCode!,
        questionnaireVersion: incentiveRecoModel.data.quizVersion?.round().toString() ?? '1',
        questionnaireLastVersion: incentiveRecoModel.data.lastVersion?.round().toString() ?? '1',
      );
    }
    return EnsRecommandation(recommandationCode: toRecommandationCode(incentiveRecoModel.code));
  }

  static GetRecommandationsResponse toGetRecommandationsResponse(List<GincentiveReco> result) {
    final firstQuestionnaire = result.firstWhereOrNull((reco) => reco.data.quizCode != null);
    final recommandations = _toEnsRecommandations(result);

    return GetRecommandationsResponse(
      recommandations: recommandations,
      questionnaireCode:
          firstQuestionnaire?.data.quizCode != null ? getQuizCodeFromString(firstQuestionnaire?.data.quizCode) : null,
      questionnaireVersion: firstQuestionnaire?.data.quizVersion?.round().toString(),
      questionnaireLastVersion: firstQuestionnaire?.data.lastVersion?.round().toString(),
    );
  }

  static RecommandationDifferee? toRecommandationDifferee(
    Gget_delayed_recommendationsData_getDelayedRecommendations delayedReco,
  ) {
    if (delayedReco.code == GRecommendationCode.INCITER_MES_ENFANT) {
      List<ProfilEnfantAActiver>? profilsEnfants;
      final resultEnfants = delayedReco.data?.enfants;
      if (resultEnfants != null) {
        profilsEnfants = resultEnfants
            .map((profil) => ProfilEnfantAActiver(firstName: profil.prenom, lastName: profil.nom))
            .toList();
        return RecommandationDifferee(
          recommandationCode: RecommandationDiffereeCode.INCITER_ACTIVER_PROFILS_ENFANTS,
          listeEnfants: profilsEnfants,
        );
      }
    }
    if (delayedReco.code == GRecommendationCode.DECOUVERTE_MES_ENFANT) {
      return const RecommandationDifferee(
        recommandationCode: RecommandationDiffereeCode.INCITER_DECOUVRIR_PROFILS_ENFANTS,
      );
    }
    return null;
  }

  static GRecommendationCode toGRecommandationCode(RecommandationDiffereeCode code) {
    return switch (code) {
      RecommandationDiffereeCode.INCITER_DECOUVRIR_PROFILS_ENFANTS => GRecommendationCode.DECOUVERTE_MES_ENFANT,
      RecommandationDiffereeCode.INCITER_ACTIVER_PROFILS_ENFANTS => GRecommendationCode.INCITER_MES_ENFANT,
    };
  }
}
