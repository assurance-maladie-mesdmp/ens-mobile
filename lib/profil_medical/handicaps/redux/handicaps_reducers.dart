/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'handicaps_redux.dart';

class HandicapsReducers {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, FetchHandicapsAction>(HandicapsReducers._onFetchHandicapsAction).call,
        TypedReducer<EnsState, _ProcessFetchHandicapsSuccessAction>(
          HandicapsReducers._onProcessFetchHandicapsSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchHandicapsErrorAction>(
          HandicapsReducers._onProcessFetchHandicapsErrorAction,
        ).call,
        TypedReducer<EnsState, SaveHandicapAction>(HandicapsReducers._onSaveHandicapAction).call,
        TypedReducer<EnsState, _ProcessSaveHandicapSuccessAction>(
          HandicapsReducers._onProcessSaveHandicapSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessSaveHandicapErrorAction>(
          HandicapsReducers._onProcessSaveHandicapErrorAction,
        ).call,
        TypedReducer<EnsState, _ProcessDeleteHandicapSuccessAction>(
          HandicapsReducers._onProcessDeleteHandicapSuccessAction,
        ).call,
      ];

  static EnsState _onFetchHandicapsAction(EnsState state, FetchHandicapsAction action) {
    if (action.force || state.handicapsState.handicapsListState.status.isNotSuccess()) {
      return state.clone(
        handicapsState: state.handicapsState.clone(
          handicapsListState: state.handicapsState.handicapsListState.clone(
            status: AllPurposesStatus.LOADING,
          ),
        ),
      );
    }
    return state;
  }

  static EnsState _onProcessFetchHandicapsSuccessAction(EnsState state, _ProcessFetchHandicapsSuccessAction action) {
    return state.clone(
      handicapsState: state.handicapsState.clone(
        handicapsListState: HandicapsListState(
          status: AllPurposesStatus.SUCCESS,
          handicaps: {for (final handicap in action.handicaps) handicap.id: handicap},
          nonConcerneDepuis: action.nonConcerneDepuis,
        ),
      ),
    );
  }

  static EnsState _onProcessFetchHandicapsErrorAction(EnsState state, _ProcessFetchHandicapsErrorAction action) {
    return state.clone(
      handicapsState: state.handicapsState.clone(
        handicapsListState: const HandicapsListState(status: AllPurposesStatus.ERROR),
      ),
    );
  }

  static EnsState _onSaveHandicapAction(EnsState state, SaveHandicapAction action) {
    return state.clone(
      handicapsState: state.handicapsState.clone(handicapEditStatus: AllPurposesStatus.LOADING),
    );
  }

  static EnsState _onProcessSaveHandicapSuccessAction(EnsState state, _ProcessSaveHandicapSuccessAction action) {
    return state.clone(
      handicapsState: state.handicapsState.clone(handicapEditStatus: AllPurposesStatus.SUCCESS),
    );
  }

  static EnsState _onProcessSaveHandicapErrorAction(EnsState state, _ProcessSaveHandicapErrorAction action) {
    return state.clone(
      handicapsState: state.handicapsState.clone(handicapEditStatus: AllPurposesStatus.ERROR),
    );
  }

  static EnsState _onProcessDeleteHandicapSuccessAction(EnsState state, _ProcessDeleteHandicapSuccessAction action) {
    final newHandicaps = Map<String, EnsHandicap>.from(state.handicapsState.handicapsListState.handicaps)
      ..remove(action.handicapId);
    return state.clone(
      handicapsState: state.handicapsState.clone(
        handicapsListState: state.handicapsState.handicapsListState.clone(handicaps: newHandicaps),
      ),
    );
  }
}
