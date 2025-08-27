/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:ferry/ferry.dart';
import 'package:fr_cnamts_ens/catalogue_services/data/catalogue_services_repository_mapper.dart';
import 'package:fr_cnamts_ens/catalogue_services/domain/models/catalogue_service.dart';
import 'package:fr_cnamts_ens/catalogue_services/domain/models/catalogue_service_detail.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_catalogue_service_get_detail_services.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_catalogue_service_get_services.query.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_catalogue_service_get_services.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_catalogue_service_get_services_without_synchro.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_catalogue_service_update_autorisation.query.req.gql.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';
import 'package:fr_cnamts_ens/utils/extensions/graphql_extensions.dart';

abstract class ICatalogueServicesRepository {
  Future<RequestResult<CatalogueServicesRepositoryResponse>> getAllServices({
    bool isSynchroEnabled = true,
    required String patientId,
  });

  Future<RequestResult<CatalogueServiceDetail>> getDetailService(String serviceId);

  Future<RequestResult<void>> updateAutorisation({required String patientId, required String serviceOid});
}

class CatalogueServicesRepository extends ICatalogueServicesRepository {
  final Client ferryClient;
  final Crashlytics crashlytics;

  CatalogueServicesRepository(this.ferryClient, this.crashlytics);

  @override
  Future<RequestResult<CatalogueServicesRepositoryResponse>> getAllServices({
    bool isSynchroEnabled = true,
    required String patientId,
  }) async {
    try {
      if (isSynchroEnabled) {
        return await _getAllServicesWithSynchro(patientId);
      } else {
        return await _getAllServicesWithoutSynchro();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  Future<RequestResult<CatalogueServicesRepositoryResponse>> _getAllServicesWithoutSynchro() async {
    final query = Gget_services_without_synchroReq(
      (builder) => builder..fetchPolicy = FetchPolicy.NetworkOnly,
    );
    final graphQLResponse = await ferryClient.request(query).first;
    if (graphQLResponse.checkGenericError(crashlytics)) {
      return RequestResultError.genericError();
    }

    final graphQLCatalogueServicesResult = graphQLResponse.data;
    if (graphQLCatalogueServicesResult != null) {
      final catalogueServices = CatalogueServicesRepositoryMapper.toCatalogueServicesWithoutSynchro(
        graphQLCatalogueServicesResult.fetchCatalogueServices.services.toList(),
      );
      final regions = CatalogueServicesRepositoryMapper.toRegionsWithoutSynchro(
        graphQLCatalogueServicesResult.fetchCatalogueServices.regions,
      );
      final thematics = CatalogueServicesRepositoryMapper.toThematicsWithoutSynchro(
        graphQLCatalogueServicesResult.fetchCatalogueServices.thematics,
      );
      return RequestResultSuccess(CatalogueServicesRepositoryResponse(catalogueServices, regions, thematics));
    } else {
      return RequestResultError.genericError();
    }
  }

  Future<RequestResult<CatalogueServicesRepositoryResponse>> _getAllServicesWithSynchro(String patientId) async {
    try {
      final query = Gget_servicesReq(
        (builder) => builder
          ..vars.patientId = patientId
          ..fetchPolicy = FetchPolicy.NetworkOnly,
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final Gget_servicesData? graphQLCatalogueServicesResult = graphQLResponse.data;
      if (graphQLCatalogueServicesResult != null) {
        final catalogueServices = CatalogueServicesRepositoryMapper.toCatalogueServices(
          graphQLCatalogueServicesResult.fetchCatalogueServices.services,
        );
        final regions =
            CatalogueServicesRepositoryMapper.toRegions(graphQLCatalogueServicesResult.fetchCatalogueServices.regions);
        final thematics = CatalogueServicesRepositoryMapper.toThematics(
          graphQLCatalogueServicesResult.fetchCatalogueServices.thematics,
        );
        return RequestResultSuccess(CatalogueServicesRepositoryResponse(catalogueServices, regions, thematics));
      }
      return RequestResultError.genericError();
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<CatalogueServiceDetail>> getDetailService(String serviceId) async {
    try {
      final query = Gget_detail_serviceReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.serviceId = serviceId,
      );
      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final data = graphQLResponse.data?.fetchServiceById;
      if (data == null) {
        return RequestResultError.genericError();
      }
      return RequestResultSuccess(CatalogueServicesRepositoryMapper.toCatalogueServiceDetail(data));
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<void>> updateAutorisation({required String patientId, required String serviceOid}) async {
    try {
      final mutation = Gupdate_autorisationReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId
          ..vars.serviceOid = serviceOid,
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.hasErrors) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data;
      if (result != null && result.confirmUpdateServiceVersionInformation.success) {
        return RequestResultSuccess(null);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e) {
      return RequestResultError.genericError();
    }
  }
}

class CatalogueServicesRepositoryResponse extends Equatable {
  final List<CatalogueService> services;
  final List<Region> regions;
  final List<Thematic> thematics;

  const CatalogueServicesRepositoryResponse(this.services, this.regions, this.thematics);

  @override
  List<Object?> get props => [services, regions, thematics];
}
