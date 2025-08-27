/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:async';

import 'package:fr_cnamts_ens/auth/redux/auth_actions.dart';
import 'package:fr_cnamts_ens/auth/redux/logout_wrapper.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/infra/remote_config_wrapper.dart';
import 'package:fr_cnamts_ens/notification_center/redux/notification_center_actions.dart';
import 'package:redux/redux.dart';

class InactivityMiddleware {
  Timer? _currentTimer;
  final LogoutWrapper _logoutWrapper;
  final RemoteConfigWrapper _remoteConfigWrapper;

  InactivityMiddleware._(this._remoteConfigWrapper, this._logoutWrapper);

  static List<Middleware<EnsState>> create(RemoteConfigWrapper remoteConfigWrapper, LogoutWrapper logoutWrapper) {
    final middlewares = InactivityMiddleware._(remoteConfigWrapper, logoutWrapper);
    return [
      TypedMiddleware<EnsState, dynamic>(middlewares.call).call,
    ];
  }

  Future<void> call(Store<EnsState> store, dynamic action, NextDispatcher next) async {
    next.call(action);
    if (_isNotExcludedInactivityAction(action)) {
      _resetInactivityCountDown(store);
    } else if (action is LogoutAction) {
      _currentTimer?.cancel();
      _currentTimer = null;
    }
  }

  bool _isNotExcludedInactivityAction(dynamic action) {
    return action is! LogoutAction && action is! FetchNotificationsAction && action is! VerifyAuthStatusAction;
  }

  void _resetInactivityCountDown(Store<EnsState> store) {
    final minutesBeforeLogout = _remoteConfigWrapper.getInactivityTimeout();
    _currentTimer?.cancel();
    _currentTimer = Timer(Duration(minutes: minutesBeforeLogout), () async {
      _logoutWrapper.logout();
    });
  }
}
