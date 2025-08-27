/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';

class FrequenceTab extends StatelessWidget {
  final void Function() onTap;
  final String label;
  final bool isSelected;

  const FrequenceTab({
    required this.onTap,
    required this.label,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return EnsInkWell(
      borderRadius: BorderRadius.circular(60),
      onTap: isSelected ? null : onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Container(
          constraints: const BoxConstraints(minHeight: 40),
          decoration: BoxDecoration(
            gradient: isSelected ? EnsColors.gradient01 : null,
            borderRadius: BorderRadius.circular(60),
            border: isSelected ? null : Border.all(color: EnsColors.primary),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Center(
            child: Text(
              label,
              style: isSelected ? EnsTextStyle.text14_w600_normal_light : EnsTextStyle.text14_w600_normal_primary,
            ),
          ),
        ),
      ),
    );
  }
}
