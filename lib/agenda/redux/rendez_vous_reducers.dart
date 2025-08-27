/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'agenda_redux.dart';

class RendezVousReducers {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, FetchRendezVousEtRappelsEtExamensAction>(
          RendezVousReducers._onFetchRendezVousEtRappelsEtExamensAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchRendezVousSuccessAction>(
          RendezVousReducers._onProcessFetchRendezVousSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchRendezVousErrorAction>(
          RendezVousReducers._onProcessFetchRendezVousErrorAction,
        ).call,
        TypedReducer<EnsState, AddRendezVousAction>(RendezVousReducers._onAddRendezVousAction).call,
        TypedReducer<EnsState, _ProcessAddRendezVousSuccessAction>(
          RendezVousReducers._onProcessAddRendezVousSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessAddRendezVousErrorAction>(
          RendezVousReducers._onProcessAddRendezVousErrorAction,
        ).call,
        TypedReducer<EnsState, UpdateRendezVousAction>(RendezVousReducers._onUpdateRendezVousAction).call,
        TypedReducer<EnsState, _ProcessUpdateRendezVousSuccessAction>(
          RendezVousReducers._onProcessUpdateRendezVousSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessUpdateRendezVousErrorAction>(
          RendezVousReducers._onProcessUpdateRendezVousErrorAction,
        ).call,
        TypedReducer<EnsState, _ProcessDeleteRendezVousSuccessAction>(
          RendezVousReducers._onProcessDeleteRendezVousSuccessAction,
        ).call,
        TypedReducer<EnsState, FetchRendezVousDetailAction>(
          RendezVousReducers._onFetchRendezVousDetailAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchRendezVousDetailSuccessAction>(
          RendezVousReducers._onProcessFetchRendezVousDetailSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchRendezVousDetailErrorAction>(
          RendezVousReducers._onProcessFetchRendezVousDetailErrorAction,
        ).call,
      ];

  static EnsState _onFetchRendezVousEtRappelsEtExamensAction(
    EnsState state,
    FetchRendezVousEtRappelsEtExamensAction action,
  ) {
    return state.clone(
      agendaState: state.agendaState.clone(
        rendezVousState: state.agendaState.rendezVousState.status.isNotSuccess()
            ? state.agendaState.rendezVousState.clone(status: AllPurposesStatus.LOADING)
            : state.agendaState.rendezVousState,
      ),
    );
  }

  static EnsState _onProcessFetchRendezVousSuccessAction(EnsState state, _ProcessFetchRendezVousSuccessAction action) {
    return state.clone(
      agendaState: state.agendaState.clone(
        rendezVousState: state.agendaState.rendezVousState.clone(
          status: AllPurposesStatus.SUCCESS,
          rendezVous: action.rendezVous,
        ),
      ),
    );
  }

  static EnsState _onProcessFetchRendezVousErrorAction(EnsState state, _ProcessFetchRendezVousErrorAction action) {
    return state.clone(
      agendaState: state.agendaState.clone(
        rendezVousState: state.agendaState.rendezVousState.clone(status: AllPurposesStatus.ERROR),
      ),
    );
  }

  static EnsState _onAddRendezVousAction(EnsState state, AddRendezVousAction action) {
    return state.clone(agendaState: state.agendaState.clone(rendezVousEditStatus: AllPurposesStatus.LOADING));
  }

  static EnsState _onProcessAddRendezVousSuccessAction(EnsState state, _ProcessAddRendezVousSuccessAction action) {
    final newRdvs = List<RendezVous>.from(state.agendaState.rendezVousState.rendezVous)
      ..add(action.rendezVous)
      ..sort((a, b) => a.date.compareTo(b.date));

    return state.clone(
      agendaState: state.agendaState.clone(
        rendezVousState: state.agendaState.rendezVousState.clone(rendezVous: newRdvs),
        rendezVousEditStatus: AllPurposesStatus.SUCCESS,
      ),
    );
  }

  static EnsState _onProcessAddRendezVousErrorAction(EnsState state, _ProcessAddRendezVousErrorAction action) {
    return state.clone(agendaState: state.agendaState.clone(rendezVousEditStatus: AllPurposesStatus.ERROR));
  }

  static EnsState _onUpdateRendezVousAction(EnsState state, UpdateRendezVousAction action) {
    return state.clone(agendaState: state.agendaState.clone(rendezVousEditStatus: AllPurposesStatus.LOADING));
  }

  static EnsState _onProcessUpdateRendezVousSuccessAction(
    EnsState state,
    _ProcessUpdateRendezVousSuccessAction action,
  ) {
    final rendezVous = action.rendezVous;
    List<RendezVous> newRdvs = List<RendezVous>.from(state.agendaState.rendezVousState.rendezVous);
    newRdvs = newRdvs.map((rdv) => rdv.id == rendezVous.id ? rendezVous : rdv).toList()
      ..sort((a, b) => a.date.compareTo(b.date));

    return state.clone(
      agendaState: state.agendaState.clone(
        rendezVousState: state.agendaState.rendezVousState.clone(rendezVous: newRdvs),
        rendezVousDetailState: RendezVousDetailState(status: AllPurposesStatus.SUCCESS, rendezVous: rendezVous),
        rendezVousEditStatus: AllPurposesStatus.SUCCESS,
      ),
    );
  }

  static EnsState _onProcessUpdateRendezVousErrorAction(
    EnsState state,
    _ProcessUpdateRendezVousErrorAction action,
  ) {
    return state.clone(agendaState: state.agendaState.clone(rendezVousEditStatus: AllPurposesStatus.ERROR));
  }

  static EnsState _onProcessDeleteRendezVousSuccessAction(
    EnsState state,
    _ProcessDeleteRendezVousSuccessAction action,
  ) {
    final newRdvs = List<RendezVous>.from(state.agendaState.rendezVousState.rendezVous)
      ..removeWhere((rdv) => rdv.id == action.rdvId);

    return state.clone(
      agendaState: state.agendaState.clone(
        rendezVousState: state.agendaState.rendezVousState.clone(rendezVous: newRdvs),
      ),
    );
  }

  static EnsState _onFetchRendezVousDetailAction(EnsState currentState, FetchRendezVousDetailAction action) {
    return currentState.clone(
      agendaState: currentState.agendaState.clone(
        rendezVousDetailState: const RendezVousDetailState(status: AllPurposesStatus.LOADING),
      ),
    );
  }

  static EnsState _onProcessFetchRendezVousDetailSuccessAction(
    EnsState state,
    _ProcessFetchRendezVousDetailSuccessAction action,
  ) {
    return state.clone(
      agendaState: state.agendaState.clone(
        rendezVousDetailState: RendezVousDetailState(status: AllPurposesStatus.SUCCESS, rendezVous: action.rendezVous),
      ),
    );
  }

  static EnsState _onProcessFetchRendezVousDetailErrorAction(
    EnsState state,
    _ProcessFetchRendezVousDetailErrorAction action,
  ) {
    return state.clone(
      agendaState: state.agendaState.clone(
        rendezVousDetailState: RendezVousDetailState(status: AllPurposesStatus.ERROR, errorDomain: action.domainError),
      ),
    );
  }
}
