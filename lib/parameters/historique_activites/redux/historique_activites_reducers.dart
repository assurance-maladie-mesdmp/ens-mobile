/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'historique_activites_redux.dart';

class HistoriqueActivitesReducers {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, FetchProfessionnelsDeSanteTracesAction>(
          HistoriqueActivitesReducers._onFetchProfessionnelsDeSanteTracesAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchProfessionnelsDeSanteTracesSuccessAction>(
          HistoriqueActivitesReducers._onProcessFetchProfessionnelsDeSanteTracesSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchProfessionnelsDeSanteTracesErrorAction>(
          HistoriqueActivitesReducers._onProcessFetchProfessionnelsDeSanteTracesErrorAction,
        ).call,
        TypedReducer<EnsState, FetchProfessionnelsDeSanteTracesNextPageAction>(
          HistoriqueActivitesReducers._onFetchProfessionnelsDeSanteTracesNextPageAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchProfessionnelsDeSanteTracesNextPageSuccessAction>(
          HistoriqueActivitesReducers._onProcessFetchProfessionnelsDeSanteTracesNextPageSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchProfessionnelsDeSanteTracesNextPageErrorAction>(
          HistoriqueActivitesReducers._onProcessFetchProfessionnelsDeSanteTracesNextPageErrorAction,
        ).call,
        TypedReducer<EnsState, FetchMesActivitesTracesAction>(
          HistoriqueActivitesReducers._onFetchMesActivitesTracesAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchMesActivitesTracesSuccessAction>(
          HistoriqueActivitesReducers._onProcessFetchMesActivitesTracesSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchMesActivitesTracesErrorAction>(
          HistoriqueActivitesReducers._onProcessFetchMesActivitesTracesErrorAction,
        ).call,
        TypedReducer<EnsState, FetchServicesSynchronisesTracesAction>(
          HistoriqueActivitesReducers._onFetchServicesSynchronisesTracesAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchServicesSynchronisesTracesSuccessAction>(
          HistoriqueActivitesReducers._onProcessFetchServicesSynchronisesTracesSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchServicesSynchronisesTracesErrorAction>(
          HistoriqueActivitesReducers._onProcessFetchServicesSynchronisesTracesErrorAction,
        ).call,
        TypedReducer<EnsState, UpdateHistoriqueActivitiesFilterAction>(
          HistoriqueActivitesReducers._onUpdateHistoriqueActivitiesFilterAction,
        ).call,
        TypedReducer<EnsState, ResetHistoriqueActivitiesFilterAction>(
          HistoriqueActivitesReducers._onResetHistoriqueActivitiesFilterAction,
        ).call,
        TypedReducer<EnsState, FetchProfessionnelDeSanteTracesByIdAction>(
          HistoriqueActivitesReducers._onFetchProfessionnelDeSanteTracesByIdAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchProfessionnelDeSanteTracesByIdSuccessAction>(
          HistoriqueActivitesReducers._onProcessFetchProfessionnelDeSanteTracesByIdSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchProfessionnelDeSanteTracesByIdErrorAction>(
          HistoriqueActivitesReducers._onProcessFetchProfessionnelDeSanteTracesByIdErrorAction,
        ).call,
      ];

  static EnsState _onFetchProfessionnelsDeSanteTracesAction(
    EnsState state,
    FetchProfessionnelsDeSanteTracesAction action,
  ) {
    if (action.force ||
        state.historiqueActivitesState.professionnelsDeSanteTracesState.status.isNotSuccess() ||
        state.historiqueActivitesState.psTracesNotConsistent) {
      return state.clone(
        historiqueActivitesState: state.historiqueActivitesState.clone(
          professionnelsDeSanteTracesState: state.historiqueActivitesState.professionnelsDeSanteTracesState.clone(
            status: AllPurposesStatus.LOADING,
          ),
        ),
      );
    } else {
      return state;
    }
  }

  static EnsState _onProcessFetchProfessionnelsDeSanteTracesSuccessAction(
    EnsState state,
    _ProcessFetchProfessionnelsDeSanteTracesSuccessAction action,
  ) {
    final professionnelsDeSanteTraces = action.professionnelsDeSanteTraces;
    return state.clone(
      historiqueActivitesState: state.historiqueActivitesState.clone(
        professionnelsDeSanteTracesState: state.historiqueActivitesState.professionnelsDeSanteTracesState.clone(
          status: AllPurposesStatus.SUCCESS,
          traces: professionnelsDeSanteTraces.traces,
          currentPage: professionnelsDeSanteTraces.currentPage,
          hasNextPage: professionnelsDeSanteTraces.hasNextPage,
          currentTracesDateRangeFilterOptional: Optional.ofNullable(action.currentDataDateFilter),
        ),
      ),
    );
  }

  static EnsState _onProcessFetchProfessionnelsDeSanteTracesErrorAction(
    EnsState state,
    _ProcessFetchProfessionnelsDeSanteTracesErrorAction action,
  ) {
    return state.clone(
      historiqueActivitesState: state.historiqueActivitesState.clone(
        professionnelsDeSanteTracesState: state.historiqueActivitesState.professionnelsDeSanteTracesState.clone(
          status: AllPurposesStatus.ERROR,
        ),
      ),
    );
  }

  static EnsState _onFetchProfessionnelsDeSanteTracesNextPageAction(
    EnsState state,
    FetchProfessionnelsDeSanteTracesNextPageAction action,
  ) {
    return state.clone(
      historiqueActivitesState: state.historiqueActivitesState.clone(
        professionnelsDeSanteTracesState: state.historiqueActivitesState.professionnelsDeSanteTracesState.clone(
          paginationStatus: AllPurposesStatus.LOADING,
        ),
      ),
    );
  }

  static EnsState _onProcessFetchProfessionnelsDeSanteTracesNextPageSuccessAction(
    EnsState state,
    _ProcessFetchProfessionnelsDeSanteTracesNextPageSuccessAction action,
  ) {
    final professionnelsDeSanteTraces = action.professionnelsDeSanteTraces;
    final newTraces = List<Trace>.from(state.historiqueActivitesState.professionnelsDeSanteTracesState.traces)
      ..addAll(professionnelsDeSanteTraces.traces);
    return state.clone(
      historiqueActivitesState: state.historiqueActivitesState.clone(
        professionnelsDeSanteTracesState: state.historiqueActivitesState.professionnelsDeSanteTracesState.clone(
          paginationStatus: AllPurposesStatus.SUCCESS,
          traces: newTraces,
          currentPage: professionnelsDeSanteTraces.currentPage,
          hasNextPage: professionnelsDeSanteTraces.hasNextPage,
        ),
      ),
    );
  }

  static EnsState _onProcessFetchProfessionnelsDeSanteTracesNextPageErrorAction(
    EnsState state,
    _ProcessFetchProfessionnelsDeSanteTracesNextPageErrorAction action,
  ) {
    return state.clone(
      historiqueActivitesState: state.historiqueActivitesState.clone(
        professionnelsDeSanteTracesState: state.historiqueActivitesState.professionnelsDeSanteTracesState.clone(
          paginationStatus: AllPurposesStatus.ERROR,
        ),
      ),
    );
  }

  static EnsState _onFetchMesActivitesTracesAction(
    EnsState state,
    FetchMesActivitesTracesAction action,
  ) {
    if (action.force || state.historiqueActivitesState.mesActivitesTracesState.status.isNotSuccess()) {
      return state.clone(
        historiqueActivitesState: state.historiqueActivitesState.clone(
          mesActivitesTracesState: state.historiqueActivitesState.mesActivitesTracesState.clone(
            status: AllPurposesStatus.LOADING,
          ),
        ),
      );
    } else {
      return state;
    }
  }

  static EnsState _onProcessFetchMesActivitesTracesSuccessAction(
    EnsState state,
    _ProcessFetchMesActivitesTracesSuccessAction action,
  ) {
    return state.clone(
      historiqueActivitesState: state.historiqueActivitesState.clone(
        mesActivitesTracesState: state.historiqueActivitesState.mesActivitesTracesState.clone(
          status: AllPurposesStatus.SUCCESS,
          traces: action.mesActivitesTraces.traces,
        ),
      ),
    );
  }

  static EnsState _onProcessFetchMesActivitesTracesErrorAction(
    EnsState state,
    _ProcessFetchMesActivitesTracesErrorAction action,
  ) {
    return state.clone(
      historiqueActivitesState: state.historiqueActivitesState.clone(
        mesActivitesTracesState: state.historiqueActivitesState.mesActivitesTracesState.clone(
          status: AllPurposesStatus.ERROR,
        ),
      ),
    );
  }

  static EnsState _onFetchServicesSynchronisesTracesAction(
    EnsState state,
    FetchServicesSynchronisesTracesAction action,
  ) {
    if (action.force || state.historiqueActivitesState.servicesSynchronisesTracesState.status.isNotSuccess()) {
      return state.clone(
        historiqueActivitesState: state.historiqueActivitesState.clone(
          servicesSynchronisesTracesState: state.historiqueActivitesState.servicesSynchronisesTracesState.clone(
            status: AllPurposesStatus.LOADING,
          ),
        ),
      );
    } else {
      return state;
    }
  }

  static EnsState _onProcessFetchServicesSynchronisesTracesSuccessAction(
    EnsState state,
    _ProcessFetchServicesSynchronisesTracesSuccessAction action,
  ) {
    return state.clone(
      historiqueActivitesState: state.historiqueActivitesState.clone(
        servicesSynchronisesTracesState: state.historiqueActivitesState.servicesSynchronisesTracesState.clone(
          status: AllPurposesStatus.SUCCESS,
          traces: action.servicesSynchronisesTraces.traces,
        ),
      ),
    );
  }

  static EnsState _onProcessFetchServicesSynchronisesTracesErrorAction(
    EnsState state,
    _ProcessFetchServicesSynchronisesTracesErrorAction action,
  ) {
    return state.clone(
      historiqueActivitesState: state.historiqueActivitesState.clone(
        servicesSynchronisesTracesState: state.historiqueActivitesState.servicesSynchronisesTracesState.clone(
          status: AllPurposesStatus.ERROR,
        ),
      ),
    );
  }

  static EnsState _onUpdateHistoriqueActivitiesFilterAction(
    EnsState state,
    UpdateHistoriqueActivitiesFilterAction action,
  ) {
    return state.clone(
      historiqueActivitesState: state.historiqueActivitesState.clone(
        dateRangeFilterOptional: Optional.ofNullable(action.dateRangeFilter),
      ),
    );
  }

  static EnsState _onResetHistoriqueActivitiesFilterAction(
    EnsState state,
    ResetHistoriqueActivitiesFilterAction action,
  ) {
    return state.clone(
      historiqueActivitesState: state.historiqueActivitesState.clone(
        dateRangeFilterOptional: Optional.ofNullable(null),
      ),
    );
  }

  static EnsState _onFetchProfessionnelDeSanteTracesByIdAction(
    EnsState state,
    FetchProfessionnelDeSanteTracesByIdAction action,
  ) {
    final professionnelDeSanteTracesByIdStates = Map<String, ProfessionnelDeSanteTracesByIdState>.of(
      state.historiqueActivitesState.professionnelDeSanteTracesByIdStates,
    );
    final psIdNat = action.psIdNat;
    final currentPsTracesState = professionnelDeSanteTracesByIdStates[psIdNat];
    if (currentPsTracesState == null || currentPsTracesState.status.isNotSuccess()) {
      professionnelDeSanteTracesByIdStates[psIdNat] = ProfessionnelDeSanteTracesByIdState(
        status: AllPurposesStatus.LOADING,
        psIdNat: psIdNat,
      );
      return state.clone(
        historiqueActivitesState: state.historiqueActivitesState.clone(
          professionnelDeSanteTracesByIdStates: professionnelDeSanteTracesByIdStates,
        ),
      );
    } else {
      return state;
    }
  }

  static EnsState _onProcessFetchProfessionnelDeSanteTracesByIdSuccessAction(
    EnsState state,
    _ProcessFetchProfessionnelDeSanteTracesByIdSuccessAction action,
  ) {
    final professionnelDeSanteTracesByIdStates = Map<String, ProfessionnelDeSanteTracesByIdState>.of(
      state.historiqueActivitesState.professionnelDeSanteTracesByIdStates,
    );
    final psIdNat = action.psIdNat;
    professionnelDeSanteTracesByIdStates[psIdNat] = ProfessionnelDeSanteTracesByIdState(
      status: AllPurposesStatus.SUCCESS,
      psIdNat: psIdNat,
      psTraces: action.professionnelDeSanteTracesById.traces,
    );
    return state.clone(
      historiqueActivitesState: state.historiqueActivitesState.clone(
        professionnelDeSanteTracesByIdStates: professionnelDeSanteTracesByIdStates,
      ),
    );
  }

  static EnsState _onProcessFetchProfessionnelDeSanteTracesByIdErrorAction(
    EnsState state,
    _ProcessFetchProfessionnelDeSanteTracesByIdErrorAction action,
  ) {
    final professionnelDeSanteTracesByIdStates = Map<String, ProfessionnelDeSanteTracesByIdState>.of(
      state.historiqueActivitesState.professionnelDeSanteTracesByIdStates,
    );
    final psIdNat = action.psIdNat;
    professionnelDeSanteTracesByIdStates[psIdNat] = ProfessionnelDeSanteTracesByIdState(
      status: AllPurposesStatus.ERROR,
      psIdNat: psIdNat,
    );
    return state.clone(
      historiqueActivitesState: state.historiqueActivitesState.clone(
        professionnelDeSanteTracesByIdStates: professionnelDeSanteTracesByIdStates,
      ),
    );
  }
}
