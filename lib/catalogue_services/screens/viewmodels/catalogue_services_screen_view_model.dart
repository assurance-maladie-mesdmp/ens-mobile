/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/catalogue_services/domain/models/catalogue_service.dart';
import 'package:fr_cnamts_ens/catalogue_services/redux/catalogue_service_redux.dart';
import 'package:fr_cnamts_ens/catalogue_services/screens/viewmodels/region_selector.dart';
import 'package:fr_cnamts_ens/catalogue_services/screens/viewmodels/thematic_selector.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:fr_cnamts_ens/utils/extensions/profil_extension.dart';
import 'package:redux/redux.dart';

class CatalogueServicesScreenViewModel extends Equatable {
  final ProfilType profilType;
  final String mainFirstName;
  final CatalogueServicesScreenDisplayModel displayModel;
  final void Function() refreshCatalogueServices;

  const CatalogueServicesScreenViewModel._internal({
    required this.profilType,
    required this.mainFirstName,
    required this.displayModel,
    required this.refreshCatalogueServices,
  });

  factory CatalogueServicesScreenViewModel.from(Store<EnsState> store) {
    final profilType = ProfilsUtils.getCurrentProfilType(store.state);
    final mainFirstName = store.state.userState.currentProfile.mainFirstName;
    return CatalogueServicesScreenViewModel._internal(
      profilType: profilType,
      mainFirstName: mainFirstName,
      displayModel: _buildDisplayModel(store),
      refreshCatalogueServices: () => store.dispatch(FetchCatalogueServicesAction(force: true)),
    );
  }

  static CatalogueServicesScreenDisplayModel _buildDisplayModel(
    Store<EnsState> store,
  ) {
    final catalogueServicesListState = store.state.catalogueServicesState.listeState;
    final services = store.state.catalogueServicesState.listeState.services;
    switch (catalogueServicesListState.status) {
      case AllPurposesStatus.SUCCESS:
        final List<CatalogueService> filteredServices = _getFilteredServices(
          catalogueServicesListState,
          store.state.catalogueServicesState,
          services,
        );
        final List<CatalogueServicesViewItem> catalogueServicesViewItems = [];
        catalogueServicesViewItems.add(
          CatalogueServicesViewItemServicesHeader(
            servicesCount: filteredServices.length,
            availableRegions: store.state.catalogueServicesState.listeState.regions.values.toList(),
            preselectedRegions: RegionSelector.getRegions(
              store.state.catalogueServicesState.listeState.filteredRegions,
              store.state.catalogueServicesState,
            ),
            availableThematics: store.state.catalogueServicesState.listeState.thematics.values.toList(),
            preselectedThematics: ThematicSelector.getThematics(
              store.state.catalogueServicesState.listeState.filteredThematics,
              store.state.catalogueServicesState,
            ),
          ),
        );
        if (filteredServices.isNotEmpty) {
          catalogueServicesViewItems.addAll(filteredServices.map((item) => CatalogueServicesViewItemService(item)));
        }
        return CatalogueServicesScreenDisplayModel.success(catalogueServicesViewItems);

      case AllPurposesStatus.ERROR:
        return const CatalogueServicesScreenDisplayModel.error();
      default:
        return const CatalogueServicesScreenDisplayModel.loading();
    }
  }

  static List<CatalogueService> _getFilteredServices(
    CatalogueServicesListState catalogueServicesListState,
    CatalogueServicesState catalogueServicesState,
    Map<String, CatalogueService> services,
  ) {
    final regionsCode = catalogueServicesState.listeState.filteredRegions;
    final thematicsCode = catalogueServicesState.listeState.filteredThematics;
    return catalogueServicesListState.services.keys
        .map((id) => services[id])
        .whereType<CatalogueService>()
        .where(
          (service) =>
              regionsCode.isEmpty ||
              service.regionsId.isEmpty ||
              service.regionsId.any((regionId) => regionsCode.contains(regionId)),
        )
        .where(
          (service) =>
              thematicsCode.isEmpty ||
              service.thematicsId.isEmpty ||
              service.thematicsId.any((thematics) => thematicsCode.contains(thematics)),
        )
        .toList();
  }

  @override
  List<Object?> get props => [profilType, mainFirstName, displayModel];
}

sealed class CatalogueServicesScreenDisplayModel extends Equatable {
  const CatalogueServicesScreenDisplayModel._internal();

  const factory CatalogueServicesScreenDisplayModel.loading() = CatalogueServicesScreenDisplayModelLoading._internal;

  const factory CatalogueServicesScreenDisplayModel.error() = CatalogueServicesScreenDisplayModelError._internal;

  const factory CatalogueServicesScreenDisplayModel.success(
    List<CatalogueServicesViewItem> catalogueServicesDisplayModels,
  ) = CatalogueServicesScreenDisplayModelSuccess._internal;
}

class CatalogueServicesScreenDisplayModelLoading extends CatalogueServicesScreenDisplayModel {
  const CatalogueServicesScreenDisplayModelLoading._internal() : super._internal();

  @override
  List<Object?> get props => [];
}

class CatalogueServicesScreenDisplayModelError extends CatalogueServicesScreenDisplayModel {
  const CatalogueServicesScreenDisplayModelError._internal() : super._internal();

  @override
  List<Object?> get props => [];
}

class CatalogueServicesScreenDisplayModelSuccess extends CatalogueServicesScreenDisplayModel {
  final List<CatalogueServicesViewItem> catalogueServicesViewItems;

  const CatalogueServicesScreenDisplayModelSuccess._internal(this.catalogueServicesViewItems) : super._internal();

  bool get isNotEmpty => catalogueServicesViewItems.any(
        (element) => element.runtimeType == CatalogueServicesViewItemService,
      );

  @override
  List<Object?> get props => [catalogueServicesViewItems];
}

abstract class CatalogueServicesViewItem extends Equatable {
  @override
  List<Object?> get props => [];
}

class CatalogueServicesViewItemService extends CatalogueServicesViewItem {
  final CatalogueService catalogueService;

  CatalogueServicesViewItemService(this.catalogueService);

  @override
  List<Object?> get props => [catalogueService];
}

class CatalogueServicesViewItemServicesHeader extends CatalogueServicesViewItem {
  final int servicesCount;
  final List<Region> availableRegions;
  final List<Region> preselectedRegions;
  final List<Thematic> availableThematics;
  final List<Thematic> preselectedThematics;

  CatalogueServicesViewItemServicesHeader({
    required this.servicesCount,
    required this.preselectedRegions,
    required this.availableRegions,
    required this.availableThematics,
    required this.preselectedThematics,
  });

  @override
  List<Object?> get props => [
        servicesCount,
        preselectedRegions,
        availableRegions,
        preselectedThematics,
        availableThematics,
      ];
}

enum CatalogueServicesListStatus { LOADING, ERROR, EMPTY, SUCCESS }
