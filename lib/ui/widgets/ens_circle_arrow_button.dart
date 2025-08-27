/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class EnsCircleArrowButton extends StatelessWidget {
  final void Function() onTap;
  final ArrowDirection direction;
  final Color arrowColor;
  final Color backgroundColor;
  final String semanticLabel;
  final double size;
  final double padding;

  const EnsCircleArrowButton({
    super.key,
    required this.onTap,
    required this.direction,
    this.arrowColor = EnsColors.light,
    this.backgroundColor = EnsColors.primary,
    this.semanticLabel = '',
    this.size = 24,
    this.padding = 4,
  });

  @override
  Widget build(BuildContext context) {
    return EnsInkWell(
      semanticLabel: semanticLabel,
      borderRadius: BorderRadius.circular(200),
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Container(
          padding: EdgeInsets.all(padding),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(20),
          ),
          height: size,
          width: size,
          child: RotatedBox(
            quarterTurns: direction == ArrowDirection.LEFT ? 2 : 0,
            child: EnsSvg(EnsImages.ic_arrow_short_right, color: arrowColor),
          ),
        ),
      ),
    );
  }
}

enum ArrowDirection { LEFT, RIGHT }
