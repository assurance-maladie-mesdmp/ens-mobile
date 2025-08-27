/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'raccourcis_redux.dart';

class RaccourcisReducers {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, _ProcessFetchedRaccourcisItemAction>(
          RaccourcisReducers._onProcessFetchedRaccourcisItemAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchedRaccourcisItemParCategorieAction>(
          RaccourcisReducers._onProcessFetchedRaccourcisItemParCategorieAction,
        ).call,
        TypedReducer<EnsState, _ProcessUpdateHomeRaccourcisItemsSuccessAction>(
          RaccourcisReducers._onUpdateRaccourcisItemsSuccessAction,
        ).call,
      ];

  static EnsState _onProcessFetchedRaccourcisItemAction(
    EnsState state,
    _ProcessFetchedRaccourcisItemAction action,
  ) {
    return state.clone(
      raccourcisState: state.raccourcisState.clone(raccourcis: [...action.raccourcis]),
    );
  }

  static EnsState _onProcessFetchedRaccourcisItemParCategorieAction(
    EnsState state,
    _ProcessFetchedRaccourcisItemParCategorieAction action,
  ) {
    return state.clone(
      raccourcisState: state.raccourcisState.clone(raccourcisParCategorie: action.raccourcisParCategorie),
    );
  }

  static EnsState _onUpdateRaccourcisItemsSuccessAction(
    EnsState state,
    _ProcessUpdateHomeRaccourcisItemsSuccessAction action,
  ) {
    return state.clone(raccourcisState: state.raccourcisState.clone(raccourcis: [...action.raccourcis]));
  }
}
