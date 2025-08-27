/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'enrolled_devices_redux.dart';

class FetchEnrolledDevicesAction {}

class _ProcessFetchEnrolledDevicesSuccessAction {
  final int deviceCount;

  _ProcessFetchEnrolledDevicesSuccessAction({required this.deviceCount});
}

class _ProcessFetchEnrolledDevicesErrorAction {}

class RevokeEnrolledDevicesAction {
  final bool isSingle;

  RevokeEnrolledDevicesAction({required this.isSingle});
}

class _ProcessRevokeEnrolledDevicesSuccessAction {}

class _ProcessRevokeEnrolledDevicesErrorAction {}
