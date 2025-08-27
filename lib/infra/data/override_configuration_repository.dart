/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/infra/app_config.dart';
import 'package:fr_cnamts_ens/infra/override_configuration.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OverrideConfigurationRepository {
  final AppConfig appConfig;
  final SharedPreferences prefs;

  OverrideConfigurationRepository(this.appConfig, this.prefs);

  static const KEY_OVERRIDE_BFF_TOKEN = 'KEY_OVERRIDE_BFF_TOKEN';
  static const KEY_OVERRIDE_BFF_BASE_URL = 'KEY_OVERRIDE_BFF_BASE_URL';

  OverrideConfiguration getOverrideConfiguration({bool isEnrolement = false}) {
    OverrideConfiguration? conf;
    final overrideBffToken = prefs.getString(KEY_OVERRIDE_BFF_TOKEN);
    final overrideBffBaseUrl = prefs.getString(KEY_OVERRIDE_BFF_BASE_URL);
    if (overrideBffToken != null && overrideBffBaseUrl != null) {
      conf = OverrideConfiguration(bffToken: overrideBffToken, bffBaseUrl: overrideBffBaseUrl);
    }
    return conf ?? _buildDefaultOverrideConfiguration(isEnrolement);
  }

  void setOverrideConfiguration(OverrideConfiguration newConf) {
    prefs.setString(KEY_OVERRIDE_BFF_TOKEN, newConf.bffToken);
    prefs.setString(KEY_OVERRIDE_BFF_BASE_URL, newConf.bffBaseUrl);
  }

  OverrideConfiguration _buildDefaultOverrideConfiguration(bool isEnrolement) => OverrideConfiguration(
        bffBaseUrl: isEnrolement ? appConfig.overrideBffEnrolementUrl : appConfig.overrideBffBaseUrl,
        bffToken: appConfig.overrideBffToken,
      );
}
