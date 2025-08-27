/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'search_ps_redux.dart';

class SearchPsReducers {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, SearchPsAction>(SearchPsReducers._onSearchPsAction).call,
        TypedReducer<EnsState, _ProcessSearchPsSuccessAction>(SearchPsReducers._onProcessSearchPsSuccessAction).call,
        TypedReducer<EnsState, _ProcessSearchPsErrorAction>(SearchPsReducers._onProcessSearchPsErrorAction).call,
        TypedReducer<EnsState, ClearPsResultsAction>(SearchPsReducers._onClearPsResultsAction).call,
        TypedReducer<EnsState, _ProcessSelectPsAction>(SearchPsReducers._onProcessSelectPsAction).call,
      ];

  static EnsState _onSearchPsAction(EnsState state, SearchPsAction action) {
    return state.clone(
      professionnelsDeSanteState: state.professionnelsDeSanteState.clone(
        searchPsState: const SearchPsState(status: AllPurposesStatus.LOADING),
        addPsState: const AddPsState(status: AddPsStatus.NOT_LOADED, currentPsSelected: null),
      ),
    );
  }

  static EnsState _onProcessSearchPsSuccessAction(EnsState state, _ProcessSearchPsSuccessAction action) {
    return state.clone(
      professionnelsDeSanteState: state.professionnelsDeSanteState.clone(
        searchPsState: SearchPsState(
          status: AllPurposesStatus.SUCCESS,
          professionnelsDeSante: action.professionnelsDeSante,
        ),
      ),
    );
  }

  static EnsState _onProcessSearchPsErrorAction(EnsState state, _ProcessSearchPsErrorAction action) {
    return state.clone(
      professionnelsDeSanteState: state.professionnelsDeSanteState.clone(
        searchPsState: const SearchPsState(status: AllPurposesStatus.ERROR),
      ),
    );
  }

  static EnsState _onClearPsResultsAction(EnsState state, ClearPsResultsAction action) {
    return state.clone(
      professionnelsDeSanteState: state.professionnelsDeSanteState.clone(searchPsState: const SearchPsState()),
    );
  }

  static EnsState _onProcessSelectPsAction(EnsState state, _ProcessSelectPsAction action) {
    return state.clone(
      professionnelsDeSanteState: state.professionnelsDeSanteState.clone(
        addPsState: AddPsState(
          status: AddPsStatus.SELECTED,
          currentPsSelected: action.selectedPs,
        ),
      ),
    );
  }
}
