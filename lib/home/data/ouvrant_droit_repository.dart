/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:ferry/ferry.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ouvrant_droit_data.query.req.gql.dart';
import 'package:fr_cnamts_ens/home/data/ouvrant_droit_repository_mapper.dart';
import 'package:fr_cnamts_ens/home/domain/ens_ouvrant_droit_data_wrapper.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';

abstract class IOuvrantDroitRepository {
  Future<EnsOuvrantDroitDataWrapper> loadUserDomain(String patientId);
}

class OuvrantDroitRepository extends IOuvrantDroitRepository {
  final Client ferryClient;
  final Crashlytics crashlytics;

  OuvrantDroitRepository({
    required this.ferryClient,
    required this.crashlytics,
  });

  @override
  Future<EnsOuvrantDroitDataWrapper> loadUserDomain(String patientId) async {
    try {
      final query = Gget_ouvrant_droits_dataReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId
          ..vars.input.patientId = patientId,
      );

      final streamResponse = ferryClient.request(query);
      final graphQLResponse = await streamResponse.first;

      final data = graphQLResponse.data;
      final graphQLDataWrapped = data != null ? data.toEnsUserDataWrapper() : EnsOuvrantDroitDataWrapper.error();

      return graphQLDataWrapped;
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return EnsOuvrantDroitDataWrapper.error();
    }
  }
}
