/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';

class EnsOutlinedButton extends StatelessWidget {
  final String label;
  final void Function()? onTap;
  final Color backgroundColor;
  final Color buttonColor;
  final TextStyle buttonTextStyle;
  final Widget? icon;
  final bool isTextExpanded;
  final CrossAxisAlignment crossAxisAlignment;
  final EdgeInsets? padding;

  const EnsOutlinedButton({
    this.onTap,
    required this.label,
    this.backgroundColor = Colors.transparent,
    this.buttonColor = EnsColors.primary,
    this.buttonTextStyle = EnsTextStyle.text14_w700_normal_primary,
    this.icon,
    this.isTextExpanded = false,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return EnsInkWell(
      color: backgroundColor,
      onTap: onTap,
      customBorder: const StadiumBorder(),
      child: Ink(
        padding: padding ?? const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        decoration: ShapeDecoration(
          shape: StadiumBorder(side: BorderSide(width: 1, color: buttonColor)),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: crossAxisAlignment,
          children: [
            if (icon != null) ...[
              icon!,
              const SizedBox(width: 8),
            ],
            if (isTextExpanded)
              Expanded(child: Text(label, textAlign: TextAlign.center, style: buttonTextStyle))
            else
              Flexible(fit: FlexFit.loose, child: Text(label, textAlign: TextAlign.start, style: buttonTextStyle)),
          ],
        ),
      ),
    );
  }
}
