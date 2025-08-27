/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class EnsPersistentInfoBox extends StatelessWidget {
  final Widget child;
  final String icon;
  final Color backgroundColor;
  final Color borderColor;
  final void Function()? onTap;

  EnsPersistentInfoBox.text(
    String text, {
    TextStyle style = EnsTextStyle.text14_w600_normal_body,
  }) : this._(child: Text(text, style: style));

  EnsPersistentInfoBox.error(String text)
      : this._(
          child: Text(text, style: EnsTextStyle.text14_w600_normal_body),
          icon: EnsImages.ic_error,
          backgroundColor: EnsColors.error100,
          borderColor: EnsColors.error,
        );

  const EnsPersistentInfoBox.custom({
    required Widget child,
    void Function()? onTap,
  }) : this._(child: child, onTap: onTap);

  const EnsPersistentInfoBox._({
    super.key,
    required this.child,
    this.icon = EnsImages.ic_info_circle,
    this.backgroundColor = EnsColors.info100,
    this.borderColor = EnsColors.primary,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(8);
    return MergeSemantics(
      child: EnsInkWell(
        onTap: onTap,
        borderRadius: borderRadius,
        child: Ink(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: backgroundColor,
            border: Border.all(color: borderColor),
            borderRadius: borderRadius,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              EnsSvg(icon, height: 24, width: 24),
              const SizedBox(width: 8),
              Expanded(child: child),
            ],
          ),
        ),
      ),
    );
  }
}
