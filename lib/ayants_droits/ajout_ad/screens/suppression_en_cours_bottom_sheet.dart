/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/tags/tags_parameters.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_card.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

void displaySuppressionEnCoursBottomSheet(
  BuildContext context,
  List<String> adsWithSuppressionEnCoursNames,
  VoidCallback onContinueClick,
) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (BuildContext context) {
      context.tagAction(TagsParameters.tag_1293_popin_compte_profils_demande_suppression);
      return ConfirmationBottomSheet(
        title: 'Demande de suppression des données en cours',
        positiveButtonHandler: onContinueClick,
        positiveButtonLabel: 'Continuer',
        positiveButtonColor: EnsColors.primary,
        areButtonsOnSameRow: false,
        content: Column(
          children: [
            const Text(
              'Une demande de suppression des données a été effectuée pour le(s) profil(s) suivant(s).',
              style: EnsTextStyle.text16_w400_normal_body,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            ...adsWithSuppressionEnCoursNames.map(
              (adName) => Column(
                children: [
                  EnsCard(
                    backgroundColor: EnsColors.disabled100,
                    border: Border.all(color: EnsColors.disabled500, width: 2),
                    borderRadius: 16,
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        const Stack(
                          alignment: Alignment.center,
                          children: [
                            EnsSvg(EnsImages.ic_circle_filled, width: 40, height: 40, color: EnsColors.disabled),
                            Center(child: EnsSvg(EnsImages.ic_user, width: 24, height: 24)),
                          ],
                        ),
                        const SizedBox(width: 8),
                        Text(
                          adName,
                          style: EnsTextStyle.text16_w600_title,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'En réactivant les profils, la demande de suppression des données sera annulée.',
              style: EnsTextStyle.text16_w400_normal_body,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    },
  );
}
