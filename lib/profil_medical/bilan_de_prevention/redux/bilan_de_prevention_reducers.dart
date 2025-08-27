/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'bilan_de_prevention_redux.dart';

class BilanDePreventionReducers {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, FetchBilanDePreventionQuestionnairesAction>(
          _onFetchBilanDePreventionQuestionnairesAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchedBilanDePreventionQuestionnairesAction>(
          _onProcessFetchedBilanDePreventionQuestionnairesAction,
        ).call,
      ];

  static EnsState _onFetchBilanDePreventionQuestionnairesAction(
    EnsState state,
    FetchBilanDePreventionQuestionnairesAction action,
  ) {
    if (BilanDePreventionSelectors.needReloadBilanDePreventionData(state, action)) {
      return state.clone(
        bilanDePreventionState: state.bilanDePreventionState.clone(
          status: BilanDePreventionStatus.LOADING,
        ),
      );
    } else {
      return state;
    }
  }

  static EnsState _onProcessFetchedBilanDePreventionQuestionnairesAction(
    EnsState state,
    _ProcessFetchedBilanDePreventionQuestionnairesAction action,
  ) {
    final result = action.result;
    final EnsState newState;
    if (result == null) {
      newState = state.clone(
        bilanDePreventionState: state.bilanDePreventionState.clone(
          status: BilanDePreventionStatus.ERROR,
        ),
      );
    } else {
      newState = state.clone(
        bilanDePreventionState: state.bilanDePreventionState.clone(
          status: result.isEmpty ? BilanDePreventionStatus.EMPTY : BilanDePreventionStatus.SUCCESS,
          questionnairesAFaire: result.ensQuestionnairesAFaire,
          questionnairesEnCours: result.ensQuestionnairesEnCours,
          questionnairesTermines: result.ensQuestionnairesTermines,
        ),
      );
    }
    return newState;
  }
}
