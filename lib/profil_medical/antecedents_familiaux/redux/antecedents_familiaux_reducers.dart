/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'antecedents_familiaux_redux.dart';

class AntecedentsFamiliauxReducers {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, FetchAntecedentsFamiliauxAction>(_onFetchAntecedentsFamiliauxAction).call,
        TypedReducer<EnsState, ProcessFetchAntecedentsFamiliauxSuccessAction>(
          _onProcessFetchAntecedentsFamiliauxSuccessAction,
        ).call,
        TypedReducer<EnsState, ProcessFetchAntecedentsFamiliauxErrorAction>(
          _onProcessFetchAntecedentsFamiliauxErrorAction,
        ).call,
        TypedReducer<EnsState, AddAntecedentFamilialAction>(_onAddAntecedentFamilialAction).call,
        TypedReducer<EnsState, UpdateAntecedentFamilialAction>(_onUpdateAntecedentFamilialAction).call,
        TypedReducer<EnsState, ProcessAddOrUpdateAntecedentFamilialSuccessAction>(
          _onProcessAddOrUpdateAntecedentFamilialSuccessAction,
        ).call,
        TypedReducer<EnsState, ProcessAddOrUpdateAntecedentFamilialErrorAction>(
          _onProcessAddOrUpdateAntecedentFamilialErrorAction,
        ).call,
        TypedReducer<EnsState, ProcessDeleteAntecedentFamilialSuccessAction>(
          _onProcessDeleteAntecedentFamilialSuccessAction,
        ).call,
      ];

  static EnsState _onFetchAntecedentsFamiliauxAction(EnsState state, FetchAntecedentsFamiliauxAction action) {
    if (action.force || state.antecedentsFamiliauxState.antecedentsFamiliauxListState.status.isNotSuccess()) {
      return state.clone(
        antecedentsFamiliauxState: state.antecedentsFamiliauxState.clone(
          antecedentsFamiliauxListState: state.antecedentsFamiliauxState.antecedentsFamiliauxListState.clone(
            status: AllPurposesStatus.LOADING,
          ),
        ),
      );
    }
    return state;
  }

  static EnsState _onProcessFetchAntecedentsFamiliauxSuccessAction(
    EnsState state,
    ProcessFetchAntecedentsFamiliauxSuccessAction action,
  ) {
    return state.clone(
      antecedentsFamiliauxState: state.antecedentsFamiliauxState.clone(
        antecedentsFamiliauxListState: AntecedentsFamiliauxListState(
          status: AllPurposesStatus.SUCCESS,
          antecedentsFamiliaux: action.antecedentsFamiliaux,
          nonConcerneDepuis: action.nonConcerneDepuis,
        ),
      ),
    );
  }

  static EnsState _onProcessFetchAntecedentsFamiliauxErrorAction(
    EnsState state,
    ProcessFetchAntecedentsFamiliauxErrorAction action,
  ) {
    return state.clone(
      antecedentsFamiliauxState: state.antecedentsFamiliauxState.clone(
        antecedentsFamiliauxListState: const AntecedentsFamiliauxListState(status: AllPurposesStatus.ERROR),
      ),
    );
  }

  static EnsState _onAddAntecedentFamilialAction(EnsState state, AddAntecedentFamilialAction action) {
    return state.clone(
      antecedentsFamiliauxState: state.antecedentsFamiliauxState.clone(
        antecedentsFamiliauxEditStatus: AllPurposesStatus.LOADING,
      ),
    );
  }

  static EnsState _onUpdateAntecedentFamilialAction(EnsState state, UpdateAntecedentFamilialAction action) {
    return state.clone(
      antecedentsFamiliauxState: state.antecedentsFamiliauxState.clone(
        antecedentsFamiliauxEditStatus: AllPurposesStatus.LOADING,
      ),
    );
  }

  static EnsState _onProcessAddOrUpdateAntecedentFamilialSuccessAction(
    EnsState state,
    ProcessAddOrUpdateAntecedentFamilialSuccessAction action,
  ) {
    return state.clone(
      antecedentsFamiliauxState: state.antecedentsFamiliauxState.clone(
        antecedentsFamiliauxEditStatus: AllPurposesStatus.SUCCESS,
      ),
    );
  }

  static EnsState _onProcessAddOrUpdateAntecedentFamilialErrorAction(
    EnsState state,
    ProcessAddOrUpdateAntecedentFamilialErrorAction action,
  ) {
    return state.clone(
      antecedentsFamiliauxState: state.antecedentsFamiliauxState.clone(
        antecedentsFamiliauxEditStatus: AllPurposesStatus.ERROR,
      ),
    );
  }

  static EnsState _onProcessDeleteAntecedentFamilialSuccessAction(
    EnsState state,
    ProcessDeleteAntecedentFamilialSuccessAction action,
  ) {
    final newAntecedentsFamiliaux = List<EnsAntecedentFamilial>.from(
      state.antecedentsFamiliauxState.antecedentsFamiliauxListState.antecedentsFamiliaux,
    )..removeWhere((antecedentFamilial) => antecedentFamilial.id == action.antecedentFamilialId);

    return state.clone(
      antecedentsFamiliauxState: state.antecedentsFamiliauxState.clone(
        antecedentsFamiliauxListState: state.antecedentsFamiliauxState.antecedentsFamiliauxListState.clone(
          antecedentsFamiliaux: newAntecedentsFamiliaux,
        ),
      ),
    );
  }
}
