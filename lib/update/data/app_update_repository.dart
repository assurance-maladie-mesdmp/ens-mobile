/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/update/domain/app_update_interactor.dart';
import 'package:in_app_update/in_app_update.dart';
import 'package:store_redirect/store_redirect.dart';

abstract class IAppUpdateRepository {
  Future<bool> getUpdate();

  Future<void> redirectToStore();
}

class AppUpdateRepositoryForIOS extends IAppUpdateRepository {
  final AppUpdateInteractor? _appUpdateInteractor;

  AppUpdateRepositoryForIOS(this._appUpdateInteractor);

  @override
  Future<bool> getUpdate() async {
    if (_appUpdateInteractor != null) {
      final bool newVersionAvailable = await _appUpdateInteractor!.newAppVersionAvailable();
      return newVersionAvailable;
    }
    return false;
  }

  @override
  Future<void> redirectToStore() async {
    StoreRedirect.redirect(iOSAppId: '1589255019');
  }
}

class AppUpdateRepositoryForAndroid extends IAppUpdateRepository {
  final bool isGuestMode;

  AppUpdateRepositoryForAndroid(this.isGuestMode);

  @override
  Future<bool> getUpdate() async {
    try {
      final needUpdate = await InAppUpdate.checkForUpdate(); // Works only in Prod
      if (needUpdate.updateAvailability == UpdateAvailability.updateAvailable && !isGuestMode) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }

  @override
  Future<void> redirectToStore() async {
    final updateInfo = await InAppUpdate.checkForUpdate();
    if (updateInfo.flexibleUpdateAllowed) {
      final startFlexibleUpdateResult = await InAppUpdate.startFlexibleUpdate();
      if (startFlexibleUpdateResult == AppUpdateResult.success) {
        InAppUpdate.completeFlexibleUpdate();
      }
    } else {
      StoreRedirect.redirect(androidAppId: 'fr.assurancemaladie.monespacesante');
    }
  }
}
