/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fr_cnamts_ens/auth/domain/model/ens_auth.dart';
import 'package:fr_cnamts_ens/auth/infra/jwt_helper.dart';
import 'package:fr_cnamts_ens/infra/app_config.dart';
import 'package:fr_cnamts_ens/infra/data/override_configuration_repository.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/passwordless_blacklist.dart';
import 'package:fr_cnamts_ens/user/domain/model/user_model.dart';

abstract class OpenidWrapper {
  Future<String?> getToken();

  Future<String?> authenticate([bool shouldRedirectToLoginMdpWebView]);

  Future<void> logout();

  EnsUser? extractCurrentUserFromToken();

  AuthStatus getCurrentAuthStatus();
}

class OpenidWrapperLocalImpl implements OpenidWrapper {
  final OverrideConfigurationRepository overrideConfigurationRepository;
  AuthStatus _currentStatus = AuthStatus.NOT_LOGGED_IN;

  OpenidWrapperLocalImpl(this.overrideConfigurationRepository);

  @override
  EnsUser? extractCurrentUserFromToken() {
    final idNat = JwtHelper.extractIdNatFromIdEns(_getOverrideBffToken());
    return EnsUser(idNat: idNat, username: 'mockLocal');
  }

  @override
  Future<String?> authenticate([bool shouldRedirectToLoginMdpWebView = false]) {
    _currentStatus = AuthStatus.LOGGED_IN;
    return Future.value(_getOverrideBffToken());
  }

  @override
  Future<void> logout() async {
    _currentStatus = AuthStatus.NOT_LOGGED_IN;
  }

  @override
  AuthStatus getCurrentAuthStatus() {
    return _currentStatus;
  }

  @override
  Future<String?> getToken() {
    return Future.value(_getOverrideBffToken());
  }

  String _getOverrideBffToken() {
    return overrideConfigurationRepository.getOverrideConfiguration().bffToken;
  }
}

class OpenidWrapperImpl implements OpenidWrapper {
  static const String _SS_USER_USERNAME_KEY = 'user_username';

  final OpenidConfig _openidConfig;
  final FlutterAppAuth _appAuth;
  final FlutterSecureStorage _secureStorage;

  TokenResponse? _lastTokenResponse;

  OpenidWrapperImpl(this._openidConfig, this._appAuth, this._secureStorage);

  AuthorizationServiceConfiguration _getServiceConfiguration() => AuthorizationServiceConfiguration(
        authorizationEndpoint: _openidConfig.authorizationEndpoint,
        tokenEndpoint: _openidConfig.tokenEndpoint,
        endSessionEndpoint: _openidConfig.endSessionEndpoint,
      );

  @override
  EnsUser? extractCurrentUserFromToken() {
    if (_lastTokenResponse != null) {
      final accessToken = _lastTokenResponse!.accessToken;
      final idToken = _lastTokenResponse!.idToken;
      if (accessToken != null && idToken != null) {
        return EnsUser(
          idNat: JwtHelper.extractIdNatFromIdEns(accessToken),
          username: JwtHelper.extractUsername(idToken),
        );
      }
    }
    return null;
  }

  @override
  Future<String?> authenticate([bool shouldRedirectToLoginMdpWebView = false]) async {
    await _performAuthorizeAndExchangeCode(shouldRedirectToLoginMdpWebView);
    if (!_lastTokenResponseIsValid()) {
      await _performEndSession();
    }

    return _lastTokenResponse?.accessToken;
  }

  @override
  Future<void> logout() => _performEndSession();

  @override
  AuthStatus getCurrentAuthStatus() => _lastTokenResponseIsValid() ? AuthStatus.LOGGED_IN : AuthStatus.NOT_LOGGED_IN;

  @override
  Future<String?> getToken() async {
    if (!_lastTokenResponseIsValid()) {
      _performEndSession();
    }
    return _lastTokenResponse?.accessToken;
  }

  Future<void> _performEndSession() async {
    try {
      await _appAuth.endSession(
        EndSessionRequest(
          idTokenHint: _lastTokenResponse?.idToken ?? '',
          postLogoutRedirectUrl: _openidConfig.redirectUrl,
          serviceConfiguration: _getServiceConfiguration(),
          externalUserAgent: ExternalUserAgent.ephemeralAsWebAuthenticationSession,
          additionalParameters: {
            'invalidate_tokens': 'true',
          },
        ),
      );
      _lastTokenResponse = null;
    } catch (e) {
      // No-op
    }
  }

  Future<String?> _performAuthorizeAndExchangeCode(bool shouldRedirectToLoginMdpWebView) async {
    final String? usernameFromSS = await _secureStorage.read(key: _SS_USER_USERNAME_KEY);
    final String? loginHint;
    if (usernameFromSS?.isNotEmpty == true) {
      loginHint = usernameFromSS;
    } else {
      loginHint = null;
    }
    final bool shouldSkipPasswordlessActivation = await EnsModuleContainer.commonInjector
            ?.getPasswordlessBlacklist()
            .shouldSkipPasswordless(PasswordlessType.ACTIVATION) ??
        false;
    final bool shouldSkipPasswordlessConnexion = await EnsModuleContainer.commonInjector
            ?.getPasswordlessBlacklist()
            .shouldSkipPasswordless(PasswordlessType.CONNEXION) ??
        false;

    _lastTokenResponse = await _appAuth.authorizeAndExchangeCode(
      AuthorizationTokenRequest(
        _openidConfig.clientId,
        _openidConfig.redirectUrl,
        serviceConfiguration: _getServiceConfiguration(),
        scopes: _openidConfig.scopes,
        loginHint: loginHint,
        promptValues: ['login'],
        additionalParameters: {
          'should_skip_passwordless': shouldSkipPasswordlessActivation.toString(),
          'should_redirect_ideo_sso': shouldRedirectToLoginMdpWebView
              ? 'true'
              : shouldSkipPasswordlessConnexion
                  ? 'true'
                  : 'false',
        },
      ),
    );
    return _lastTokenResponse?.accessToken;
  }

  bool _lastTokenResponseIsValid() {
    final isCurrentAccessTokenWithPatientId = _tokenWithPatientId(_lastTokenResponse?.accessToken);
    final isCurrentAccessTokenNotExpired =
        _lastTokenResponse?.accessTokenExpirationDateTime?.isAfter(DateTime.now()) ?? false;
    return isCurrentAccessTokenWithPatientId && isCurrentAccessTokenNotExpired;
  }

  bool _tokenWithPatientId(String? jwtToken) {
    return JwtHelper.extractIdNatFromIdEns(jwtToken ?? '').isNotEmpty;
  }
}
