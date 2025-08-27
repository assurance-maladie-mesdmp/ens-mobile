/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:ferry/ferry.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_get_cities.query.req.gql.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/commune/data/search_communes_repository_mapper.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/commune.dart';
import 'package:fr_cnamts_ens/utils/extensions/graphql_extensions.dart';

abstract interface class ISearchCommunesRepository {
  Future<RequestResult<List<Commune>>> searchCommunes({required String input});
}

class SearchCommunesRepository extends ISearchCommunesRepository {
  final Client ferryClient;
  final Crashlytics crashlytics;

  SearchCommunesRepository(this.ferryClient, this.crashlytics);

  @override
  Future<RequestResult<List<Commune>>> searchCommunes({required String input}) async {
    try {
      final query = Gget_citiesReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.input = SearchCommunesRepositoryMapper.buildInput(input),
      );
      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data?.getGroupedCityInformation;
      if (result == null) {
        return RequestResultError.genericError();
      }

      return RequestResultSuccess(SearchCommunesRepositoryMapper.toEnsCity(result.toList()));
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }
}
