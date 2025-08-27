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

class SendButton extends StatelessWidget {
  final void Function() onTap;

  const SendButton({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return EnsInkWell(
      onTap: onTap,
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Row(
          children: [
            Text('Envoyer', style: EnsTextStyle.text14_w700_normal_primary),
            SizedBox(width: 12),
            EnsSvg(EnsImages.ic_send, height: 18, width: 18, color: EnsColors.primary),
          ],
        ),
      ),
    );
  }
}
