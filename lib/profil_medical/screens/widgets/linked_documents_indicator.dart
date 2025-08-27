/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:intl/intl.dart';

enum IndicatorType {
  DOCUMENT,
  TRAITEMENT;

  String getLabelFor(int indicatorNumber) {
    switch (this) {
      case DOCUMENT:
        return Intl.plural(indicatorNumber, one: '1 document', other: '$indicatorNumber documents');
      case TRAITEMENT:
        return Intl.plural(indicatorNumber, one: '1 traitement', other: '$indicatorNumber traitements');
    }
  }

  String getImage() {
    switch (this) {
      case DOCUMENT:
        return EnsImages.ic_attachment;
      case TRAITEMENT:
        return EnsImages.pill;
    }
  }
}

class LinkedEntitieIndicator extends StatelessWidget {
  final int indicatorNumber;
  final IndicatorType currentType;

  const LinkedEntitieIndicator({super.key, required this.currentType, required this.indicatorNumber});

  @override
  Widget build(BuildContext context) => Row(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            height: 40,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(32)),
              color: EnsColors.neutral200,
            ),
            child: Row(
              children: [
                EnsSvg(currentType.getImage(), width: 24, height: 24, color: EnsColors.primary),
                const SizedBox(width: 4),
                Text(
                  currentType.getLabelFor(indicatorNumber),
                  style: EnsTextStyle.text14_w600_normal_title,
                ),
              ],
            ),
          ),
        ],
      );
}
