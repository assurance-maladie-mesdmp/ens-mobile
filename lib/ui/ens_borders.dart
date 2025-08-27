/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';

class EnsBorders {
  static const noBorder = InputBorder.none;

  static final inputBorder = buildBorder(borderRadius: BorderRadius.circular(4));

  static final inputBorderFocus = buildBorder(width: 2, color: EnsColors.focus, borderRadius: BorderRadius.circular(4));

  static final inputBorderError = buildBorder(color: EnsColors.error, borderRadius: BorderRadius.circular(4));

  static final inputBorderSuccess = buildBorder(color: EnsColors.success, borderRadius: BorderRadius.circular(4));

  static final inputBorderErrorThick =
      buildBorder(width: 2, color: EnsColors.error, borderRadius: BorderRadius.circular(4));

  static final inputBorderDisabled = buildBorder(color: Colors.grey, borderRadius: BorderRadius.circular(4));

  static OutlineInputBorder buildBorder({
    double width = 1,
    Color color = EnsColors.title,
    required BorderRadius borderRadius,
  }) =>
      OutlineInputBorder(borderSide: BorderSide(color: color, width: width), borderRadius: borderRadius);
}
