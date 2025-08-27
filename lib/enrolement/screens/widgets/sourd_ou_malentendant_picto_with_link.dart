/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_external_link.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class SourdOuMalentendantPictoWithLink extends StatelessWidget {
  const SourdOuMalentendantPictoWithLink();

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        EnsSvg(EnsImages.sourd_ou_malentendant, height: 32, width: 32),
        SizedBox(height: 16),
        Text(
          'Vous êtes sourd ou malentendant ?',
          style: EnsTextStyle.text14_w600_normal_body,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 4),
        EnsExternalLink.withRedirection(
          linkTextAlign: TextAlign.center,
          linkUrl: 'https://monespacesante.elioz.fr/3.3/?hash=2463c0eea4bd451816831e4affb28061',
          linkText: 'Contactez un conseiller par visio-interprétation',
          extraPadding: EdgeInsets.all(8),
        ),
      ],
    );
  }
}
