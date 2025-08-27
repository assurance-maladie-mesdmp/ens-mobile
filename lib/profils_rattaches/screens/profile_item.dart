/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class ProfileItem extends StatelessWidget {
  final String formattedProfileName;
  final ProfilType profilType;
  final Color color;
  final VoidCallback onTap;

  const ProfileItem({
    required this.onTap,
    required this.formattedProfileName,
    required this.profilType,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return EnsInkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 24, bottom: 12, top: 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                EnsSvg(EnsImages.ic_circle_filled, width: 40, height: 40, color: color),
                Center(
                  child: EnsSvg(profilType.profilIcon, width: 24, height: 24, color: Colors.white),
                ),
              ],
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    formattedProfileName,
                    style: EnsTextStyle.text14_w700_normal_title,
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 24),
              child: EnsSvg(EnsImages.ic_chevron_right, height: 12, width: 8, color: EnsColors.body),
            ),
          ],
        ),
      ),
    );
  }
}
