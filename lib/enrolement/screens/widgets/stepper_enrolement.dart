/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';

class StepperEnrolement extends StatelessWidget {
  final double width;
  final int maxValue;
  final int value;

  const StepperEnrolement({
    required this.width,
    required this.maxValue,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 8,
          width: width,
          decoration: const ShapeDecoration(color: EnsColors.neutral200, shape: LinearBorder.none),
        ),
        Container(
          height: 8,
          width: width * (value / maxValue),
          decoration: value >= maxValue
              ? const ShapeDecoration(color: EnsColors.primary, shape: LinearBorder.none)
              : const BoxDecoration(
                  color: EnsColors.primary,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(13.0),
                    bottomRight: Radius.circular(13.0),
                  ),
                ),
        ),
      ],
    );
  }
}
