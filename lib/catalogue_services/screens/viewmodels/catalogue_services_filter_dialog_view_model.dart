/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/catalogue_services/domain/models/catalogue_service.dart';
import 'package:fr_cnamts_ens/catalogue_services/screens/viewmodels/region_selector.dart';
import 'package:fr_cnamts_ens/catalogue_services/screens/viewmodels/thematic_selector.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:redux/redux.dart';

class CatalogueServicesFilterDialogViewModel extends Equatable {
  final List<Region> availableRegions;
  final List<Region> preselectedRegions;
  final List<Thematic> availableThematics;
  final List<Thematic> preselectedThematics;

  const CatalogueServicesFilterDialogViewModel._internal(
    this.availableRegions,
    this.preselectedRegions,
    this.availableThematics,
    this.preselectedThematics,
  );

  factory CatalogueServicesFilterDialogViewModel.from(Store<EnsState> store) {
    final catalogueServicesState = store.state.catalogueServicesState;
    final catalogueServicesListState = catalogueServicesState.listeState;
    if (catalogueServicesListState.status.isSuccess()) {
      final availableRegions = catalogueServicesState.listeState.regions.values.toList();
      final preselectedRegions = RegionSelector.getRegions(
        catalogueServicesState.listeState.filteredRegions,
        catalogueServicesState,
      );

      final availableThematics = ThematicSelector.getAvailableThematics(catalogueServicesState);
      final preselectedThematics = ThematicSelector.getThematics(
        catalogueServicesState.listeState.filteredThematics,
        catalogueServicesState,
      );

      return CatalogueServicesFilterDialogViewModel._internal(
        availableRegions,
        preselectedRegions,
        availableThematics,
        preselectedThematics,
      );
    } else {
      return const CatalogueServicesFilterDialogViewModel._internal([], [], [], []);
    }
  }

  @override
  List<Object?> get props => [availableRegions, preselectedRegions, availableThematics, preselectedThematics];
}
