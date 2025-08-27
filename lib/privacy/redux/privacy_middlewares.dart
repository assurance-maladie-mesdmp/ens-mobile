/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/privacy/domain/ens_privacy.dart';
import 'package:fr_cnamts_ens/privacy/redux/privacy_actions.dart';
import 'package:redux/redux.dart';

class PrivacyMiddlewares {
  static List<Middleware<E>> create<E>(
    IEnsPrivacy privacy,
  ) {
    return [
      TypedMiddleware<E, PrivacyAcceptAllAction>(
        _onPrivacyAcceptAllAction(privacy),
      ).call,
      TypedMiddleware<E, PrivacyDeclineAllAction>(
        _onPrivacyDeclineAllAction(privacy),
      ).call,
      TypedMiddleware<E, PrivacyOpenParametersAction>(
        _onPrivacyOpenParametersAction(privacy),
      ).call,
    ];
  }

  static Middleware<E> _onPrivacyAcceptAllAction<E>(
    IEnsPrivacy privacy,
  ) {
    return (Store<E> store, action, NextDispatcher next) {
      privacy.acceptAll();
      next(action);
    };
  }

  static Middleware<E> _onPrivacyDeclineAllAction<E>(
    IEnsPrivacy privacy,
  ) {
    return (Store<E> store, action, NextDispatcher next) {
      privacy.declineAll();
      next(action);
    };
  }

  static Middleware<E> _onPrivacyOpenParametersAction<E>(
    IEnsPrivacy privacy,
  ) {
    return (Store<E> store, action, NextDispatcher next) {
      privacy.openPrivacyCenter();
      next(action);
    };
  }
}
