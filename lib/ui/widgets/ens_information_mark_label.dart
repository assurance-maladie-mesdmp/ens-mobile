/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class EnsInformationMarkLabel extends StatelessWidget {
  final String title;
  final EdgeInsets padding;

  const EnsInformationMarkLabel({
    required this.title,
    this.padding = const EdgeInsets.only(top: 12),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const EnsSvg(EnsImages.ic_info_circle, width: 24, height: 24),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              title,
              style: EnsTextStyle.text14_w600_normal_primary,
            ),
          ),
        ],
      ),
    );
  }
}
