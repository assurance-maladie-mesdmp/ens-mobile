/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_card.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_link_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class AttestationDelegationContainer extends StatelessWidget {
  final void Function() onTap;

  const AttestationDelegationContainer({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return EnsCard(
      border: Border.all(color: EnsColors.neutral200, width: 1),
      borderRadius: 8,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      boxShadowBlurRadius: 0,
      child: Row(
        children: [
          const EnsSvg(
            EnsImages.ic_file_blank_filled,
            width: 24,
            height: 24,
            color: EnsColors.primary,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: EnsLinkText(
              label: 'Consulter ce document',
              textPadding: EdgeInsets.zero,
              textStyle: EnsTextStyle.text14_w600_normal_primary_underline,
              onTap: onTap,
            ),
          ),
        ],
      ),
    );
  }
}
