/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:ferry/ferry.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ps_block_ps.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ps_get_consentement.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ps_unblock_ps.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/data/consentements_ps_repository_mapper.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/domain/models/ens_consentement_ps.dart';
import 'package:fr_cnamts_ens/utils/extensions/graphql_extensions.dart';

abstract class IConsentementsPsRepository {
  Future<RequestResult<List<EnsConsentementPs>>> getConsentementPs(String patientId);

  Future<RequestResult<void>> blockPs(String patientId, String rppsId);

  Future<RequestResult<void>> unblockPs(String patientId, String psId, String consentementId);
}

class ConsentementsPsRepository extends IConsentementsPsRepository {
  final Client ferryClient;
  final Crashlytics crashlytics;

  ConsentementsPsRepository(this.ferryClient, this.crashlytics);

  @override
  Future<RequestResult<List<EnsConsentementPs>>> getConsentementPs(String patientId) async {
    try {
      final input = GGetDmpConsentementInput((input) => input..patientId = patientId);
      final inputBuilder = GGetDmpConsentementInputBuilder();
      inputBuilder.replace(input);

      final query = Gget_consentement_psReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.dmpConsentementInput = inputBuilder,
      );

      final graphQLResponse = await ferryClient.request(query).first;

      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data?.getDmpConsentementForHealthcareStaff;

      if (result != null) {
        final consentementsPs = ConsentementsPsRepositoryMapper.toEnsConsentementsPs(result.toList());
        if (consentementsPs == null) {
          return RequestResultError.genericError();
        }
        return RequestResultSuccess(consentementsPs);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e) {
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<void>> blockPs(String patientId, String professionnelSanteId) async {
    final query = Gblock_psReq(
      (builder) => builder
        ..fetchPolicy = FetchPolicy.NetworkOnly
        ..vars.patientId = patientId
        ..vars.rpps = professionnelSanteId,
    );

    try {
      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }
      final result = graphQLResponse.data?.blockPS;
      if (result != null && result.success) {
        return RequestResultSuccess(null);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e) {
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<void>> unblockPs(
    String patientId,
    String psId,
    String consentementId,
  ) async {
    final query = Gunblock_psReq(
      (builder) => builder
        ..fetchPolicy = FetchPolicy.NetworkOnly
        ..vars.patientId = patientId
        ..vars.rpps = psId
        ..vars.consentementId = consentementId,
    );

    try {
      final graphQLResponse = await ferryClient.request(query).first;

      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data?.unblockPS;
      if (result != null && result.success) {
        return RequestResultSuccess(null);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e) {
      return RequestResultError.genericError();
    }
  }
}
