/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class AttachmentIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Row(
        children: [
          Container(
            height: 40,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              color: EnsColors.neutral100,
            ),
            child: const Row(
              children: [
                SizedBox(width: 8),
                EnsSvg(EnsImages.ic_attachment, width: 24, height: 24, color: EnsColors.primary),
                SizedBox(width: 8),
                Text(
                  'Documents attachés',
                  style: EnsTextStyle.text14_w400_normal_title,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(width: 8),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
