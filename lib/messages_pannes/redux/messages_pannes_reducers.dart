/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'messages_pannes_redux.dart';

class MessagesPannesReducers {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, _ProcessFetchHomeConnecteeMessagePanneSuccessAction>(
          MessagesPannesReducers._onProcessFetchHomeConnecteeMessagePanneSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchHomeConnecteeMessagePanneErrorAction>(
          MessagesPannesReducers._onProcessFetchHomeConnecteeMessagePanneErrorAction,
        ).call,
        TypedReducer<EnsState, SetHomeConnecteeMessagePanneClosedByUserAction>(
          MessagesPannesReducers._onSetHomeConnecteeMessagePanneClosedByUserAction,
        ).call,
      ];

  static List<Reducer<EnsInitialState>> createOffline() => [
        TypedReducer<EnsInitialState, _ProcessFetchLoginScreenMessagePanneSuccessAction>(
          MessagesPannesReducers._onProcessFetchLoginScreenMessagePanneSuccessAction,
        ).call,
        TypedReducer<EnsInitialState, _ProcessFetchLoginScreenMessagePanneErrorAction>(
          MessagesPannesReducers._onProcessFetchLoginScreenMessagePanneErrorAction,
        ).call,
        TypedReducer<EnsInitialState, SetLoginScreenMessagePanneClosedByUserAction>(
          MessagesPannesReducers._onSetLoginScreenMessagePanneClosedByUserAction,
        ).call,
      ];

  static EnsState _onProcessFetchHomeConnecteeMessagePanneSuccessAction(
    EnsState state,
    _ProcessFetchHomeConnecteeMessagePanneSuccessAction action,
  ) {
    return state.clone(
      homeConnecteeMessagePanneState: MessagePanneState(
        status: AllPurposesStatus.SUCCESS,
        message: action.messagePanne,
      ),
    );
  }

  static EnsState _onProcessFetchHomeConnecteeMessagePanneErrorAction(
    EnsState state,
    _ProcessFetchHomeConnecteeMessagePanneErrorAction action,
  ) {
    return state.clone(homeConnecteeMessagePanneState: const MessagePanneState(status: AllPurposesStatus.ERROR));
  }

  static EnsState _onSetHomeConnecteeMessagePanneClosedByUserAction(
    EnsState state,
    SetHomeConnecteeMessagePanneClosedByUserAction action,
  ) {
    return state.clone(
      homeConnecteeMessagePanneState: const MessagePanneState(status: AllPurposesStatus.SUCCESS, message: null),
    );
  }

  static EnsInitialState _onProcessFetchLoginScreenMessagePanneSuccessAction(
    EnsInitialState state,
    _ProcessFetchLoginScreenMessagePanneSuccessAction action,
  ) {
    return state.clone(
      loginScreenMessagePanneState: MessagePanneState(
        status: AllPurposesStatus.SUCCESS,
        message: action.messagePanne,
      ),
    );
  }

  static EnsInitialState _onProcessFetchLoginScreenMessagePanneErrorAction(
    EnsInitialState state,
    _ProcessFetchLoginScreenMessagePanneErrorAction action,
  ) {
    return state.clone(loginScreenMessagePanneState: const MessagePanneState(status: AllPurposesStatus.ERROR));
  }

  static EnsInitialState _onSetLoginScreenMessagePanneClosedByUserAction(
    EnsInitialState state,
    SetLoginScreenMessagePanneClosedByUserAction action,
  ) {
    return state.clone(
      loginScreenMessagePanneState: const MessagePanneState(status: AllPurposesStatus.SUCCESS, message: null),
    );
  }
}
