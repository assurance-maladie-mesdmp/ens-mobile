/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/parameters/enrolled_devices/data/enrolled_devices_repository.dart';

class GuestEnrolledDevicesRepository extends IEnrolledDevicesRepository {
  late int enrolledDevicesCount = 2;

  @override
  Future<RequestResult<int>> getEnrolledDevicesCount() async {
    if (enrolledDevicesCount < 0) {
      await Future.delayed(const Duration(seconds: 1));
    }
    return RequestResultSuccess(enrolledDevicesCount);
  }

  @override
  Future<RequestResult<void>> revokeEnrolledDevices() async {
    await Future.delayed(const Duration(seconds: 1));
    enrolledDevicesCount = 0;
    return RequestResultSuccess(null);
  }
}
