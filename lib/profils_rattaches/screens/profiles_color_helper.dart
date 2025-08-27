/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:ui';

import 'package:fr_cnamts_ens/ui/ens_colors.dart';

class ProfilesColorHelper {
  static final List<Color> _iconColors = [
    EnsColors.tertiary,
    EnsColors.illustrative12,
    EnsColors.secondary,
    EnsColors.illustrative13,
    EnsColors.success,
    EnsColors.info,
  ];

  static Color getIconColor(int index) {
    return _iconColors[index % _iconColors.length];
  }
}
