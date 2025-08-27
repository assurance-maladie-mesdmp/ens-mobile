/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';

class EnsCheckbox extends StatelessWidget {
  final bool value;
  final void Function(bool?)? onChange;
  final double size;
  final bool enabled;
  final Color borderColor;

  const EnsCheckbox({
    super.key,
    required this.value,
    this.onChange,
    this.size = 24,
    this.enabled = true,
    this.borderColor = EnsColors.primary,
  });

  @override
  Widget build(BuildContext context) => SizedBox(
        height: size,
        width: size,
        child: Theme(
          data: ThemeData(
            unselectedWidgetColor: borderColor,
            checkboxTheme: CheckboxThemeData(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(2.0),
              ),
              side: WidgetStateBorderSide.resolveWith(
                (states) => BorderSide(width: 2, color: enabled ? borderColor : EnsColors.disabled),
              ),
            ),
          ),
          child: Checkbox(
            semanticLabel: value ? 'Coché' : 'Non coché',
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            activeColor: EnsColors.primary,
            value: enabled && value,
            onChanged: enabled ? onChange : null,
          ),
        ),
      );
}
