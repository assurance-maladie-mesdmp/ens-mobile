/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/infra/model/app_version.dart';
import 'package:fr_cnamts_ens/infra/remote_config_wrapper.dart';
import 'package:fr_cnamts_ens/update/new_version.dart';
import 'package:package_info_plus/package_info_plus.dart';

class AppUpdateInteractor {
  final RemoteConfigWrapper _remoteConfigWrapper;
  final PackageInfo packageInfo;

  AppUpdateInteractor(this._remoteConfigWrapper, this.packageInfo);

  Future<bool> newAppVersionAvailable() async {
    final newVersion = NewVersion(
      iOSId: 'fr.assurancemaladie.monespacesante',
      androidId: 'fr.assurancemaladie.monespacesante',
    );
    final status = await newVersion.getVersionStatus();
    if (status != null) return status.canUpdate;
    return false;
  }

  Future<bool> shouldForceUpdate() async {
    await _remoteConfigWrapper.init();
    final String minVersionName = _remoteConfigWrapper.getMinimumVersionName();
    final AppVersion? current = _extractAppVersion(packageInfo.version);
    final AppVersion? minimum = _extractAppVersion(minVersionName);

    if (current == null || minimum == null) return false;

    if (current.major > minimum.major) {
      return false;
    } else {
      if (current.major == minimum.major) {
        if (current.minor > minimum.minor) {
          return false;
        } else {
          if (current.minor == minimum.minor) {
            return current.patch < minimum.patch;
          } else {
            return true;
          }
        }
      } else {
        return true;
      }
    }
  }

  AppVersion? _extractAppVersion(String version) {
    try {
      final digits = version.split('.').map((versionDigitStr) => int.parse(versionDigitStr)).toList();
      return digits.length == 3 ? AppVersion(major: digits[0], minor: digits[1], patch: digits[2]) : null;
    } catch (onError) {
      return null;
    }
  }
}
