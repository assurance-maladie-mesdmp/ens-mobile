/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'catalogue_service_redux.dart';

class CatalogueServicesReducers {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, FetchCatalogueServicesAction>(
          CatalogueServicesReducers._onFetchCatalogueServicesAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchCatalogueServicesSuccessAction>(
          CatalogueServicesReducers._onProcessFetchCatalogueServicesSuccessAction,
        ).call,
        TypedReducer<EnsState, ReinitialiseCatalogueServiceFiltersAction>(
          CatalogueServicesReducers._onReinitialiseCatalogueServiceFiltersAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchRegionSuccessAction>(
          CatalogueServicesReducers._onProcessFetchRegionSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchThematicSuccessAction>(
          CatalogueServicesReducers._onProcessFetchThematicSuccessAction,
        ).call,
        TypedReducer<EnsState, UpdateCatalogueServicesRegionFiltersAction>(
          CatalogueServicesReducers._onUpdateCatalogueServicesRegionFiltersAction,
        ).call,
        TypedReducer<EnsState, UpdateCatalogueServicesThematicFiltersAction>(
          CatalogueServicesReducers._onUpdateCatalogueServicesThematicFiltersAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchCatalogueServicesErrorAction>(
          CatalogueServicesReducers._onProcessFetchCatalogueServicesErrorAction,
        ).call,
        TypedReducer<EnsState, FetchCatalogueServicesDetailAction>(
          CatalogueServicesReducers._onFetchCatalogueServicesDetailAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchCatalogueServicesDetailSuccessAction>(
          CatalogueServicesReducers._onProcessFetchCatalogueServicesDetailSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchCatalogueServicesDetailErrorAction>(
          CatalogueServicesReducers._onProcessFetchCatalogueServicesDetailErrorAction,
        ).call,
        TypedReducer<EnsState, _ProcessUpdateAutorisationSuccessAction>(
          CatalogueServicesReducers._onProcessUpdateAutorisationSuccessAction,
        ).call,
      ];

  static EnsState _onFetchCatalogueServicesAction(EnsState state, FetchCatalogueServicesAction action) {
    final currentCatalogueServicesState = state.catalogueServicesState;
    if (action.force || currentCatalogueServicesState.listeState.status.isNotSuccess()) {
      return state.clone(
        catalogueServicesState: currentCatalogueServicesState.clone(
          listeState: const CatalogueServicesListState(status: AllPurposesStatus.LOADING),
        ),
      );
    }
    return state.clone(catalogueServicesState: currentCatalogueServicesState);
  }

  static EnsState _onProcessFetchCatalogueServicesSuccessAction(
    EnsState state,
    _ProcessFetchCatalogueServicesSuccessAction action,
  ) {
    final services = {for (final service in action.services) service.id: service};
    return state.clone(
      catalogueServicesState: state.catalogueServicesState.clone(
        listeState: state.catalogueServicesState.listeState.clone(
          status: AllPurposesStatus.SUCCESS,
          services: services,
        ),
      ),
    );
  }

  static EnsState _onProcessFetchRegionSuccessAction(
    EnsState state,
    _ProcessFetchRegionSuccessAction action,
  ) {
    final regions = {for (final region in action.regions) region.id: region};
    return state.clone(
      catalogueServicesState: state.catalogueServicesState.clone(
        listeState: state.catalogueServicesState.listeState.clone(
          regions: regions,
        ),
      ),
    );
  }

  static EnsState _onProcessFetchThematicSuccessAction(
    EnsState state,
    _ProcessFetchThematicSuccessAction action,
  ) {
    final thematics = {for (final thematic in action.thematics) thematic.id: thematic};
    return state.clone(
      catalogueServicesState: state.catalogueServicesState.clone(
        listeState: state.catalogueServicesState.listeState.clone(
          thematics: thematics,
        ),
      ),
    );
  }

  static EnsState _onProcessFetchCatalogueServicesErrorAction(
    EnsState state,
    _ProcessFetchCatalogueServicesErrorAction action,
  ) {
    return state.clone(
      catalogueServicesState: state.catalogueServicesState.clone(
        listeState: const CatalogueServicesListState(status: AllPurposesStatus.ERROR),
      ),
    );
  }

  static EnsState _onUpdateCatalogueServicesRegionFiltersAction(
    EnsState state,
    UpdateCatalogueServicesRegionFiltersAction action,
  ) {
    return state.clone(
      catalogueServicesState: state.catalogueServicesState.clone(
        listeState: state.catalogueServicesState.listeState.clone(
          filteredRegions: action.ids,
        ),
      ),
    );
  }

  static EnsState _onReinitialiseCatalogueServiceFiltersAction(
    EnsState state,
    ReinitialiseCatalogueServiceFiltersAction action,
  ) {
    return state.clone(
      catalogueServicesState: state.catalogueServicesState.clone(
        listeState: state.catalogueServicesState.listeState.clone(
          filteredRegions: [],
          filteredThematics: [],
        ),
      ),
    );
  }

  static EnsState _onUpdateCatalogueServicesThematicFiltersAction(
    EnsState state,
    UpdateCatalogueServicesThematicFiltersAction action,
  ) {
    return state.clone(
      catalogueServicesState: state.catalogueServicesState.clone(
        listeState: state.catalogueServicesState.listeState.clone(
          filteredThematics: action.ids,
        ),
      ),
    );
  }

  static EnsState _onFetchCatalogueServicesDetailAction(
    EnsState state,
    FetchCatalogueServicesDetailAction action,
  ) {
    return state.clone(
      catalogueServicesState: state.catalogueServicesState.clone(
        serviceDetail: const CatalogueServiceDetailState(status: AllPurposesStatus.LOADING),
      ),
    );
  }

  static EnsState _onProcessFetchCatalogueServicesDetailSuccessAction(
    EnsState state,
    _ProcessFetchCatalogueServicesDetailSuccessAction action,
  ) {
    return state.clone(
      catalogueServicesState: state.catalogueServicesState.clone(
        serviceDetail: CatalogueServiceDetailState(
          status: AllPurposesStatus.SUCCESS,
          detailService: action.serviceDetail,
        ),
      ),
    );
  }

  static EnsState _onProcessFetchCatalogueServicesDetailErrorAction(
    EnsState state,
    _ProcessFetchCatalogueServicesDetailErrorAction action,
  ) {
    return state.clone(
      catalogueServicesState: state.catalogueServicesState.clone(
        serviceDetail: const CatalogueServiceDetailState(status: AllPurposesStatus.ERROR),
      ),
    );
  }

  static EnsState _onProcessUpdateAutorisationSuccessAction(
    EnsState state,
    _ProcessUpdateAutorisationSuccessAction action,
  ) {
    final services = Map.of(state.catalogueServicesState.listeState.services);
    final service = services.values.firstWhereOrNull((element) => element.oid == action.serviceOid);

    if (service != null) {
      final newService = service.clone(isAcknowledged: true);
      services.update(service.id, (value) => newService);
    }
    return state.clone(
      catalogueServicesState: state.catalogueServicesState.clone(
        listeState: state.catalogueServicesState.listeState.clone(
          services: services,
        ),
        updateAutorisationState: state.catalogueServicesState.updateAutorisationState.clone(
          status: AllPurposesStatus.SUCCESS,
        ),
      ),
    );
  }
}
