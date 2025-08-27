/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class ValidateFieldInfoText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        EnsSvg(EnsImages.ic_circle_check, color: EnsColors.success, width: 16, height: 16),
        SizedBox(width: 4),
        Expanded(
          child: Text(
            'Information saisie automatiquement',
            style: EnsTextStyle.text14_w400_normal_success,
          ),
        ),
      ],
    );
  }
}
