/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_borders.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';

class EnsTextInputDecoration extends InputDecoration {
  EnsTextInputDecoration({
    required bool enabled,
    required bool hasError,
    required String hint,
    required TextStyle hintStyle,
    required bool isSuccess,
  }) : super(
          fillColor: enabled ? EnsColors.light : EnsColors.disabled100,
          filled: true,
          contentPadding: const EdgeInsets.all(16),
          counterText: '',
          border: hasError
              ? EnsBorders.inputBorderError
              : isSuccess
                  ? EnsBorders.inputBorderSuccess
                  : EnsBorders.inputBorder,
          focusedBorder: hasError ? EnsBorders.inputBorderError : EnsBorders.inputBorderFocus,
          enabledBorder: hasError
              ? EnsBorders.inputBorderError
              : isSuccess
                  ? EnsBorders.inputBorderSuccess
                  : EnsBorders.inputBorder,
          disabledBorder: EnsBorders.inputBorderDisabled,
          hintText: hint,
          hintStyle: hintStyle,
        );
}
