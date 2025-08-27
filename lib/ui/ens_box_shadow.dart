/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';

class EnsBoxShadow {
  static const BoxShadow base = BoxShadow(
    color: EnsColors.neutral200,
    blurRadius: 12,
    spreadRadius: 2,
    offset: Offset(4, 4),
  );
}
