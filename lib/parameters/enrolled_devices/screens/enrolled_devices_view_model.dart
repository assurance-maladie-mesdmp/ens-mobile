/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/parameters/enrolled_devices/redux/enrolled_devices_redux.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:redux/redux.dart';

class EnrolledDevicesViewModel extends Equatable {
  final AllPurposesWithEmptyStatus status;
  final int devicesCount;
  final AllPurposesStatus updateStatus;
  final void Function() loadEnrolledDevices;
  final void Function() revokeDevices;

  const EnrolledDevicesViewModel._internal({
    required this.status,
    required this.devicesCount,
    required this.updateStatus,
    required this.loadEnrolledDevices,
    required this.revokeDevices,
  });

  factory EnrolledDevicesViewModel.from(Store<EnsState> store) {
    final enrolledDevicesState = store.state.enrolledDevicesState;
    final deviceCount = enrolledDevicesState.deviceCount;
    return EnrolledDevicesViewModel._internal(
      status: enrolledDevicesState.status,
      devicesCount: deviceCount,
      updateStatus: enrolledDevicesState.updateStatus,
      loadEnrolledDevices: () => store.dispatch(FetchEnrolledDevicesAction()),
      revokeDevices: () => store.dispatch(RevokeEnrolledDevicesAction(isSingle: deviceCount == 1)),
    );
  }

  @override
  List<Object?> get props => [status, devicesCount, updateStatus];
}
