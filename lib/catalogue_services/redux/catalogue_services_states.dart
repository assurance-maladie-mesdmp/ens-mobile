/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'catalogue_service_redux.dart';

class CatalogueServicesState extends Equatable {
  final CatalogueServicesListState listeState;
  final CatalogueServiceDetailState serviceDetail;
  final CatalogueServiceUpdateAutorisationState updateAutorisationState;

  const CatalogueServicesState({
    this.listeState = const CatalogueServicesListState(),
    this.serviceDetail = const CatalogueServiceDetailState(),
    this.updateAutorisationState = const CatalogueServiceUpdateAutorisationState(),
  });

  CatalogueServicesState clone({
    CatalogueServicesListState? listeState,
    CatalogueServiceDetailState? serviceDetail,
    CatalogueServiceUpdateAutorisationState? updateAutorisationState,
  }) =>
      CatalogueServicesState(
        listeState: listeState ?? this.listeState,
        serviceDetail: serviceDetail ?? this.serviceDetail,
        updateAutorisationState: updateAutorisationState ?? this.updateAutorisationState,
      );

  @override
  List<Object?> get props => [
        listeState,
        serviceDetail,
        updateAutorisationState,
      ];
}

class CatalogueServicesListState extends Equatable {
  final AllPurposesStatus status;
  final Map<String, CatalogueService> services;
  final Map<String, Region> regions;
  final Map<String, Thematic> thematics;
  final List<String> filteredRegions;
  final List<String> filteredThematics;

  const CatalogueServicesListState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.services = const {},
    this.regions = const {},
    this.thematics = const {},
    this.filteredRegions = const [],
    this.filteredThematics = const [],
  });

  CatalogueServicesListState clone({
    AllPurposesStatus? status,
    Map<String, CatalogueService>? services,
    Map<String, Region>? regions,
    Map<String, Thematic>? thematics,
    List<String>? filteredRegions,
    List<String>? filteredThematics,
  }) =>
      CatalogueServicesListState(
        status: status ?? this.status,
        services: services ?? this.services,
        regions: regions ?? this.regions,
        thematics: thematics ?? this.thematics,
        filteredRegions: filteredRegions ?? this.filteredRegions,
        filteredThematics: filteredThematics ?? this.filteredThematics,
      );

  @override
  List<Object?> get props => [
        status,
        services,
        regions,
        thematics,
        filteredRegions,
        filteredThematics,
      ];
}

class CatalogueServiceDetailState extends Equatable {
  final AllPurposesStatus status;
  final CatalogueServiceDetail? detailService;

  const CatalogueServiceDetailState({this.status = AllPurposesStatus.NOT_LOADED, this.detailService});

  bool get isSuccessWithData => status.isSuccess() && detailService != null;

  bool get isErrorOrSuccessWithoutData => status.isError() || (status.isSuccess() && detailService == null);

  CatalogueServiceDetailState clone({
    AllPurposesStatus? status,
    CatalogueServiceDetail? detailService,
  }) {
    return CatalogueServiceDetailState(
      status: status ?? this.status,
      detailService: detailService ?? this.detailService,
    );
  }

  @override
  List<Object?> get props => [status, detailService];
}

class ServicesSynchronisesListState extends Equatable {
  final AllPurposesStatus status;
  final List<String> servicesSynchronisesId;

  const ServicesSynchronisesListState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.servicesSynchronisesId = const [],
  });

  ServicesSynchronisesListState clone({
    AllPurposesStatus? status,
    List<String>? servicesSynchronisesId,
  }) {
    return ServicesSynchronisesListState(
      status: status ?? this.status,
      servicesSynchronisesId: servicesSynchronisesId ?? this.servicesSynchronisesId,
    );
  }

  @override
  List<Object?> get props => [status, servicesSynchronisesId];
}

class CatalogueServiceUpdateAutorisationState extends Equatable {
  final AllPurposesStatus status;

  const CatalogueServiceUpdateAutorisationState({this.status = AllPurposesStatus.NOT_LOADED});

  CatalogueServiceUpdateAutorisationState clone({
    AllPurposesStatus? status,
  }) {
    return CatalogueServiceUpdateAutorisationState(
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [status];
}
