/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'receive_sharing_redux.dart';

class ReceiveSharingReducers {
  static List<Reducer<EnsInitialState>> create() => [
        TypedReducer<EnsInitialState, _ReceiveSharingAction>(ReceiveSharingReducers._onReceiveSharingAction).call,
        TypedReducer<EnsInitialState, ResetReceiveSharingAction>(ReceiveSharingReducers._onResetSharingAction).call,
      ];

  static EnsInitialState _onReceiveSharingAction(EnsInitialState state, _ReceiveSharingAction action) {
    final fileContents = state.receiveSharingState.fileContents;
    final newFileContents = [...fileContents, ...action.fileContents];
    return state.clone(receiveSharingState: ReceiveSharingState(newFileContents));
  }

  static EnsInitialState _onResetSharingAction(EnsInitialState state, ResetReceiveSharingAction action) {
    return state.clone(receiveSharingState: const ReceiveSharingState([]));
  }
}
