/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'groupe_sanguin_redux.dart';

class GroupeSanguinReducers {
  static List<Reducer<EnsState>> create() {
    return <Reducer<EnsState>>[
      TypedReducer<EnsState, _ProcessFetchCmsInformationsGroupeSanguinSuccessAction>(
        GroupeSanguinReducers._onProcessFetchInformationsGroupeSanguinSuccessAction,
      ).call,
      TypedReducer<EnsState, FetchGroupeSanguinAction>(
        GroupeSanguinReducers._onFetchGroupeSanguinAction,
      ).call,
      TypedReducer<EnsState, _ProcessFetchGroupeSanguinSuccessAction>(
        GroupeSanguinReducers._onProcessFetchGroupeSanguinSuccessAction,
      ).call,
      TypedReducer<EnsState, _ProcessFetchGroupeSanguinErrorAction>(
        GroupeSanguinReducers._onProcessFetchGroupeSanguinErrorAction,
      ).call,
      TypedReducer<EnsState, _AddGroupeSanguinAction>(
        GroupeSanguinReducers._onAddGroupeSanguinAction,
      ).call,
      TypedReducer<EnsState, _ProcessAddGroupeSanguinSuccessAction>(
        GroupeSanguinReducers._onProcessAddGroupeSanguinSuccessAction,
      ).call,
      TypedReducer<EnsState, _ProcessAddGroupeSanguinErrorAction>(
        GroupeSanguinReducers._onProcessAddGroupeSanguinErrorAction,
      ).call,
      TypedReducer<EnsState, _UpdateGroupeSanguinAction>(
        GroupeSanguinReducers._onUpdateGroupeSanguinAction,
      ).call,
      EnsPatientRelatedReducer<_ProcessUpdateGroupeSanguinSuccessAction>(
        GroupeSanguinReducers._onProcessUpdateGroupeSanguinSuccessAction,
      ).call,
      EnsPatientRelatedReducer<_ProcessUpdateGroupeSanguinErrorAction>(
        GroupeSanguinReducers._onProcessUpdateGroupeSanguinErrorAction,
      ).call,
      TypedReducer<EnsState, DeleteGroupeSanguinAction>(
        GroupeSanguinReducers._onDeleteGroupeSanguinAction,
      ).call,
      EnsPatientRelatedReducer<_ProcessDeleteGroupeSanguinSuccessAction>(
        GroupeSanguinReducers._onProcessDeleteGroupeSanguinSuccessAction,
      ).call,
      EnsPatientRelatedReducer<_ProcessDeleteGroupeSanguinErrorAction>(
        GroupeSanguinReducers._onProcessDeleteGroupeSanguinErrorAction,
      ).call,
    ];
  }

  static EnsState _onProcessFetchInformationsGroupeSanguinSuccessAction(
    EnsState state,
    _ProcessFetchCmsInformationsGroupeSanguinSuccessAction action,
  ) {
    return state.clone(
      groupeSanguinState: state.groupeSanguinState.clone(
        informationsGroupeSanguinCms: action.informationsGroupeSanguin,
      ),
    );
  }

  static EnsState _onFetchGroupeSanguinAction(
    EnsState state,
    FetchGroupeSanguinAction action,
  ) {
    if (action.force || state.groupeSanguinState.dataStatus.isNotSuccess()) {
      return state.clone(
        groupeSanguinState: state.groupeSanguinState.clone(
          dataStatus: AllPurposesStatus.LOADING,
        ),
      );
    }
    return state;
  }

  static EnsState _onProcessFetchGroupeSanguinSuccessAction(
    EnsState state,
    _ProcessFetchGroupeSanguinSuccessAction action,
  ) {
    return state.clone(
      groupeSanguinState: state.groupeSanguinState.clone(
        dataStatus: AllPurposesStatus.SUCCESS,
        groupeSanguinDataOptional: Optional.ofNullable(action.response),
      ),
    );
  }

  static EnsState _onProcessFetchGroupeSanguinErrorAction(
    EnsState state,
    _ProcessFetchGroupeSanguinErrorAction action,
  ) {
    return state.clone(
      groupeSanguinState: state.groupeSanguinState.clone(
        dataStatus: AllPurposesStatus.ERROR,
      ),
    );
  }

  static EnsState _onAddGroupeSanguinAction(
    EnsState state,
    _AddGroupeSanguinAction action,
  ) {
    return state.clone(
      groupeSanguinState: state.groupeSanguinState.clone(
        latestOperationStatus: AllPurposesStatus.LOADING,
      ),
    );
  }

  static EnsState _onProcessAddGroupeSanguinSuccessAction(
    EnsState state,
    _ProcessAddGroupeSanguinSuccessAction action,
  ) {
    return state.clone(
      groupeSanguinState: state.groupeSanguinState.clone(
        latestOperationStatus: AllPurposesStatus.SUCCESS,
      ),
    );
  }

  static EnsState _onProcessAddGroupeSanguinErrorAction(
    EnsState state,
    _ProcessAddGroupeSanguinErrorAction action,
  ) {
    return state.clone(
      groupeSanguinState: state.groupeSanguinState.clone(
        latestOperationStatus: AllPurposesStatus.ERROR,
      ),
    );
  }

  static EnsState _onUpdateGroupeSanguinAction(
    EnsState state,
    _UpdateGroupeSanguinAction action,
  ) {
    return state.clone(
      groupeSanguinState: state.groupeSanguinState.clone(
        latestOperationStatus: AllPurposesStatus.LOADING,
      ),
    );
  }

  static EnsState _onProcessUpdateGroupeSanguinSuccessAction(
    EnsState state,
    _ProcessUpdateGroupeSanguinSuccessAction action,
  ) {
    return state.clone(
      groupeSanguinState: state.groupeSanguinState.clone(
        latestOperationStatus: AllPurposesStatus.SUCCESS,
      ),
    );
  }

  static EnsState _onProcessUpdateGroupeSanguinErrorAction(
    EnsState state,
    _ProcessUpdateGroupeSanguinErrorAction action,
  ) {
    return state.clone(
      groupeSanguinState: state.groupeSanguinState.clone(
        latestOperationStatus: AllPurposesStatus.ERROR,
      ),
    );
  }

  static EnsState _onDeleteGroupeSanguinAction(
    EnsState state,
    DeleteGroupeSanguinAction action,
  ) {
    return state.clone(
      groupeSanguinState: state.groupeSanguinState.clone(
        latestOperationStatus: AllPurposesStatus.LOADING,
      ),
    );
  }

  static EnsState _onProcessDeleteGroupeSanguinSuccessAction(
    EnsState state,
    _ProcessDeleteGroupeSanguinSuccessAction action,
  ) {
    return state.clone(
      groupeSanguinState: state.groupeSanguinState.clone(
        latestOperationStatus: AllPurposesStatus.SUCCESS,
        groupeSanguinDataOptional: Optional.ofNullable(null),
      ),
    );
  }

  static EnsState _onProcessDeleteGroupeSanguinErrorAction(
    EnsState state,
    _ProcessDeleteGroupeSanguinErrorAction action,
  ) {
    return state.clone(
      groupeSanguinState: state.groupeSanguinState.clone(
        latestOperationStatus: AllPurposesStatus.ERROR,
      ),
    );
  }
}
