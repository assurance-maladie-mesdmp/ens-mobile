/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'interruption_services_redux.dart';

class InterruptionServicesReducer {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, FetchInterruptionServiceAction>(
          InterruptionServicesReducer._onFetchInterruptionServiceAction,
        ).call,
        TypedReducer<EnsState, ProcessFetchedInterruptionServiceSuccessAction>(
          InterruptionServicesReducer._onProcessFetchedInterruptionServiceSuccessAction,
        ).call,
        TypedReducer<EnsState, ProcessFetchedInterruptionServiceErrorAction>(
          InterruptionServicesReducer._onProcessFetchedInterruptionServiceErrorAction,
        ).call,
      ];

  static List<Reducer<EnsInitialState>> createOffLine() => [
        TypedReducer<EnsInitialState, FetchInterruptionServiceAction>(
          InterruptionServicesReducer._onFetchInterruptionServiceOffLineAction,
        ).call,
        TypedReducer<EnsInitialState, ProcessFetchedInterruptionServiceSuccessAction>(
          InterruptionServicesReducer._onProcessFetchedInterruptionServiceSuccessOffLineAction,
        ).call,
        TypedReducer<EnsInitialState, ProcessFetchedInterruptionServiceErrorAction>(
          InterruptionServicesReducer._onProcessFetchedInterruptionServiceErrorOffLineAction,
        ).call,
      ];

  static EnsState _onFetchInterruptionServiceAction(
    EnsState state,
    FetchInterruptionServiceAction action,
  ) {
    return state.clone(
      interruptionServicesState: state.interruptionServicesState.clone(
        interruptionDeServiceInfosStatus: AllPurposesStatus.LOADING,
      ),
    );
  }

  static EnsState _onProcessFetchedInterruptionServiceSuccessAction(
    EnsState state,
    ProcessFetchedInterruptionServiceSuccessAction action,
  ) {
    return state.clone(
      interruptionServicesState: state.interruptionServicesState.clone(
        interruptionDeServiceInfos: action.result,
        interruptionDeServiceInfosStatus: AllPurposesStatus.SUCCESS,
      ),
    );
  }

  static EnsState _onProcessFetchedInterruptionServiceErrorAction(
    EnsState state,
    ProcessFetchedInterruptionServiceErrorAction action,
  ) {
    return state.clone(
      interruptionServicesState: state.interruptionServicesState.clone(
        interruptionDeServiceInfosStatus: AllPurposesStatus.ERROR,
      ),
    );
  }

  static EnsInitialState _onFetchInterruptionServiceOffLineAction(
    EnsInitialState state,
    FetchInterruptionServiceAction action,
  ) {
    return state.clone(
      interruptionServicesState: state.interruptionServicesState.clone(
        interruptionDeServiceInfosStatus: AllPurposesStatus.LOADING,
      ),
    );
  }

  static EnsInitialState _onProcessFetchedInterruptionServiceSuccessOffLineAction(
    EnsInitialState state,
    ProcessFetchedInterruptionServiceSuccessAction action,
  ) {
    return state.clone(
      interruptionServicesState: state.interruptionServicesState.clone(
        interruptionDeServiceInfos: action.result,
        interruptionDeServiceInfosStatus: AllPurposesStatus.SUCCESS,
      ),
    );
  }

  static EnsInitialState _onProcessFetchedInterruptionServiceErrorOffLineAction(
    EnsInitialState state,
    ProcessFetchedInterruptionServiceErrorAction action,
  ) {
    return state.clone(
      interruptionServicesState: state.interruptionServicesState.clone(
        interruptionDeServiceInfosStatus: AllPurposesStatus.ERROR,
      ),
    );
  }
}
