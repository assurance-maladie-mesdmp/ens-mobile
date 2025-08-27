/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/auth/domain/model/ens_auth.dart';

class VerifyAuthStatusAction {}

class ProcessTokenLoadedAction {
  final AuthState authState;

  ProcessTokenLoadedAction(this.authState);
}

class EnterAuthenticatedModeAction {
  final bool shouldRedirectToLoginMdpWebView;

  EnterAuthenticatedModeAction(this.shouldRedirectToLoginMdpWebView);
}

class EnterGuestModeAction {}

class ResetAuthStatusAction {}

class LogoutAction {
  final bool isGuestMode;

  LogoutAction([this.isGuestMode = false]);
}

class UserLoggedOutAction {}

class SetDeeplinkAction {
  final String deeplink;

  const SetDeeplinkAction(this.deeplink);
}

class ResetDeeplinkAction {}

class RetrieveUsernameAction {}

class ProcessRetrievedUsernameAction {
  final String? username;

  ProcessRetrievedUsernameAction(this.username);
}
