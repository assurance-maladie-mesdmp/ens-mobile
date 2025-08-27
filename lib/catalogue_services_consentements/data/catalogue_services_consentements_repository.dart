/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:async';

import 'package:ferry/ferry.dart';
import 'package:fr_cnamts_ens/catalogue_services/domain/models/catalogue_service_consentement.dart';
import 'package:fr_cnamts_ens/catalogue_services_consentements/data/catalogue_services_consentements_repository_mapper.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_add_consent_for_service_by_oid.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_delete_consent_reapproval_requirement.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_get_consents_for_service_by_oid.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_remove_consent_for_service_by_oid.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_unsynchronize_service.query.req.gql.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';
import 'package:fr_cnamts_ens/utils/extensions/graphql_extensions.dart';

abstract class ICatalogueServicesConsentementsRepository {
  Future<RequestResult<List<CatalogueServiceConsentement>>> getConsentementsForService(String oid, String patientId);

  Future<RequestResult<void>> addConsentForServiceByOid(String oid, String context);

  Future<RequestResult<void>> removeConsentForServiceByOid(String oid, String context);

  Future<RequestResult<void>> unsynchronizeService(String oid);

  Future<RequestResult<void>> updateConsentementAfterMajorite({required String oid, required String patientId});
}

class CatalogueServicesConsentementsRepository extends ICatalogueServicesConsentementsRepository {
  final Client ferryClient;
  final Crashlytics crashlytics;

  CatalogueServicesConsentementsRepository(this.ferryClient, this.crashlytics);

  @override
  Future<RequestResult<List<CatalogueServiceConsentement>>> getConsentementsForService(
    String oid,
    String patientId,
  ) async {
    try {
      final query = Gget_consents_for_service_by_oidReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.oid = oid
          ..vars.patientId = patientId,
      );

      final graphQLResponse = await ferryClient.request(query).first;

      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }
      final data = graphQLResponse.data?.fetchFinalitiesConsentsForServiceByOid;
      if (data == null) {
        return RequestResultError.genericError();
      }
      return RequestResultSuccess(
        data
            .map((finality) => CatalogueServicesConsentementsRepositoryMapper.toCatalogueServiceConsentement(finality))
            .toList(),
      );
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<void>> addConsentForServiceByOid(String oid, String context) async {
    try {
      final query = Gadd_consent_for_service_by_oidReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.addFinalityConsentByServiceOid.oid = oid
          ..vars.addFinalityConsentByServiceOid.contexte = context,
      );

      final graphQLResponse = await ferryClient.request(query).first;

      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }
      final result = graphQLResponse.data?.addFinalityConsentByServiceOid;
      if (result != null && result.success) {
        return RequestResultSuccess(null);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<void>> removeConsentForServiceByOid(String oid, String context) async {
    try {
      final query = Gremove_consent_for_service_by_oidReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.removeFinalityConsentByServiceOid.oid = oid
          ..vars.removeFinalityConsentByServiceOid.contexte = context,
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data?.removeFinalityConsentByServiceOid;
      if (result != null && result.success) {
        return RequestResultSuccess(null);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<void>> unsynchronizeService(String oid) async {
    try {
      final query = Gunsynchronize_serviceReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.oid = oid,
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data?.deleteSynchronizedService;
      if (result != null && result.success) {
        return RequestResultSuccess(null);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<void>> updateConsentementAfterMajorite({required String oid, required String patientId}) async {
    try {
      final mutation = Gupdate_consentement_after_majoriteReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.serviceOid = oid
          ..vars.patientId = patientId,
      );

      final graphQLResponse = await ferryClient.request(mutation).first;

      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data?.deleteConsentReapprovalRequirement;
      if (result != null && result.success) {
        return RequestResultSuccess(null);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }
}
