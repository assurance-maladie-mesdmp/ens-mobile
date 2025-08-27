/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/cupertino.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class PsAddressLine extends StatelessWidget {
  final String adresse;

  const PsAddressLine({required this.adresse});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const EnsSvg(EnsImages.ic_location, height: 18, width: 14),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            adresse,
            style: EnsTextStyle.text16_w400_normal_title,
            textAlign: TextAlign.start,
          ),
        ),
      ],
    );
  }
}
