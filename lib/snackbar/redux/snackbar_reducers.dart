/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/snackbar/redux/snackbar_actions.dart';
import 'package:fr_cnamts_ens/snackbar/redux/snackbar_states.dart';
import 'package:redux/redux.dart';

class SnackbarReducers {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, DisplaySnackbarAction>(SnackbarReducers._onDisplaySnackbarAction).call,
        TypedReducer<EnsState, SnackBarDisplayedAction>(SnackbarReducers._onSnackBarDisplayedAction).call,
        TypedReducer<EnsState, HideSnackBarAction>(SnackbarReducers._onHideSnackBarAction).call,
        TypedReducer<EnsState, RegisterContainerAction>(SnackbarReducers._onRegisterContainerAction).call,
        TypedReducer<EnsState, UnregisterContainerAction>(SnackbarReducers._onUnregisterContainerAction).call,
      ];

  static EnsState _onDisplaySnackbarAction(EnsState state, DisplaySnackbarAction action) {
    return state.clone(
      snackbarContainerState: SnackbarContainerState(
        snackbarState: SnackbarState.display(
          action.type,
          action.text,
          action.extraVerticalPadding,
          action.skipAutoDismiss,
        ),
        containerCount: state.snackbarContainerState.containerCount,
      ),
    );
  }

  static EnsState _onSnackBarDisplayedAction(EnsState state, SnackBarDisplayedAction action) {
    return state.clone(
      snackbarContainerState: SnackbarContainerState(
        snackbarState: const SnackbarState.empty(),
        containerCount: state.snackbarContainerState.containerCount,
      ),
    );
  }

  static EnsState _onHideSnackBarAction(EnsState state, HideSnackBarAction action) {
    return state.clone(
      snackbarContainerState: SnackbarContainerState(
        snackbarState: const SnackbarState.hide(),
        containerCount: state.snackbarContainerState.containerCount,
      ),
    );
  }

  static EnsState _onRegisterContainerAction(EnsState state, RegisterContainerAction action) {
    return state.clone(
      snackbarContainerState: SnackbarContainerState(
        snackbarState: state.snackbarContainerState.snackbarState,
        containerCount: state.snackbarContainerState.containerCount + 1,
      ),
    );
  }

  static EnsState _onUnregisterContainerAction(EnsState state, UnregisterContainerAction action) {
    return state.clone(
      snackbarContainerState: SnackbarContainerState(
        snackbarState: state.snackbarContainerState.snackbarState,
        containerCount: state.snackbarContainerState.containerCount - 1,
      ),
    );
  }
}
