/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'cgu_redux.dart';

class CguReducers {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, AcceptCguAction>(CguReducers._onAcceptCguAction).call,
        TypedReducer<EnsState, _ProcessAcceptCguSuccessAction>(CguReducers._onProcessAcceptCguSuccessAction).call,
        TypedReducer<EnsState, _ProcessAcceptCguErrorAction>(CguReducers._onProcessAcceptCguErrorAction).call,
        TypedReducer<EnsState, SetCguAcceptedAt>(CguReducers._onSetCguAcceptedAt).call,
      ];

  static EnsState _onAcceptCguAction(EnsState state, AcceptCguAction action) {
    return state.clone(userState: state.userState.clone(acceptCguState: AcceptCguState.LOADING));
  }

  static EnsState _onProcessAcceptCguSuccessAction(EnsState state, _ProcessAcceptCguSuccessAction action) {
    return state.clone(userState: state.userState.clone(acceptCguState: AcceptCguState.ACCEPTED));
  }

  static EnsState _onProcessAcceptCguErrorAction(EnsState state, _ProcessAcceptCguErrorAction action) {
    return state.clone(userState: state.userState.clone(acceptCguState: AcceptCguState.TO_ACCEPT));
  }

  static EnsState _onSetCguAcceptedAt(EnsState state, SetCguAcceptedAt action) {
    final mainUserDataState = state.userState.mainUserDataState;
    if (mainUserDataState.isSuccessWithData) {
      return state.clone(
        userState: state.userState.clone(
          mainUserDataState: state.userState.mainUserDataState.clone(
            userData: mainUserDataState.userData!.clone(cguAcceptedAtOptional: Optional.ofNullable(DateTime.now())),
          ),
        ),
      );
    }
    return state;
  }
}
