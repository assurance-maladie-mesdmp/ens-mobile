/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'nouvelles_fonctionnalites_redux.dart';

class NouvellesFonctionnalitesReducers {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, ProcessNouvellesFonctionnalitesToDisplaySuccessAction>(
          NouvellesFonctionnalitesReducers._onProcessNouvellesFonctionnalitesToDisplaySuccessAction,
        ).call,
        TypedReducer<EnsState, SetNouvellesFonctionnalitesBottomsheetDisplayedAction>(
          NouvellesFonctionnalitesReducers._onNouvellesFonctionnalitesBottomsheetDisplayedAction,
        ).call,
      ];

  static EnsState _onProcessNouvellesFonctionnalitesToDisplaySuccessAction(
    EnsState state,
    ProcessNouvellesFonctionnalitesToDisplaySuccessAction action,
  ) {
    return state.clone(
      nouvellesFonctionnalitesState: NouvellesFonctionnalitesState(
        nouvellesFonctionnalites: action.nouvellesFonctionnalitesToDisplay,
      ),
    );
  }

  static EnsState _onNouvellesFonctionnalitesBottomsheetDisplayedAction(
    EnsState state,
    SetNouvellesFonctionnalitesBottomsheetDisplayedAction action,
  ) {
    return state.clone(nouvellesFonctionnalitesState: null);
  }
}
