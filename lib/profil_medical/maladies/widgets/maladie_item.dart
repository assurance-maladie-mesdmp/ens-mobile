/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/profil_medical/domain/ens_profil_medical_date_utils.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/domain/models/ens_maladie.dart';
import 'package:fr_cnamts_ens/profil_medical/screens/widgets/linked_documents_indicator.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class MaladieItem extends StatelessWidget {
  final EnsMaladie maladie;
  final void Function() onTap;

  const MaladieItem({
    required this.maladie,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return EnsInkWell(
      color: EnsColors.light,
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 24, bottom: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                      Text(
                        maladie.name,
                        style: EnsTextStyle.text16_w700_normal_title,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        EnsProfilMedicalDateUtils.formatTimeInterval(maladie.startDate, maladie.endDate),
                        style: EnsTextStyle.text14_w400_normal_body,
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(24.0),
                  child: EnsSvg(
                    EnsImages.ic_chevron_right,
                    color: EnsColors.title,
                    height: 12,
                    width: 8,
                    alignment: Alignment.centerRight,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                if (maladie.linkedTraitementIds.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: LinkedEntitieIndicator(
                      indicatorNumber: maladie.linkedTraitementIds.length,
                      currentType: IndicatorType.TRAITEMENT,
                    ),
                  ),
                if (maladie.linkedDocumentIds.isNotEmpty && maladie.linkedTraitementIds.isNotEmpty)
                  const SizedBox(width: 16),
                if (maladie.linkedDocumentIds.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: LinkedEntitieIndicator(
                      indicatorNumber: maladie.linkedDocumentIds.length,
                      currentType: IndicatorType.DOCUMENT,
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
