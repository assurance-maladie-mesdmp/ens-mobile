/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';

class EnsCarouselSelector extends StatelessWidget {
  final ValueNotifier<int> indexController;
  final int length;

  const EnsCarouselSelector({super.key, required this.indexController, required this.length});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexController,
      builder: (_, index, __) => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          for (int i = 0; i < length; i++)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: i == index ? EnsColors.primary : EnsColors.neutral300,
                ),
                width: 8,
                height: 8,
              ),
            ),
        ],
      ),
    );
  }
}
