/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'agenda_redux.dart';

class RappelsReducers {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, FetchRendezVousEtRappelsEtExamensAction>(
          RappelsReducers._onFetchRendezVousEtRappelsEtExamensAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchRappelsErrorAction>(RappelsReducers._onProcessFetchRappelsErrorAction).call,
        TypedReducer<EnsState, _ProcessFetchRappelsSuccessAction>(
          RappelsReducers._onProcessFetchRappelsSuccessAction,
        ).call,
        TypedReducer<EnsState, AddRappelAction>(RappelsReducers._onAddRappelAction).call,
        TypedReducer<EnsState, _ProcessAddRappelSuccessAction>(RappelsReducers._onProcessAddedRappelAction).call,
        TypedReducer<EnsState, _ProcessAddRappelErrorAction>(RappelsReducers._onProcessAddRappelErrorAction).call,
        TypedReducer<EnsState, UpdateRappelAction>(RappelsReducers._onUpdateRappelAction).call,
        TypedReducer<EnsState, _ProcessUpdatedRappelSuccessAction>(
          RappelsReducers._onProcessUpdatedRappelSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessUpdatedRappelErrorAction>(
          RappelsReducers._onProcessUpdatedRappelErrorAction,
        ).call,
        TypedReducer<EnsState, _ProcessDeleteRappelSuccessAction>(RappelsReducers._onProcessDeleteRappelSuccessAction)
            .call,
        TypedReducer<EnsState, ReinitEditRappelStatusAction>(RappelsReducers._onReinitEditRappelStatusAction).call,
        TypedReducer<EnsState, FetchRappelDetailAction>(RappelsReducers._onFetchRappelDetailAction).call,
        TypedReducer<EnsState, _ProcessFetchedRappelDetailSuccessAction>(
          RappelsReducers._onProcessFetchedRappelDetailSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchedRappelDetailErrorAction>(
          RappelsReducers._onProcessFetchedRappelDetailErrorAction,
        ).call,
      ];

  static EnsState _onFetchRendezVousEtRappelsEtExamensAction(
    EnsState state,
    FetchRendezVousEtRappelsEtExamensAction action,
  ) {
    return state.clone(
      agendaState: state.agendaState.clone(
        rappelsState: state.agendaState.rappelsState.status.isNotSuccess()
            ? state.agendaState.rappelsState.clone(status: AllPurposesStatus.LOADING)
            : state.agendaState.rappelsState,
      ),
    );
  }

  static EnsState _onProcessFetchRappelsSuccessAction(EnsState state, _ProcessFetchRappelsSuccessAction action) {
    return state.clone(
      agendaState: state.agendaState.clone(
        rappelsState: state.agendaState.rappelsState.clone(status: AllPurposesStatus.SUCCESS, rappels: action.rappels),
      ),
    );
  }

  static EnsState _onProcessFetchRappelsErrorAction(EnsState state, _ProcessFetchRappelsErrorAction action) {
    return state.clone(
      agendaState: state.agendaState.clone(
        rappelsState: state.agendaState.rappelsState.clone(status: AllPurposesStatus.ERROR),
      ),
    );
  }

  static EnsState _onAddRappelAction(EnsState state, AddRappelAction action) {
    return state.clone(agendaState: state.agendaState.clone(rappelEditStatus: AllPurposesStatus.LOADING));
  }

  static EnsState _onProcessAddedRappelAction(EnsState state, _ProcessAddRappelSuccessAction action) {
    final rappel = action.rappel;
    final newRappels = List<Rappel>.from(state.agendaState.rappelsState.rappels)
      ..add(rappel)
      ..sort((a, b) => a.date.compareTo(b.date));

    return state.clone(
      agendaState: state.agendaState.clone(
        rappelsState: state.agendaState.rappelsState.clone(rappels: newRappels),
        rappelEditStatus: AllPurposesStatus.SUCCESS,
      ),
    );
  }

  static EnsState _onProcessAddRappelErrorAction(EnsState state, _ProcessAddRappelErrorAction action) {
    return state.clone(agendaState: state.agendaState.clone(rappelEditStatus: AllPurposesStatus.ERROR));
  }

  static EnsState _onUpdateRappelAction(EnsState state, UpdateRappelAction action) {
    return state.clone(agendaState: state.agendaState.clone(rappelEditStatus: AllPurposesStatus.LOADING));
  }

  static EnsState _onProcessUpdatedRappelSuccessAction(EnsState state, _ProcessUpdatedRappelSuccessAction action) {
    final newRappel = action.rappel;
    final newRappels = List<Rappel>.from(state.agendaState.rappelsState.rappels)
        .map((rappel) => rappel.id == newRappel.id ? newRappel : rappel)
        .toList()
      ..sort((rappel1, rappel2) => rappel1.date.compareTo(rappel2.date));

    return state.clone(
      agendaState: state.agendaState.clone(
        rappelsState: state.agendaState.rappelsState.clone(rappels: newRappels),
        rappelEditStatus: AllPurposesStatus.SUCCESS,
        rappelDetailState: RappelDetailState(status: AllPurposesStatus.SUCCESS, rappel: newRappel),
      ),
    );
  }

  static EnsState _onProcessUpdatedRappelErrorAction(EnsState state, _ProcessUpdatedRappelErrorAction action) {
    return state.clone(agendaState: state.agendaState.clone(rappelEditStatus: AllPurposesStatus.ERROR));
  }

  static EnsState _onProcessDeleteRappelSuccessAction(EnsState state, _ProcessDeleteRappelSuccessAction action) {
    final newRappels = List<Rappel>.from(state.agendaState.rappelsState.rappels)
        .where((rappel) => rappel.id != action.rappelId)
        .toList();
    return state.clone(
      agendaState: state.agendaState.clone(
        rappelsState: state.agendaState.rappelsState.clone(rappels: newRappels),
      ),
    );
  }

  static EnsState _onReinitEditRappelStatusAction(EnsState state, ReinitEditRappelStatusAction action) {
    return state.clone(agendaState: state.agendaState.clone(rappelEditStatus: AllPurposesStatus.NOT_LOADED));
  }

  static EnsState _onFetchRappelDetailAction(
    EnsState currentState,
    FetchRappelDetailAction action,
  ) {
    return currentState.clone(
      agendaState: currentState.agendaState.clone(
        rappelDetailState: const RappelDetailState(status: AllPurposesStatus.LOADING),
      ),
    );
  }

  static EnsState _onProcessFetchedRappelDetailSuccessAction(
    EnsState currentState,
    _ProcessFetchedRappelDetailSuccessAction action,
  ) {
    return currentState.clone(
      agendaState: currentState.agendaState.clone(
        rappelDetailState: RappelDetailState(status: AllPurposesStatus.SUCCESS, rappel: action.rappel),
      ),
    );
  }

  static EnsState _onProcessFetchedRappelDetailErrorAction(
    EnsState currentState,
    _ProcessFetchedRappelDetailErrorAction action,
  ) {
    return currentState.clone(
      agendaState: currentState.agendaState.clone(
        rappelDetailState: RappelDetailState(status: AllPurposesStatus.ERROR, errorDomain: action.domainError),
      ),
    );
  }
}
