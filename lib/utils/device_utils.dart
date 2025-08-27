/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/cupertino.dart';

class DeviceUtils {
  static const _smallDeviceHeight = 600;
  static const _largeDeviceHeight = 1200;

  static bool isSmallDevice(BuildContext context) => MediaQuery.of(context).size.height < _smallDeviceHeight;

  static bool isLargeDevice(BuildContext context) => MediaQuery.of(context).size.height > _largeDeviceHeight;
}
