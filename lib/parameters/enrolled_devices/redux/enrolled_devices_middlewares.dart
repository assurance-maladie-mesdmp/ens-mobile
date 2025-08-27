/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'enrolled_devices_redux.dart';

class EnrolledDevicedMiddlewares {
  final IEnrolledDevicesRepository _enrolledDevicesRepository;

  EnrolledDevicedMiddlewares._(this._enrolledDevicesRepository);

  static List<Middleware<EnsState>> create(
    IEnrolledDevicesRepository enrolledDevicesRepository,
  ) {
    final middlewares = EnrolledDevicedMiddlewares._(enrolledDevicesRepository);
    return [
      TypedMiddleware<EnsState, FetchEnrolledDevicesAction>(middlewares._onFetchEnrolledDevicesAction).call,
      TypedMiddleware<EnsState, RevokeEnrolledDevicesAction>(middlewares._onRevokeEnrolledDevicesAction).call,
    ];
  }

  Future<void> _onFetchEnrolledDevicesAction(
    Store<EnsState> store,
    FetchEnrolledDevicesAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final result = await _enrolledDevicesRepository.getEnrolledDevicesCount();
    result.onSuccess((successResult) {
      store.dispatch(_ProcessFetchEnrolledDevicesSuccessAction(deviceCount: successResult));
    }).onError((error) {
      store.dispatch(_ProcessFetchEnrolledDevicesErrorAction());
    });
  }

  Future<void> _onRevokeEnrolledDevicesAction(
    Store<EnsState> store,
    RevokeEnrolledDevicesAction action,
    NextDispatcher next,
  ) async {
    next(action);
    if (action.isSingle) {
      store.dispatch(const DisplaySnackbarAction.loading('Dissociation de l\'appareil en cours...'));
    } else {
      store.dispatch(const DisplaySnackbarAction.loading('Dissociation des appareils en cours...'));
    }
    final result = await _enrolledDevicesRepository.revokeEnrolledDevices();
    result.onSuccess((successResult) {
      if (action.isSingle) {
        store.dispatch(const DisplaySnackbarAction.success('Mon appareil n\'est plus associé.'));
      } else {
        store.dispatch(const DisplaySnackbarAction.success('Mes appareils ne sont plus associés.'));
      }
      store.dispatch(_ProcessRevokeEnrolledDevicesSuccessAction());
    }).onError((error) {
      store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
      store.dispatch(_ProcessRevokeEnrolledDevicesErrorAction());
    });
  }
}
