/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';

abstract class DeviceInfoWrapper {
  Future<String> getSystemVersion();

  Future<String> getDeviceModel();

  Future<String> getDeviceManufacturer();
}

class DeviceInfoWrapperImpl extends DeviceInfoWrapper {
  final DeviceInfoPlugin deviceInfo;

  DeviceInfoWrapperImpl() : deviceInfo = DeviceInfoPlugin();

  @override
  Future<String> getDeviceManufacturer() async {
    if (Platform.isAndroid) {
      final AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
      final String manufacturer = androidInfo.manufacturer;
      return manufacturer;
    }
    return '';
  }

  @override
  Future<String> getDeviceModel() async {
    String model = '';
    if (Platform.isAndroid) {
      final AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
      model = androidInfo.model;
    } else if (Platform.isIOS) {
      final IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
      model = iosInfo.model;
    }
    return model;
  }

  @override
  Future<String> getSystemVersion() async {
    String version = '';
    if (Platform.isAndroid) {
      final AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
      version = androidInfo.version.sdkInt.toString();
    } else if (Platform.isIOS) {
      final IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
      version = iosInfo.systemVersion;
    }
    return version;
  }
}
