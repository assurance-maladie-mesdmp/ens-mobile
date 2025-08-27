/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'search_es_redux.dart';

class SearchEsReducers {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, SearchEsAction>(SearchEsReducers._onSearchEsAction).call,
        TypedReducer<EnsState, _ProcessSearchEsSuccessAction>(SearchEsReducers._onProcessSearchEsSuccessAction).call,
        TypedReducer<EnsState, _ProcessSearchEsErrorAction>(SearchEsReducers._onProcessSearchEsErrorAction).call,
        TypedReducer<EnsState, ClearEsResultsAction>(SearchEsReducers._onClearEsResultsAction).call,
      ];

  static EnsState _onSearchEsAction(EnsState state, SearchEsAction action) {
    return state.clone(searchEsState: const SearchEsState(status: AllPurposesStatus.LOADING));
  }

  static EnsState _onProcessSearchEsSuccessAction(EnsState state, _ProcessSearchEsSuccessAction action) {
    return state.clone(
      searchEsState: SearchEsState(
        status: AllPurposesStatus.SUCCESS,
        etablissementsDeSante: action.etablissementsDeSante,
      ),
    );
  }

  static EnsState _onProcessSearchEsErrorAction(EnsState state, _ProcessSearchEsErrorAction action) {
    return state.clone(searchEsState: const SearchEsState(status: AllPurposesStatus.ERROR));
  }

  static EnsState _onClearEsResultsAction(EnsState state, ClearEsResultsAction action) {
    return state.clone(searchEsState: const SearchEsState());
  }
}
