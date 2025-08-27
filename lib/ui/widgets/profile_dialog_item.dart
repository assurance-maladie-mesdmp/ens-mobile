/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';

class ProfileDialogItem extends StatelessWidget {
  final void Function() onTap;
  final String svgPath;
  final Color? svgColor;
  final String textItem;

  const ProfileDialogItem({
    super.key,
    required this.onTap,
    required this.svgPath,
    this.svgColor,
    required this.textItem,
  });

  @override
  Widget build(BuildContext context) {
    return EnsInkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            EnsSvg(svgPath, color: svgColor),
            const SizedBox(width: 22),
            Expanded(
              child: Text(textItem, style: EnsTextStyle.text14_w700_normal_title),
            ),
          ],
        ),
      ),
    );
  }
}
