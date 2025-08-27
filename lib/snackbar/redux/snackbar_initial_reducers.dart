/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:fr_cnamts_ens/snackbar/redux/snackbar_actions.dart';
import 'package:fr_cnamts_ens/snackbar/redux/snackbar_states.dart';
import 'package:redux/redux.dart';

class SnackbarInitialReducers {
  static List<Reducer<EnsInitialState>> create() => [
        TypedReducer<EnsInitialState, DisplaySnackbarAction>(SnackbarInitialReducers._onDisplaySnackbarAction).call,
        TypedReducer<EnsInitialState, SnackBarDisplayedAction>(SnackbarInitialReducers._onSnackBarDisplayedAction).call,
        TypedReducer<EnsInitialState, HideSnackBarAction>(SnackbarInitialReducers._onHideSnackBarAction).call,
        TypedReducer<EnsInitialState, RegisterContainerAction>(SnackbarInitialReducers._onRegisterContainerAction).call,
        TypedReducer<EnsInitialState, UnregisterContainerAction>(SnackbarInitialReducers._onUnregisterContainerAction)
            .call,
      ];

  static EnsInitialState _onDisplaySnackbarAction(EnsInitialState state, DisplaySnackbarAction action) {
    return state.clone(
      snackbarContainerState: SnackbarContainerState(
        snackbarState:
            SnackbarState.display(action.type, action.text, action.extraVerticalPadding, action.skipAutoDismiss),
        containerCount: state.snackbarContainerState.containerCount,
      ),
    );
  }

  static EnsInitialState _onSnackBarDisplayedAction(EnsInitialState state, SnackBarDisplayedAction action) {
    return state.clone(
      snackbarContainerState: SnackbarContainerState(
        snackbarState: const SnackbarState.empty(),
        containerCount: state.snackbarContainerState.containerCount,
      ),
    );
  }

  static EnsInitialState _onHideSnackBarAction(EnsInitialState state, HideSnackBarAction action) {
    return state.clone(
      snackbarContainerState: SnackbarContainerState(
        snackbarState: const SnackbarState.hide(),
        containerCount: state.snackbarContainerState.containerCount,
      ),
    );
  }

  static EnsInitialState _onRegisterContainerAction(EnsInitialState state, RegisterContainerAction action) {
    return state.clone(
      snackbarContainerState: SnackbarContainerState(
        snackbarState: state.snackbarContainerState.snackbarState,
        containerCount: state.snackbarContainerState.containerCount + 1,
      ),
    );
  }

  static EnsInitialState _onUnregisterContainerAction(EnsInitialState state, UnregisterContainerAction action) {
    return state.clone(
      snackbarContainerState: SnackbarContainerState(
        snackbarState: state.snackbarContainerState.snackbarState,
        containerCount: state.snackbarContainerState.containerCount - 1,
      ),
    );
  }
}
