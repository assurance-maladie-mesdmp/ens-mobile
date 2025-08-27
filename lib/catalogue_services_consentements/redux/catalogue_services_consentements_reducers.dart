/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'catalogue_services_consentements_redux.dart';

class CatalogueServicesConsentementsReducers {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, FetchServiceConsentementsAction>(
          CatalogueServicesConsentementsReducers._onFetchServiceConsentementsAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchServiceConsentementsSuccessAction>(
          CatalogueServicesConsentementsReducers._onProcessFetchServiceConsentementsSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchServiceConsentementsErrorAction>(
          CatalogueServicesConsentementsReducers._onProcessFetchServiceConsentementsErrorAction,
        ).call,
        TypedReducer<EnsState, _ProcessUpdateConsentementAfterMajoriteSuccessAction>(
          CatalogueServicesConsentementsReducers._onProcessUpdateConsentementAfterMajoriteSuccessAction,
        ).call,
      ];

  static EnsState _onFetchServiceConsentementsAction(EnsState state, FetchServiceConsentementsAction action) {
    return state.clone(
      catalogueServiceConsentementsState: action.showLoadingPage
          ? state.catalogueServiceConsentementsState.clone(status: AllPurposesStatus.LOADING)
          : state.catalogueServiceConsentementsState,
    );
  }

  static EnsState _onProcessFetchServiceConsentementsSuccessAction(
    EnsState state,
    _ProcessFetchServiceConsentementsSuccessAction action,
  ) {
    return state.clone(
      catalogueServiceConsentementsState: state.catalogueServiceConsentementsState.clone(
        status: AllPurposesStatus.SUCCESS,
        consentements: action.consentements,
      ),
    );
  }

  static EnsState _onProcessFetchServiceConsentementsErrorAction(
    EnsState state,
    _ProcessFetchServiceConsentementsErrorAction action,
  ) {
    return state.clone(
      catalogueServiceConsentementsState: state.catalogueServiceConsentementsState.clone(
        status: AllPurposesStatus.ERROR,
      ),
    );
  }

  static EnsState _onProcessUpdateConsentementAfterMajoriteSuccessAction(
    EnsState state,
    _ProcessUpdateConsentementAfterMajoriteSuccessAction action,
  ) {
    final services = Map.of(state.catalogueServicesState.listeState.services);
    final service = services.values.firstWhereOrNull((element) => element.oid == action.oid);

    if (service != null) {
      final newService = service.clone(dateLimiteAutorisationOptional: Optional.ofNullable(null));
      services.update(service.id, (value) => newService);
    }

    return state.clone(
      catalogueServicesState: state.catalogueServicesState.clone(
        listeState: state.catalogueServicesState.listeState.clone(
          services: services,
        ),
      ),
    );
  }
}
