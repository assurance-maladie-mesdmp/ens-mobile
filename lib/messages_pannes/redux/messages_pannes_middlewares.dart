/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'messages_pannes_redux.dart';

class MessagesPannesMiddlewares {
  final IMessagesPannesRepository _messagesPannesRepository;

  MessagesPannesMiddlewares(this._messagesPannesRepository);

  static List<Middleware<EnsState>> create(IMessagesPannesRepository messagesPannesRepository) {
    final middlewares = MessagesPannesMiddlewares(messagesPannesRepository);

    return [
      TypedMiddleware<EnsState, FetchHomeConnecteeMessagePanneAction>(
        middlewares._onFetchHomeConnecteeMessagePanneAction,
      ).call,
    ];
  }

  static List<Middleware<EnsInitialState>> createOffline(IMessagesPannesRepository messagesPannesRepository) {
    final middlewares = MessagesPannesMiddlewares(messagesPannesRepository);

    return [
      TypedMiddleware<EnsInitialState, FetchLoginScreenMessagePanneAction>(
        middlewares._onFetchLoginScreenMessagePanneAction,
      ).call,
    ];
  }

  Future<void> _onFetchHomeConnecteeMessagePanneAction(
    Store<EnsState> store,
    FetchHomeConnecteeMessagePanneAction action,
    NextDispatcher next,
  ) async {
    next(action);
    if (store.state.homeConnecteeMessagePanneState.status.isNotSuccess()) {
      final result = await _messagesPannesRepository.getHomeConnecteeCmsMessagePanne();
      result.onSuccess((successResult) {
        store.dispatch(_ProcessFetchHomeConnecteeMessagePanneSuccessAction(successResult));
      }).onError((error) {
        store.dispatch(_ProcessFetchHomeConnecteeMessagePanneErrorAction());
      });
    }
  }

  Future<void> _onFetchLoginScreenMessagePanneAction(
    Store<EnsInitialState> store,
    FetchLoginScreenMessagePanneAction action,
    NextDispatcher next,
  ) async {
    next(action);
    if (store.state.loginScreenMessagePanneState.status.isNotSuccess()) {
      final result = await _messagesPannesRepository.getLoginScreenCmsMessagePanne();
      result.onSuccess((successResult) {
        store.dispatch(_ProcessFetchLoginScreenMessagePanneSuccessAction(successResult));
      }).onError((error) {
        store.dispatch(_ProcessFetchLoginScreenMessagePanneErrorAction());
      });
    }
  }
}
