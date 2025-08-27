/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/foundation.dart';

class PluginUtils {
  static bool isDevicePreviewActivated() {
    const isFlagPresent = bool.fromEnvironment('device_preview', defaultValue: false);
    return kDebugMode && isFlagPresent;
  }

  static bool isAccessibilityToolsActivated() {
    const isFlagPresent = bool.fromEnvironment('accessibility_tools', defaultValue: false);
    return kDebugMode && isFlagPresent;
  }
}
