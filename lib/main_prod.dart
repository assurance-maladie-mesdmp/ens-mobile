/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:io';

import 'package:ens_plugin/analytics/at_internet_bridge.dart';
import 'package:ens_plugin/trust_commander/trust_commander_bridge.dart';
import 'package:fr_cnamts_ens/infra/app_config.dart';
import 'package:fr_cnamts_ens/init_app.dart';

/*
 * Ce fichier à été modifié pour des raisons de sécurité.
 */

void main() {
  final appConfig = AppConfig(
    configName: AppConfigName.PROD,
    openidConfig: OpenidConfig(
      authorizationEndpoint: '',
      tokenEndpoint: '',
      endSessionEndpoint: '',
      scopes: [],
      clientId: '',
      redirectUrl: '',
    ),
    franceConnectPlusBaseUrl: '',
    bffBaseUrl: '',
    bffEnrolementUrl: '',
    customUriScheme: '',
    overrideBffBaseUrl: '',
    overrideBffEnrolementUrl: '',
    overrideBffToken: '',
    remoteConfigMaxAgeInMinutes: 720,
    atInternetTrackerConfig: AtInternetTrackerConfig(
      name: '',
      siteId: '',
      domain: '',
      log: '',
      secureLog: '',
    ),
    trustCommanderServiceConfig: TrustCommanderServiceConfig(
      0,
      Platform.isIOS ? 4 : 6,
    ),
  );

  initApp(appConfig);
}
