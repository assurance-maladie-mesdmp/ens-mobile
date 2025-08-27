/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'consentements_ps_redux.dart';

class ConsentementsPsReducers {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, FetchConsentementsPsAction>(
          ConsentementsPsReducers._onFetchConsentementsPsAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchConsentementsPsSuccessAction>(
          ConsentementsPsReducers._onProcessFetchConsentementsPsSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchConsentementsPsErrorAction>(
          ConsentementsPsReducers._onProcessFetchConsentementsPsErrorAction,
        ).call,
      ];

  static EnsState _onFetchConsentementsPsAction(
    EnsState state,
    FetchConsentementsPsAction action,
  ) {
    if (action.force || state.consentementsPsListState.status.isNotSuccess()) {
      return state.clone(consentementsPsListState: const ConsentementsPsListState(status: AllPurposesStatus.LOADING));
    } else {
      return state;
    }
  }

  static EnsState _onProcessFetchConsentementsPsSuccessAction(
    EnsState state,
    _ProcessFetchConsentementsPsSuccessAction action,
  ) {
    return state.clone(
      consentementsPsListState: ConsentementsPsListState(
        status: AllPurposesStatus.SUCCESS,
        consentementsPs: action.consentementPs,
      ),
    );
  }

  static EnsState _onProcessFetchConsentementsPsErrorAction(
    EnsState state,
    _ProcessFetchConsentementsPsErrorAction action,
  ) {
    return state.clone(consentementsPsListState: const ConsentementsPsListState(status: AllPurposesStatus.ERROR));
  }
}
