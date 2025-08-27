/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'enrolled_devices_redux.dart';

class EnrolledDevicesState extends Equatable {
  final AllPurposesWithEmptyStatus status;
  final int deviceCount;
  final AllPurposesStatus updateStatus;

  const EnrolledDevicesState({
    this.status = AllPurposesWithEmptyStatus.NOT_LOADED,
    this.deviceCount = 0,
    this.updateStatus = AllPurposesStatus.NOT_LOADED,
  });

  EnrolledDevicesState clone({
    AllPurposesWithEmptyStatus? status,
    int? deviceCount,
    AllPurposesStatus? updateStatus,
  }) {
    return EnrolledDevicesState(
      status: status ?? this.status,
      deviceCount: deviceCount ?? this.deviceCount,
      updateStatus: updateStatus ?? this.updateStatus,
    );
  }

  @override
  List<Object?> get props => [status, deviceCount, updateStatus];
}
