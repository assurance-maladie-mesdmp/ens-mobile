/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/infra/remote_config_wrapper.dart';
import 'package:fr_cnamts_ens/infra/wrappers/device_info_wrapper.dart';

class PasswordlessBlacklist {
  final RemoteConfigWrapper remoteConfig;
  final DeviceInfoWrapper deviceInfo;

  PasswordlessBlacklist({required this.remoteConfig, required this.deviceInfo});

  Future<bool> shouldSkipPasswordless(PasswordlessType passwordlessType) async {
    List<String>? blacklistedOSVersions;
    List<String>? blacklistedModels;
    List<String>? blacklistedManufacturers;

    if (passwordlessType == PasswordlessType.ACTIVATION) {
      blacklistedOSVersions = remoteConfig.getBlacklisted('blacklistedOSVersionsActivation');
      blacklistedModels = remoteConfig.getBlacklisted('blacklistedModelsActivation');
      blacklistedManufacturers = remoteConfig.getBlacklisted('blacklistedManufacturersActivation');
    } else if (passwordlessType == PasswordlessType.CONNEXION) {
      blacklistedOSVersions = remoteConfig.getBlacklisted('blacklistedOSVersionsConnexion');
      blacklistedModels = remoteConfig.getBlacklisted('blacklistedModelsConnexion');
      blacklistedManufacturers = remoteConfig.getBlacklisted('blacklistedManufacturersConnexion');
    }

    if (blacklistedOSVersions != null && blacklistedOSVersions.isNotEmpty) {
      final version = await deviceInfo.getSystemVersion();
      if (blacklistedOSVersions
          .any((blacklistElement) => version.toLowerCase().contains(blacklistElement.toLowerCase()))) {
        return true;
      }
    }

    if (blacklistedModels != null && blacklistedModels.isNotEmpty) {
      final model = await deviceInfo.getDeviceModel();

      if (blacklistedModels.any((blacklistElement) => model.toLowerCase().contains(blacklistElement.toLowerCase()))) {
        return true;
      }
    }

    if (blacklistedManufacturers != null && blacklistedManufacturers.isNotEmpty) {
      final manufacturer = await deviceInfo.getDeviceManufacturer();
      if (blacklistedManufacturers
          .any((blacklistElement) => manufacturer.toLowerCase().contains(blacklistElement.toLowerCase()))) {
        return true;
      }
    }
    return false;
  }
}

enum PasswordlessType { ACTIVATION, CONNEXION }
