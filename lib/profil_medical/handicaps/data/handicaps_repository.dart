/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:built_collection/built_collection.dart';
import 'package:ferry/ferry.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_handicap_create.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_handicap_delete.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_handicap_get.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_handicap_update.query.req.gql.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';
import 'package:fr_cnamts_ens/profil_medical/handicaps/data/handicaps_repository_mapper.dart';
import 'package:fr_cnamts_ens/profil_medical/handicaps/domain/ens_handicap.dart';
import 'package:fr_cnamts_ens/profil_medical/handicaps/domain/ens_handicaps.dart';
import 'package:fr_cnamts_ens/utils/extensions/graphql_extensions.dart';

abstract class IHandicapsRepository {
  Future<RequestResult<EnsHandicaps>> getHandicaps(String patientId);

  Future<RequestResult<EditingHandicap>> addHandicap(EditingHandicap editingEnsHandicap, String patientId);

  Future<RequestResult<EditingHandicap>> updateHandicap(EditingHandicap editingEnsHandicap, String patientId);

  Future<RequestResult<String>> deleteHandicap(String id, String patientId);
}

class HandicapsRepository extends IHandicapsRepository {
  final Client ferryClient;
  final Crashlytics crashlytics;

  HandicapsRepository(this.ferryClient, this.crashlytics);

  @override
  Future<RequestResult<EnsHandicaps>> getHandicaps(String patientId) async {
    try {
      final query = Gget_handicapsReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId,
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }
      final data = graphQLResponse.data;

      if (data != null) {
        final handicaps = HandicapsRepositoryMapper.toEnsHandicaps(
          data.fetchAllDisabilities.disabilities,
          data.unconcerned.declarationDate,
        );
        return RequestResultSuccess(handicaps);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<EditingHandicap>> addHandicap(EditingHandicap editingEnsHandicap, String patientId) async {
    try {
      final query = Gadd_handicapReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.disabilityInput.name = editingEnsHandicap.name
          ..vars.disabilityInput.comment = editingEnsHandicap.comment
          ..vars.disabilityInput.types = ListBuilder(editingEnsHandicap.types.map((e) => e.toGraphQl()))
          ..vars.disabilityInput.disabilityRate = editingEnsHandicap.disabilityRate.toGraphQl()
          ..vars.disabilityInput.technicalHelp = editingEnsHandicap.technicalHelp
          ..vars.disabilityInput.humanHelp = editingEnsHandicap.humanHelp.toGraphQl()
          ..vars.disabilityInput.patientId = patientId,
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }
      if (graphQLResponse.data == null || graphQLResponse.data?.createDisability.success == false) {
        return RequestResultError.genericError();
      } else {
        return RequestResultSuccess(editingEnsHandicap);
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<EditingHandicap>> updateHandicap(
    EditingHandicap editingEnsHandicap,
    String patientId,
  ) async {
    try {
      final query = Gupdate_handicapReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.disabilityUpdateInput.patientId = patientId
          ..vars.disabilityUpdateInput.id = editingEnsHandicap.id
          ..vars.disabilityUpdateInput.name = editingEnsHandicap.name
          ..vars.disabilityUpdateInput.comment = editingEnsHandicap.comment
          ..vars.disabilityUpdateInput.types = ListBuilder(editingEnsHandicap.types.map((e) => e.toGraphQl()))
          ..vars.disabilityUpdateInput.disabilityRate = editingEnsHandicap.disabilityRate.toGraphQl()
          ..vars.disabilityUpdateInput.technicalHelp = editingEnsHandicap.technicalHelp
          ..vars.disabilityUpdateInput.humanHelp = editingEnsHandicap.humanHelp.toGraphQl(),
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }
      if (graphQLResponse.data == null || graphQLResponse.data?.updateDisability.success == false) {
        return RequestResultError.genericError();
      } else {
        return RequestResultSuccess(editingEnsHandicap);
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<String>> deleteHandicap(String id, String patientId) async {
    try {
      final query = Gdelete_handicapReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId
          ..vars.id = id,
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }
      if (graphQLResponse.data == null || graphQLResponse.data?.removeDisability.success == false) {
        return RequestResultError.genericError();
      } else {
        return RequestResultSuccess(id);
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }
}
