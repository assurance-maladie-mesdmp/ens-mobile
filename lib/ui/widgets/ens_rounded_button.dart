/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';

class EnsRoundedButton extends StatelessWidget {
  final String? icon;
  final String text;
  final String? semanticsLabel;
  final Color? color;
  final void Function() onTap;
  final Widget? endChild;

  const EnsRoundedButton({
    super.key,
    this.icon,
    required this.text,
    this.semanticsLabel,
    this.color,
    required this.onTap,
    this.endChild,
  });

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(60);
    return Semantics(
      button: true,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: borderRadius,
            child: EnsInkWell(
              color: color ?? EnsColors.light,
              borderRadius: borderRadius,
              onTap: onTap,
              child: Container(
                constraints: const BoxConstraints(minHeight: 48),
                decoration: BoxDecoration(
                  borderRadius: borderRadius,
                  border: Border.all(color: EnsColors.primary),
                ),
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                child: Row(
                  children: [
                    if (icon != null) ...[
                      EnsSvg(icon!, color: EnsColors.primary, height: 20, width: 20),
                      const SizedBox(width: 8),
                    ],
                    Text(
                      text,
                      style: EnsTextStyle.text16_w700_normal_primary,
                      semanticsLabel: semanticsLabel,
                    ),
                    if (endChild != null) endChild!,
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
