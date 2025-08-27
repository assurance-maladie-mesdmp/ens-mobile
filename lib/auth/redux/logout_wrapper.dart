/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/auth/redux/auth_actions.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:redux/redux.dart';

class LogoutWrapper implements InitialStoreDependant, EnsStoreDependant {
  late final Store<EnsInitialState> ensInitialStore;
  Store<EnsState>? ensStore;

  LogoutWrapper();

  void logout() {
    ensInitialStore.dispatch(LogoutAction());
    resetUser();
  }

  void resetUser() {
    ensStore?.dispatch(UserLoggedOutAction());
  }

  @override
  void initForInitialStore(Store<EnsInitialState> store) {
    ensInitialStore = store;
  }

  @override
  void initForEnsStore(Store<EnsState> store) {
    ensStore = store;
  }
}
