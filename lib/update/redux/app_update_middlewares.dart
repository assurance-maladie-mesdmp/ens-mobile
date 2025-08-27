/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/update/data/app_update_repository.dart';
import 'package:fr_cnamts_ens/update/redux/app_update_actions.dart';
import 'package:fr_cnamts_ens/user/redux/user_actions.dart';
import 'package:redux/redux.dart';

class AppUpdateMiddlewares {
  final IAppUpdateRepository _repository;

  AppUpdateMiddlewares(this._repository);

  static List<Middleware<EnsState>> create(IAppUpdateRepository repository) {
    final middlewares = AppUpdateMiddlewares(repository);
    return [
      TypedMiddleware<EnsState, InitEnsUserAction>(middlewares._onInitEnsUserAction).call,
      TypedMiddleware<EnsState, RedirectUpdateAction>(middlewares._onRedirectUpdateAction).call,
    ];
  }

  Future<void> _onInitEnsUserAction(Store<EnsState> store, InitEnsUserAction action, NextDispatcher next) async {
    next(action);
    final result = await _repository.getUpdate();
    if (result) store.dispatch(NeedUpdateAction());
  }

  Future<void> _onRedirectUpdateAction(Store<EnsState> store, RedirectUpdateAction action, NextDispatcher next) async {
    next(action);
    _repository.redirectToStore();
  }
}
