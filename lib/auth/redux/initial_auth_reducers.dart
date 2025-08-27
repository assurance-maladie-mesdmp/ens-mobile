/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/auth/domain/model/ens_auth.dart';
import 'package:fr_cnamts_ens/auth/redux/auth_actions.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:optional/optional.dart';
import 'package:redux/redux.dart';

class InitialAuthReducers {
  static List<Reducer<EnsInitialState>> createAuthReducers() => [
        TypedReducer<EnsInitialState, EnterAuthenticatedModeAction>(
          InitialAuthReducers._onEnterAuthenticatedModeAction,
        ).call,
        TypedReducer<EnsInitialState, ProcessTokenLoadedAction>(InitialAuthReducers._onProcessTokenLoadedAction).call,
        TypedReducer<EnsInitialState, ResetAuthStatusAction>(InitialAuthReducers._onResetAuthStatusAction).call,
        TypedReducer<EnsInitialState, SetDeeplinkAction>(InitialAuthReducers._onSetDeeplinkAction).call,
        TypedReducer<EnsInitialState, ResetDeeplinkAction>(InitialAuthReducers._onResetDeeplinkAction).call,
        TypedReducer<EnsInitialState, ProcessRetrievedUsernameAction>(
          InitialAuthReducers._onProcessRetrievedUsernameAction,
        ).call,
      ];

  static EnsInitialState _onEnterAuthenticatedModeAction(EnsInitialState state, EnterAuthenticatedModeAction action) {
    if (action.shouldRedirectToLoginMdpWebView) {
      return state.clone(authState: const AuthState(AuthStatus.LOGIN_IN_WITH_ANOTHER_ACCOUNT));
    } else {
      return state.clone(authState: const AuthState(AuthStatus.LOGIN_IN));
    }
  }

  static EnsInitialState _onProcessTokenLoadedAction(EnsInitialState state, ProcessTokenLoadedAction action) =>
      state.clone(authState: action.authState);

  static EnsInitialState _onResetAuthStatusAction(EnsInitialState state, ResetAuthStatusAction action) =>
      state.clone(authState: const AuthState(AuthStatus.NOT_LOGGED_IN));

  static EnsInitialState _onSetDeeplinkAction(EnsInitialState state, SetDeeplinkAction action) =>
      state.clone(deeplink: action.deeplink);

  static EnsInitialState _onResetDeeplinkAction(EnsInitialState state, ResetDeeplinkAction action) =>
      state.cloneWithResetDeeplink();

  static EnsInitialState _onProcessRetrievedUsernameAction(
    EnsInitialState state,
    ProcessRetrievedUsernameAction action,
  ) {
    return state.clone(username: Optional.ofNullable(action.username));
  }
}
