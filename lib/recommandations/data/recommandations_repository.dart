/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:ferry/ferry.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_incentive_reco.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_recommandation_get_delayed_recommendations.query.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_recommandation_get_delayed_recommendations.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_recommandation_post_dismiss_recommandation.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/data/questionnaire_ages_cles_mapper.dart';
import 'package:fr_cnamts_ens/recommandations/data/recommandations_repository_mapper.dart';
import 'package:fr_cnamts_ens/recommandations/domain/ens_delayed_recommandation.dart';
import 'package:fr_cnamts_ens/recommandations/domain/ens_recommandation.dart';
import 'package:fr_cnamts_ens/utils/extensions/graphql_extensions.dart';

abstract class IRecommandationsRepository {
  Future<RequestResult<GetRecommandationsResponse>> getRecommandations(String patientId);

  Future<RequestResult<RecommandationDifferee?>> fetchRecommandationDifferee(String patientId);

  Future<RequestResult<void>> dismissRecommandationDifferee(String patientId, RecommandationDiffereeCode code);
}

class GetRecommandationsResponse extends Equatable {
  final List<EnsRecommandation> recommandations;
  final QuestionnaireCode? questionnaireCode;
  final String? questionnaireVersion;
  final String? questionnaireLastVersion;

  const GetRecommandationsResponse({
    required this.recommandations,
    this.questionnaireCode,
    this.questionnaireVersion,
    this.questionnaireLastVersion,
  });

  @override
  List<Object?> get props => [
        recommandations,
        questionnaireCode,
        questionnaireVersion,
        questionnaireLastVersion,
      ];
}

class RecommandationsRepository extends IRecommandationsRepository {
  final Client ferryClient;
  final Crashlytics crashlytics;

  RecommandationsRepository(this.ferryClient, this.crashlytics);

  @override
  Future<RequestResult<GetRecommandationsResponse>> getRecommandations(String patientId) async {
    try {
      final query = Gget_recommandationsReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId,
      );
      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data?.getIncentiveReco;
      if (result != null) {
        return RequestResultSuccess(RecommandationsRepositoryMapper.toGetRecommandationsResponse(result.toList()));
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<RecommandationDifferee?>> fetchRecommandationDifferee(String patientId) async {
    try {
      final query = Gget_delayed_recommendationsReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId,
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }
      final result = graphQLResponse.data?.getDelayedRecommendations;

      if (result != null) {
        final recommandationsAAfficher = result.where(
          (recommandation) {
            if (recommandation.code == GRecommendationCode.INCITER_MES_ENFANT) {
              return recommandation.preference.doitEtreAffichee &&
                  recommandation.data?.enfants != null &&
                  recommandation.data!.enfants!.isNotEmpty;
            }
            return recommandation.preference.doitEtreAffichee;
          },
        ).toList();

        Gget_delayed_recommendationsData_getDelayedRecommendations? recommandationAAfficherPrioritaire;
        switch (recommandationsAAfficher.length) {
          case 0:
            return RequestResultSuccess(null);
          case 1:
            recommandationAAfficherPrioritaire = recommandationsAAfficher.first;
          default:
            recommandationAAfficherPrioritaire = recommandationsAAfficher.reduce(
              (currentReco, nextReco) => currentReco.priority < nextReco.priority ? currentReco : nextReco,
            );
        }

        final recommandation =
            RecommandationsRepositoryMapper.toRecommandationDifferee(recommandationAAfficherPrioritaire);
        return RequestResultSuccess(recommandation);
      }
      return RequestResultError.genericError();
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<void>> dismissRecommandationDifferee(String patientId, RecommandationDiffereeCode code) async {
    try {
      final mutation = Gpost_dismiss_recommandationReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId
          ..vars.recommendationCode = RecommandationsRepositoryMapper.toGRecommandationCode(code),
      );
      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }
      final result = graphQLResponse.data?.postponeRecommendationDisplay;
      if (result?.success == true) {
        return RequestResultSuccess(null);
      }
      return RequestResultError.genericError();
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }
}
