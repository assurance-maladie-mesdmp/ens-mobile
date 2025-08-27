/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/auth/domain/model/ens_auth.dart';
import 'package:fr_cnamts_ens/auth/infra/openid_wrapper.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_user_repository.dart';
import 'package:fr_cnamts_ens/user/data/user_repository.dart';
import 'package:fr_cnamts_ens/user/domain/model/user_model.dart';

class AuthInteractor {
  final UserRepository userRepository;
  final OpenidWrapper openidWrapper;
  final GuestUserRepository guestUserRepository;

  AuthInteractor(this.openidWrapper, this.userRepository, this.guestUserRepository);

  Future<AuthState> getAuthState() async {
    try {
      _saveCurrentUser();
      return AuthState(openidWrapper.getCurrentAuthStatus());
    } catch (e) {
      return const AuthState(AuthStatus.ERROR);
    }
  }

  Future<AuthState> authenticate([bool shouldRedirectToLoginMdpWebView = false]) async {
    try {
      await openidWrapper.authenticate(shouldRedirectToLoginMdpWebView);
      _saveCurrentUser();
      return AuthState(openidWrapper.getCurrentAuthStatus());
    } catch (e) {
      return const AuthState(AuthStatus.ERROR);
    }
  }

  Future<AuthState> authenticateGuest() async {
    userRepository.currentUser = guestUserRepository.getGuestUser();
    return const AuthState(AuthStatus.GUEST);
  }

  void _saveCurrentUser() {
    final EnsUser? currentUser = openidWrapper.extractCurrentUserFromToken();
    userRepository.currentUser = currentUser;
  }

  Future<AuthState> logout() async {
    try {
      await openidWrapper.logout();
      _saveCurrentUser();
      return AuthState(openidWrapper.getCurrentAuthStatus());
    } catch (e) {
      return const AuthState(AuthStatus.ERROR);
    }
  }
}
