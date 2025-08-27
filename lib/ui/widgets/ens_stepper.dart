/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';

class EnsStepperIncitation extends StatelessWidget {
  final int maxValue;
  final int value;
  final double minusPadding;

  const EnsStepperIncitation({
    required this.maxValue,
    required this.value,
    required this.minusPadding,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 8,
          width: MediaQuery.of(context).size.width - minusPadding,
          decoration: const ShapeDecoration(
            color: EnsColors.neutral200,
            shape: StadiumBorder(),
          ),
        ),
        Container(
          height: 8,
          width: (MediaQuery.of(context).size.width - minusPadding) * (value / maxValue),
          decoration: const ShapeDecoration(
            color: EnsColors.primary,
            shape: StadiumBorder(),
          ),
        ),
      ],
    );
  }
}

class EnsStepperQuestionnaireAgesCles extends StatelessWidget {
  final int maxValue;
  final int value;

  const EnsStepperQuestionnaireAgesCles({
    required this.maxValue,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 32, 24, 8),
      child: Stack(
        children: [
          Container(
            height: 8,
            width: MediaQuery.of(context).size.width - 48,
            decoration: const ShapeDecoration(
              color: EnsColors.neutral200,
              shape: StadiumBorder(),
            ),
          ),
          Container(
            height: 8,
            width: (MediaQuery.of(context).size.width - 48) * (value / maxValue),
            decoration: const ShapeDecoration(
              color: EnsColors.primary,
              shape: StadiumBorder(),
            ),
          ),
        ],
      ),
    );
  }
}
