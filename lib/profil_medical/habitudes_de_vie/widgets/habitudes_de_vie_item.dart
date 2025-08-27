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

class HabitudesDeVieItem extends StatelessWidget {
  final String title;
  final String image;
  final String? lastModifiedDate;
  final void Function() onClick;

  const HabitudesDeVieItem({
    required this.title,
    required this.image,
    required this.lastModifiedDate,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return EnsInkWell(
      color: EnsColors.light,
      onTap: onClick,
      child: Padding(
        padding: const EdgeInsets.only(left: 16, bottom: 24),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: EnsSvg(image, height: 64),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 32),
                  Text(title, style: EnsTextStyle.text16_w700_normal_title),
                  const SizedBox(height: 4),
                  Text(
                    lastModifiedDate != null ? 'Mis à jour le $lastModifiedDate' : 'Non renseignée',
                    style: EnsTextStyle.text14_w400_normal_body,
                  ),
                ],
              ),
            ),
            const Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 24.0, top: 40),
                  child: EnsSvg(
                    EnsImages.ic_chevron_right,
                    color: EnsColors.title,
                    alignment: Alignment.centerRight,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
