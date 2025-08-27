/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/infra/wrappers/device_secure_storage_wrapper.dart';

abstract class IOfflineUserDataRepository {
  Future<String?> getUserUsernameFromSecureStorage();

  void saveUsernameIntoSecureStorage(String username);
}

class OfflineUserDataRepository extends IOfflineUserDataRepository {
  static const String _SS_USER_USERNAME_KEY = 'user_username';

  final DeviceSecureStorageWrapper secureStorage;

  OfflineUserDataRepository(this.secureStorage);

  @override
  Future<String?> getUserUsernameFromSecureStorage() async {
    final String? username = await secureStorage.read(key: _SS_USER_USERNAME_KEY);
    return username;
  }

  @override
  void saveUsernameIntoSecureStorage(String username) {
    secureStorage.write(key: _SS_USER_USERNAME_KEY, value: username);
  }
}
