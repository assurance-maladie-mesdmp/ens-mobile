/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract class DeviceSecureStorageWrapper {
  Future<void> write({required String key, required String? value});

  Future<String?> read({required String key});

  Future<void> delete({required String key});

  Future<void> deleteAll();
}

class DeviceSecureStorageImpl extends DeviceSecureStorageWrapper {
  final FlutterSecureStorage secureStorage;

  DeviceSecureStorageImpl(this.secureStorage);

  @override
  Future<String?> read({required String key}) async {
    return await secureStorage.read(key: key);
  }

  @override
  Future<void> write({required String key, required String? value}) async {
    return await secureStorage.write(key: key, value: value);
  }

  @override
  Future<void> delete({required String key}) async {
    return await secureStorage.delete(key: key);
  }

  @override
  Future<void> deleteAll() async {
    return await secureStorage.deleteAll();
  }
}
