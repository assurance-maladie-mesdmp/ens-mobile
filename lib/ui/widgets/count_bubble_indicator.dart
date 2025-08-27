/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';

class CountBubbleIndicator extends StatelessWidget {
  final int count;

  const CountBubbleIndicator({required this.count});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(left: 8),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: const BoxDecoration(shape: BoxShape.circle, gradient: EnsColors.gradient01),
          child: Text(
            count.toString(),
            style: EnsTextStyle.text14_w700_normal_light,
            semanticsLabel: '$count Filtres sélectionnés',
          ),
        ),
      );
}
