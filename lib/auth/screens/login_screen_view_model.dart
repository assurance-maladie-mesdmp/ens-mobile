/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/auth/domain/model/ens_auth.dart';
import 'package:fr_cnamts_ens/auth/redux/auth_actions.dart';
import 'package:fr_cnamts_ens/infra/app_config.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:fr_cnamts_ens/interruption_services/domain/interruption_de_service_info.dart';
import 'package:fr_cnamts_ens/interruption_services/redux/interruption_selectors.dart';
import 'package:fr_cnamts_ens/messages_pannes/domain/models/ens_message_panne.dart';
import 'package:fr_cnamts_ens/messages_pannes/redux/messages_pannes_redux.dart';
import 'package:redux/redux.dart';

class LoginScreenViewModel extends AnalyticsViewModel with EquatableMixin {
  final LoginStatus loginStatus;
  final EnsMessagePanne? messagePanne;
  final String? username;
  final void Function({required bool shouldRedirectToLoginMdpWebView}) authenticate;
  final void Function() enterGuestMode;
  final void Function() closeMessagePanne;
  final void Function(String) setDeeplink;
  final bool showDevToolsButton;
  final String? interruptionServiceConnexionSnackbarMessage;
  final String? interruptionServiceEnrolementSnackbarMessage;

  const LoginScreenViewModel._internal(
    super.store, {
    required this.loginStatus,
    this.messagePanne,
    this.username,
    required this.authenticate,
    required this.enterGuestMode,
    required this.closeMessagePanne,
    required this.setDeeplink,
    required this.showDevToolsButton,
    this.interruptionServiceConnexionSnackbarMessage,
    this.interruptionServiceEnrolementSnackbarMessage,
  });

  factory LoginScreenViewModel(Store<EnsInitialState> store, AppConfig appConfig) {
    final authStatus = store.state.authState.status;
    final username = store.state.username;
    final messagePanneState = store.state.loginScreenMessagePanneState;

    return LoginScreenViewModel._internal(
      store,
      loginStatus: _getLoginStatus(authStatus, username),
      messagePanne: messagePanneState.message,
      username: username,
      authenticate: ({required bool shouldRedirectToLoginMdpWebView}) {
        store.dispatch(EnterAuthenticatedModeAction(shouldRedirectToLoginMdpWebView));
      },
      enterGuestMode: () => store.dispatch(EnterGuestModeAction()),
      closeMessagePanne: () => store.dispatch(SetLoginScreenMessagePanneClosedByUserAction()),
      setDeeplink: (String deeplink) => store.dispatch(SetDeeplinkAction(deeplink)),
      showDevToolsButton: appConfig.configName != AppConfigName.PROD,
      interruptionServiceConnexionSnackbarMessage:
          _getInterruptionServiceMessage(store, DomaineInterruption.SYSTEME_AUTHENTIFICATION),
      interruptionServiceEnrolementSnackbarMessage:
          _getInterruptionServiceMessage(store, DomaineInterruption.ENROLEMENT),
    );
  }

  static LoginStatus _getLoginStatus(AuthStatus authStatus, String? username) {
    switch (authStatus) {
      case AuthStatus.LOGIN_IN_WITH_ANOTHER_ACCOUNT:
        if (username == null) {
          return LoginStatus.FIRST_LOGIN;
        } else {
          return LoginStatus.LOGIN_WITH_ANOTHER_ACCOUNT;
        }
      case AuthStatus.LOGIN_IN:
        return LoginStatus.LOGIN_WITH_EXISTING_ACCOUNT;
      default:
        return LoginStatus.INITIAL;
    }
  }

  static String? _getInterruptionServiceMessage(Store<EnsInitialState> store, DomaineInterruption domaine) {
    return InterruptionSelectors.getCurrentInterruptionInfosNonConnecte(
      state: store.state,
      domaine: domaine,
    )?.messageSnackbar;
  }

  bool shouldRedirectToLoginMdpWebView() => username == null || username!.isEmpty;

  @override
  List<Object?> get props => [
        loginStatus,
        messagePanne,
        username,
        showDevToolsButton,
        interruptionServiceConnexionSnackbarMessage,
        interruptionServiceEnrolementSnackbarMessage,
      ];
}

enum LoginStatus {
  INITIAL,
  FIRST_LOGIN,
  LOGIN_WITH_EXISTING_ACCOUNT,
  LOGIN_WITH_ANOTHER_ACCOUNT;

  bool isFirstLogin() => this == LoginStatus.FIRST_LOGIN;

  bool isLoginWithExistingAccount() => this == LoginStatus.LOGIN_WITH_EXISTING_ACCOUNT;

  bool isLoginWithAnotherAccount() => this == LoginStatus.LOGIN_WITH_ANOTHER_ACCOUNT;
}
