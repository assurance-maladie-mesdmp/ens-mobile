/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'interruption_services_redux.dart';

class InterruptionServicesMiddleware {
  final IInterruptionServiceRepository _interruptionServiceRepository;

  InterruptionServicesMiddleware(this._interruptionServiceRepository);

  static List<Middleware<EnsState>> create(IInterruptionServiceRepository interruptionServiceRepository) {
    final middlewares = InterruptionServicesMiddleware(interruptionServiceRepository);

    return [
      TypedMiddleware<EnsState, FetchInterruptionServiceAction>(
        middlewares._onFetchInterruptionServiceAction,
      ).call,
    ];
  }

  static List<Middleware<EnsInitialState>> createOffline(IInterruptionServiceRepository interruptionServiceRepository) {
    final middlewares = InterruptionServicesMiddleware(interruptionServiceRepository);

    return [
      TypedMiddleware<EnsInitialState, FetchInterruptionServiceAction>(
        middlewares._onFetchInterruptionServiceOffLineAction,
      ).call,
    ];
  }

  Future<void> _onFetchInterruptionServiceAction(
    Store<EnsState> store,
    FetchInterruptionServiceAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final result = await _interruptionServiceRepository.getCmsMessageInterruptionService();
    result.onSuccess((successResult) {
      store.dispatch(ProcessFetchedInterruptionServiceSuccessAction(successResult));
    }).onError((error) {
      store.dispatch(ProcessFetchedInterruptionServiceErrorAction());
    });
  }

  Future<void> _onFetchInterruptionServiceOffLineAction(
    Store<EnsInitialState> store,
    FetchInterruptionServiceAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final result = await _interruptionServiceRepository.getCmsMessageInterruptionService();
    result.onSuccess((successResult) {
      store.dispatch(ProcessFetchedInterruptionServiceSuccessAction(successResult));
    }).onError((error) {
      store.dispatch(ProcessFetchedInterruptionServiceErrorAction());
    });
  }
}
