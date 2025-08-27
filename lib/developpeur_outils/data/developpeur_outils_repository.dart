/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/infra/wrappers/device_secure_storage_wrapper.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class IDeveloppeurOutilsRepository {
  Future<void> clearSecureStorage();

  Future<void> clearSharedPreferences();
}

class DeveloppeurOutilsRepository extends IDeveloppeurOutilsRepository {
  final DeviceSecureStorageWrapper secureStorage;
  final SharedPreferences sharedPreferences;

  DeveloppeurOutilsRepository(this.secureStorage, this.sharedPreferences);

  @override
  Future<void> clearSecureStorage() async {
    await secureStorage.deleteAll();
  }

  @override
  Future<void> clearSharedPreferences() async {
    await sharedPreferences.clear();
  }
}
