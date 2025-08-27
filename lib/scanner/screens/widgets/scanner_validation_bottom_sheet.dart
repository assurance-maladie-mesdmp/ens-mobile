/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/ens_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/mask_utils.dart';

class ScannerValidationBottomSheet extends StatelessWidget {
  final String numeroSecuriteSociale;
  final void Function() positiveButtonHandler;
  final void Function() negativeButtonHandler;

  const ScannerValidationBottomSheet({
    required this.numeroSecuriteSociale,
    required this.positiveButtonHandler,
    required this.negativeButtonHandler,
  });

  @override
  Widget build(BuildContext context) {
    return EnsIllustrationBottomSheet(
      title: 'Vérifier le numéro de la carte Vitale',
      positiveButtonLabel: 'Valider',
      positiveButtonHandler: positiveButtonHandler,
      negativeButtonLabel: 'Remplir manuellement',
      negativeButtonHandler: negativeButtonHandler,
      additionalContent: [
        Column(
          children: [
            const SizedBox(height: 16),
            const Text(
              'Une erreur ? Je pourrai toujours modifier le numéro à l’étape suivante.',
              style: EnsTextStyle.text16_w400_normal_body,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            Row(
              children: [
                const EnsSvg(
                  EnsImages.carte_vitale_avec_photo_numero_secu,
                  width: 64,
                  height: 38,
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Numéro de sécurité sociale',
                        style: EnsTextStyle.text14_w600_normal_title,
                      ),
                      Text(
                        numeroSecuMaskFormatter(numeroSecuriteSociale).getMaskedText(),
                        style: EnsTextStyle.text14_w400_normal_title,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
