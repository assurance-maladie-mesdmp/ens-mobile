/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:io';

import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

// ignore_for_file: dont_use_hard_coded_asset_path
extension ResourceExtension on String {
  String get assetName => split('assets/images/').last;
}

class EnsImagesExtension {
  static String icShare = Platform.isIOS ? EnsImages.ic_share_ios : EnsImages.ic_share_android;

  static String getSvgPath(String svgFileName) {
    return 'assets/images/$svgFileName';
  }
}
