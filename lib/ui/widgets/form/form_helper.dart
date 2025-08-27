/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/widgets/shake_widget.dart';

class FormHelper {
  static void handleValidationError({
    required ScrollController scrollController,
    required ShakeWidgetState? shakeCurrentState,
    bool? isAccessibleNavigationEnabled,
    FocusNode? focusNode,
  }) {
    shakeCurrentState?.shake();
    if (isAccessibleNavigationEnabled == true) {
      focusNode?.requestFocus();
    } else {
      Future.delayed(const Duration(milliseconds: 300)).then(
        (_) => scrollController.animateTo(
          0,
          duration: const Duration(milliseconds: 300),
          curve: Curves.fastOutSlowIn,
        ),
      );
    }
  }
}
