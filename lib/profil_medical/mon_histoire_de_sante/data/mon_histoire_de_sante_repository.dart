/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:ferry/ferry.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_maladie_en_cours_get.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mhs_get_histoire_de_sante_episodes.query.req.gql.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/data/mon_histoire_de_sante_repository_mapper.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/domain/models/mon_histoire_de_sante_episode.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/domain/models/mon_histoire_de_sante_episodes.dart';
import 'package:fr_cnamts_ens/utils/extensions/graphql_extensions.dart';

abstract class IMonHistoireDeSanteRepository {
  Future<RequestResult<MonHistoireDeSanteEpisodes>> getMonHistoireDeSanteEpisodes({
    required String patientId,
    int page,
  });

  Future<RequestResult<List<MonHistoireDeSanteEpisodeMaladie>>> getMaladiesInProgress(String patientId);
}

class MonHistoireDeSanteRepository extends IMonHistoireDeSanteRepository {
  final Client ferryClient;
  final Crashlytics crashlytics;

  MonHistoireDeSanteRepository(this.ferryClient, this.crashlytics);

  @override
  Future<RequestResult<MonHistoireDeSanteEpisodes>> getMonHistoireDeSanteEpisodes({
    required String patientId,
    int page = 1,
  }) async {
    try {
      final query = Gget_histoire_de_sante_episodesReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId
          ..vars.currentPage = page.toDouble(),
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data?.dailyEpisodes;
      if (result != null) {
        final episodes = MonHistoireDeSanteRepositoryMapper.mapToEnsMonHistoireDeSanteEpisodesFromRepo(result.episodes);
        return RequestResultSuccess(
          MonHistoireDeSanteEpisodes(episodes: episodes, maxEpisodes: result.numberOfEpisodes.toInt()),
        );
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<List<MonHistoireDeSanteEpisodeMaladie>>> getMaladiesInProgress(String patientId) async {
    try {
      final query = Gget_maladies_in_progressReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId,
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data?.getDiseaseEpisodeInProgress;
      if (result != null) {
        final episodes = MonHistoireDeSanteRepositoryMapper.mapToEnsMonHistoireDeSanteMaladie(result);
        return RequestResultSuccess(episodes);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }
}
