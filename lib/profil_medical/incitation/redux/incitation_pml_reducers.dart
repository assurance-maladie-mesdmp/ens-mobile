/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'incitation_pml_redux.dart';

class IncitationPmlReducers {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, _ProcessFetchedIncitationWelcomePageViewsAction>(
          IncitationPmlReducers._onProcessFetchedIncitationWelcomePageViewsAction,
        ).call,
        TypedReducer<EnsState, AddPatientIdIncitationWelcomePageAction>(
          IncitationPmlReducers._onAddPatientIdIncitationWelcomePageAction,
        ).call,
      ];

  static EnsState _onProcessFetchedIncitationWelcomePageViewsAction(
    EnsState currentState,
    _ProcessFetchedIncitationWelcomePageViewsAction action,
  ) {
    return currentState.clone(incitationPmlState: currentState.incitationPmlState.clone(patientIds: action.result));
  }

  static EnsState _onAddPatientIdIncitationWelcomePageAction(
    EnsState currentState,
    AddPatientIdIncitationWelcomePageAction action,
  ) {
    final List<String> newPatientIds = [];
    newPatientIds.addAll([...currentState.incitationPmlState.patientIds, action.patientId]);
    return currentState.clone(incitationPmlState: currentState.incitationPmlState.clone(patientIds: newPatientIds));
  }
}
