/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'catalogue_services_consentements_redux.dart';

class CatalogueServicesConsentementsMiddlewares {
  final ICatalogueServicesConsentementsRepository catalogueServicesConsentementsRepository;

  CatalogueServicesConsentementsMiddlewares._internal(this.catalogueServicesConsentementsRepository);

  static List<Middleware<EnsState>> create(
    ICatalogueServicesConsentementsRepository catalogueServicesConsentementsRepository,
  ) {
    final middlewares = CatalogueServicesConsentementsMiddlewares._internal(catalogueServicesConsentementsRepository);

    return [
      TypedMiddleware<EnsState, FetchServiceConsentementsAction>(middlewares._onFetchServiceConsentementsAction).call,
      TypedMiddleware<EnsState, AddConsentementForServiceByOidAction>(
        middlewares._onAddConsentementForServiceByOidAction,
      ).call,
      TypedMiddleware<EnsState, RemoveConsentementForServiceByOidAction>(
        middlewares._onRemoveConsentementForServiceByOidAction,
      ).call,
      TypedMiddleware<EnsState, UnsynchronizeServiceAction>(middlewares._onUnsynchronizeServiceAction).call,
      TypedMiddleware<EnsState, UpdateConsentementAfterMajoriteAction>(
        middlewares._oUpdateConsentementAfterMajoriteAction,
      ).call,
    ];
  }

  Future<void> _onFetchServiceConsentementsAction(
    Store<EnsState> store,
    FetchServiceConsentementsAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final result = await catalogueServicesConsentementsRepository.getConsentementsForService(action.oid, patientId);
    result.onSuccess((result) {
      store.dispatch(_ProcessFetchServiceConsentementsSuccessAction(result));
    }).onError((_) {
      store.dispatch(_ProcessFetchServiceConsentementsErrorAction());
    });
  }

  Future<void> _onAddConsentementForServiceByOidAction(
    Store<EnsState> store,
    AddConsentementForServiceByOidAction action,
    NextDispatcher next,
  ) async {
    next(action);
    store.dispatch(const DisplaySnackbarAction.loading('Modification en cours...'));
    final result = await catalogueServicesConsentementsRepository.addConsentForServiceByOid(
      action.oid,
      action.context,
    );

    result.onSuccess((successResult) {
      store.dispatch(const DisplaySnackbarAction.success('Consentement ajouté'));
      store.dispatch(FetchServiceConsentementsAction(action.oid, showLoadingPage: false));
    }).onError((_) {
      store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
    });
  }

  Future<void> _onRemoveConsentementForServiceByOidAction(
    Store<EnsState> store,
    RemoveConsentementForServiceByOidAction action,
    NextDispatcher next,
  ) async {
    next(action);
    store.dispatch(const DisplaySnackbarAction.loading('Modification en cours...'));
    final result = await catalogueServicesConsentementsRepository.removeConsentForServiceByOid(
      action.oid,
      action.context,
    );

    result.onSuccess((successResult) {
      store.dispatch(const DisplaySnackbarAction.success('Consentement retiré'));
      store.dispatch(FetchServiceConsentementsAction(action.oid, showLoadingPage: false));
    }).onError((_) {
      store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
    });
  }

  Future<void> _onUnsynchronizeServiceAction(
    Store<EnsState> store,
    UnsynchronizeServiceAction action,
    NextDispatcher next,
  ) async {
    next(action);
    store.dispatch(const DisplaySnackbarAction.loading('Désynchronisation en cours...'));
    final result = await catalogueServicesConsentementsRepository.unsynchronizeService(action.oid);
    result.onSuccess((successResult) {
      store.dispatch(DisplaySnackbarAction.success('${action.name} a été désynchronisé'));
      store.dispatch(FetchCatalogueServicesAction(force: true));
    }).onError((_) {
      store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
    });
  }

  Future<void> _oUpdateConsentementAfterMajoriteAction(
    Store<EnsState> store,
    UpdateConsentementAfterMajoriteAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);

    final result = await catalogueServicesConsentementsRepository.updateConsentementAfterMajorite(
      oid: action.oid,
      patientId: patientId,
    );

    result.onSuccess((_) {
      store.dispatch(_ProcessUpdateConsentementAfterMajoriteSuccessAction(action.oid));
      store.dispatch(const DisplaySnackbarAction.success('Vos autorisations ont bien été mises à jour'));
    }).onError((_) {
      store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
    });
  }
}
