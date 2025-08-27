/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'traces_redux.dart';

class TracesMiddlewares {
  final ITracesRepository repository;

  TracesMiddlewares(this.repository);

  static List<Middleware<EnsState>> create(
    ITracesRepository repository,
  ) {
    final middlewares = TracesMiddlewares(repository);
    return [
      TypedMiddleware<EnsState, SendTraceAction>(middlewares._onSendTraceAction).call,
    ];
  }

  void _onSendTraceAction(Store<EnsState> store, SendTraceAction action, NextDispatcher next) {
    final connectedUserPatientId = UserSelectors.getConnectedUserPatientId(store.state);
    repository.sendTrace(connectedUserPatientId, action.trace);
    next(action);
  }
}
