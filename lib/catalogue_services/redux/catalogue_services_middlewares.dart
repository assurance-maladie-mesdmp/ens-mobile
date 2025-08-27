/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'catalogue_service_redux.dart';

class CatalogueServicesMiddlewares {
  final ICatalogueServicesRepository catalogueServicesRepository;
  final RemoteConfigWrapper remoteConfigWrapper;

  CatalogueServicesMiddlewares._internal(this.catalogueServicesRepository, this.remoteConfigWrapper);

  static List<Middleware<EnsState>> create(
    ICatalogueServicesRepository catalogueServicesRepository,
    RemoteConfigWrapper remoteConfigWrapper,
  ) {
    final middlewares = CatalogueServicesMiddlewares._internal(
      catalogueServicesRepository,
      remoteConfigWrapper,
    );

    return [
      TypedMiddleware<EnsState, FetchCatalogueServicesAction>(middlewares._onFetchCatalogueServicesAction).call,
      TypedMiddleware<EnsState, FetchCatalogueServicesDetailAction>(
        middlewares._onFetchCatalogueServicesDetailAction,
      ).call,
      TypedMiddleware<EnsState, UpdateAutorisationAction>(middlewares._onUpdateAutorisationAction).call,
    ];
  }

  Future<void> _onFetchCatalogueServicesAction(
    Store<EnsState> store,
    FetchCatalogueServicesAction action,
    NextDispatcher next,
  ) async {
    next(action);
    if (action.force || store.state.catalogueServicesState.listeState.status.isNotSuccess()) {
      final isSynchroEnabled = remoteConfigWrapper.isEnabled(Feature.catalogueDeServiceSynchro);
      final patientId = UserSelectors.getPatientId(store.state);
      final result = await catalogueServicesRepository.getAllServices(
        isSynchroEnabled: isSynchroEnabled,
        patientId: patientId,
      );
      result.onSuccess((successResult) {
        store.dispatch(_ProcessFetchCatalogueServicesSuccessAction(successResult.services));
        store.dispatch(_ProcessFetchRegionSuccessAction(successResult.regions));
        store.dispatch(_ProcessFetchThematicSuccessAction(successResult.thematics));
      });
      result.onError((error) {
        store.dispatch(_ProcessFetchCatalogueServicesErrorAction());
      });
    }
  }

  Future<void> _onFetchCatalogueServicesDetailAction(
    Store<EnsState> store,
    FetchCatalogueServicesDetailAction action,
    NextDispatcher next,
  ) async {
    next(action);

    final result = await catalogueServicesRepository.getDetailService(action.serviceId);
    result.onSuccess((detail) {
      store.dispatch(_ProcessFetchCatalogueServicesDetailSuccessAction(detail));
    }).onError((_) {
      store.dispatch(_ProcessFetchCatalogueServicesDetailErrorAction());
    });
  }

  Future<void> _onUpdateAutorisationAction(
    Store<EnsState> store,
    UpdateAutorisationAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final result = await catalogueServicesRepository.updateAutorisation(
      patientId: patientId,
      serviceOid: action.serviceOid,
    );
    result.onSuccess((successResult) {
      store.dispatch(_ProcessUpdateAutorisationSuccessAction(action.serviceOid));
    });
  }
}
