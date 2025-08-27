/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/auth/domain/auth_interactor.dart';
import 'package:fr_cnamts_ens/auth/domain/model/ens_auth.dart';
import 'package:fr_cnamts_ens/auth/redux/auth_actions.dart';
import 'package:fr_cnamts_ens/auth/redux/logout_wrapper.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:fr_cnamts_ens/user/data/offline_user_data_repository.dart';
import 'package:redux/redux.dart';

class AuthMiddlewares {
  final AuthInteractor authInteractor;
  final IOfflineUserDataRepository offlineUserDataRepository;
  final LogoutWrapper _logoutWrapper;

  AuthMiddlewares._(this.authInteractor, this.offlineUserDataRepository, this._logoutWrapper);

  static List<Middleware<EnsInitialState>> create(
    AuthInteractor authInteractor,
    IOfflineUserDataRepository offlineUserDataRepository,
    LogoutWrapper logoutWrapper,
  ) {
    final middlewares = AuthMiddlewares._(authInteractor, offlineUserDataRepository, logoutWrapper);
    return [
      TypedMiddleware<EnsInitialState, VerifyAuthStatusAction>(middlewares._onVerifyAuthStatusAction).call,
      TypedMiddleware<EnsInitialState, EnterAuthenticatedModeAction>(middlewares._onEnterAuthenticatedModeAction).call,
      TypedMiddleware<EnsInitialState, EnterGuestModeAction>(middlewares._onEnterGuestModeAction).call,
      TypedMiddleware<EnsInitialState, LogoutAction>(middlewares._onLogoutAction).call,
      TypedMiddleware<EnsInitialState, RetrieveUsernameAction>(middlewares._onRetrieveUsernameAction).call,
    ];
  }

  void _onVerifyAuthStatusAction(Store store, VerifyAuthStatusAction action, NextDispatcher next) {
    authInteractor.getAuthState().then((authState) {
      _initializeApp(store, authState);
    });
    next(action);
  }

  void _onEnterAuthenticatedModeAction(
    Store<EnsInitialState> store,
    EnterAuthenticatedModeAction action,
    NextDispatcher next,
  ) {
    authInteractor.authenticate(action.shouldRedirectToLoginMdpWebView).then((authState) {
      _initializeApp(store, authState);
    });
    next(action);
  }

  void _onEnterGuestModeAction(Store store, EnterGuestModeAction action, NextDispatcher next) {
    authInteractor.authenticateGuest().then((authState) {
      _initializeApp(store, authState);
    });
    next(action);
  }

  void _onLogoutAction(Store store, LogoutAction action, NextDispatcher next) {
    if (action.isGuestMode) {
      _initializeApp(store, const AuthState(AuthStatus.NOT_LOGGED_IN));
    } else {
      authInteractor.logout().then((authState) {
        _initializeApp(store, authState);
        _logoutWrapper.resetUser();
      });
    }
    next(action);
  }

  Future<void> _onRetrieveUsernameAction(Store store, RetrieveUsernameAction action, NextDispatcher next) async {
    next(action);
    final username = await offlineUserDataRepository.getUserUsernameFromSecureStorage();
    store.dispatch(ProcessRetrievedUsernameAction(username));
  }

  void _initializeApp(Store store, AuthState authState) {
    store.dispatch(ProcessTokenLoadedAction(authState));
  }
}
