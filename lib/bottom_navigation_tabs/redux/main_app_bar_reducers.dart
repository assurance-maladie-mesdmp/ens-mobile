/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/bottom_navigation_tabs/redux/main_app_bar_actions.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:redux/redux.dart';

class MainAppBarReducers {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, ToggleMainAppBarVisibilityAction>(
          MainAppBarReducers._onToggleMainAppBarVisibilityAction,
        ).call,
      ];

  static EnsState _onToggleMainAppBarVisibilityAction(EnsState state, ToggleMainAppBarVisibilityAction action) {
    return state.clone(displayMainAppBar: !state.displayMainAppBar);
  }
}
