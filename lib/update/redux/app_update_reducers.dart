/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/update/redux/app_update_actions.dart';
import 'package:fr_cnamts_ens/update/redux/app_update_states.dart';
import 'package:redux/redux.dart';

class AppUpdateReducers {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, NeedUpdateAction>(AppUpdateReducers._onNeedUpdateAction).call,
      ];

  static EnsState _onNeedUpdateAction(EnsState state, NeedUpdateAction action) {
    return state.clone(appUpdateState: const AppUpdateState(status: AppUpdateStatus.NEED_TO_UPDATE));
  }
}
