/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/enrolement/domain/type_carte_vitale_enum.dart';
import 'package:fr_cnamts_ens/tags/tags_enrolement.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/ens_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/mask_utils.dart';

class ScannerValidationBottomSheet extends StatelessWidget {
  final TypeCarteVitale typeCarteVitale;
  final String numeroSecuriteSociale;
  final String numeroSerie;
  final void Function() positiveButtonHandler;
  final void Function() negativeButtonHandler;

  const ScannerValidationBottomSheet({
    required this.typeCarteVitale,
    required this.numeroSecuriteSociale,
    required this.numeroSerie,
    required this.positiveButtonHandler,
    required this.negativeButtonHandler,
  });

  @override
  Widget build(BuildContext context) {
    typeCarteVitale.isSansPhoto()
        ? context.tagInitialAction(
            TagsEnrolement.tag_2454_scan_carte_vitale_sans_photo_validation,
          )
        : context.tagInitialAction(
            TagsEnrolement.tag_2457_scan_carte_vitale_avec_photo_validation,
          );
    return EnsIllustrationBottomSheet(
      title: 'Vérifier les numéros de ma carte Vitale',
      positiveButtonLabel: 'Valider',
      positiveButtonHandler: positiveButtonHandler,
      negativeButtonLabel: 'Remplir manuellement',
      negativeButtonHandler: negativeButtonHandler,
      additionalContent: [
        Column(
          children: [
            const SizedBox(height: 16),
            const Text(
              'Une erreur ? Je pourrai toujours modifier mes numéros à l’étape suivante.',
              style: EnsTextStyle.text16_w400_normal_body,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            Row(
              children: [
                EnsSvg(
                  typeCarteVitale.isAvecPhoto()
                      ? EnsImages.carte_vitale_avec_photo_numero_secu
                      : EnsImages.carte_vitale_sans_photo_numero_secu,
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
            const SizedBox(height: 32),
            Row(
              children: [
                EnsSvg(
                  typeCarteVitale.isAvecPhoto()
                      ? EnsImages.carte_vitale_avec_photo_numero_serie
                      : EnsImages.carte_vitale_sans_photo_numero_serie,
                  width: 64,
                  height: 38,
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Numéro de série',
                        style: EnsTextStyle.text14_w600_normal_title,
                      ),
                      Text(
                        typeCarteVitale.isAvecPhoto()
                            ? '8025000002 ${numeroSerieAvecPhotoMaskFormatter(numeroSerie).getMaskedText()}'
                            : numeroSerie,
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
