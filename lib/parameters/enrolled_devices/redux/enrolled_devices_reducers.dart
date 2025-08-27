/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'enrolled_devices_redux.dart';

class EnrolledDevicesReducers {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, FetchEnrolledDevicesAction>(
          EnrolledDevicesReducers._onFetchEnrolledDevicesAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchEnrolledDevicesSuccessAction>(
          EnrolledDevicesReducers._onProcessFetchEnrolledDevicesSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchEnrolledDevicesErrorAction>(
          EnrolledDevicesReducers._onProcessFetchEnrolledDevicesErrorAction,
        ).call,
        TypedReducer<EnsState, RevokeEnrolledDevicesAction>(
          EnrolledDevicesReducers._onRevokeEnrolledDevicesAction,
        ).call,
        TypedReducer<EnsState, _ProcessRevokeEnrolledDevicesSuccessAction>(
          EnrolledDevicesReducers._onProcessRevokeEnrolledDevicesSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessRevokeEnrolledDevicesErrorAction>(
          EnrolledDevicesReducers._onProcessRevokeEnrolledDevicesErrorAction,
        ).call,
      ];

  static EnsState _onFetchEnrolledDevicesAction(
    EnsState state,
    FetchEnrolledDevicesAction action,
  ) {
    return state.clone(
      enrolledDevicesState: const EnrolledDevicesState(status: AllPurposesWithEmptyStatus.LOADING),
    );
  }

  static EnsState _onProcessFetchEnrolledDevicesSuccessAction(
    EnsState state,
    _ProcessFetchEnrolledDevicesSuccessAction action,
  ) {
    final deviceCount = action.deviceCount;
    if (deviceCount == 0) {
      return state.clone(
        enrolledDevicesState: const EnrolledDevicesState(status: AllPurposesWithEmptyStatus.EMPTY),
      );
    } else {
      return state.clone(
        enrolledDevicesState: EnrolledDevicesState(
          status: AllPurposesWithEmptyStatus.SUCCESS,
          deviceCount: deviceCount,
        ),
      );
    }
  }

  static EnsState _onProcessFetchEnrolledDevicesErrorAction(
    EnsState state,
    _ProcessFetchEnrolledDevicesErrorAction action,
  ) {
    return state.clone(
      enrolledDevicesState: const EnrolledDevicesState(status: AllPurposesWithEmptyStatus.ERROR),
    );
  }

  static EnsState _onRevokeEnrolledDevicesAction(
    EnsState state,
    RevokeEnrolledDevicesAction action,
  ) {
    return state.clone(
      enrolledDevicesState: state.enrolledDevicesState.clone(
        updateStatus: AllPurposesStatus.LOADING,
      ),
    );
  }

  static EnsState _onProcessRevokeEnrolledDevicesSuccessAction(
    EnsState state,
    _ProcessRevokeEnrolledDevicesSuccessAction action,
  ) {
    return state.clone(
      enrolledDevicesState: state.enrolledDevicesState.clone(
        status: AllPurposesWithEmptyStatus.EMPTY,
        deviceCount: 0,
        updateStatus: AllPurposesStatus.SUCCESS,
      ),
    );
  }

  static EnsState _onProcessRevokeEnrolledDevicesErrorAction(
    EnsState state,
    _ProcessRevokeEnrolledDevicesErrorAction action,
  ) {
    return state.clone(
      enrolledDevicesState: state.enrolledDevicesState.clone(
        updateStatus: AllPurposesStatus.ERROR,
      ),
    );
  }
}
