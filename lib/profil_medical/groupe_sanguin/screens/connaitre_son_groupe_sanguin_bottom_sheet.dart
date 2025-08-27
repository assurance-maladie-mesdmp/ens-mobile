/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_groupe_sanguin.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/ens_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_bullet_point.dart';

class ConnaitreSonGroupeSanguinBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    context.tagAction(TagsGroupeSanguin.tag_2659_popin_connaitre_groupe_sanguin);
    return const EnsBottomSheet(
      stretch: true,
      contentPadding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      content: [
        Text(
          'Comment connaître son groupe sanguin ?',
          style: EnsTextStyle.text24_w400_normal_title,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 16),
        Text(
          'La détermination du groupe sanguin se fait par une prise de sang et peut être réalisée dans différentes situations :',
          style: EnsTextStyle.text16_w400_normal_body,
        ),
        EnsBulletPoint(
          text: 'Lors d\'un don de sang.',
          textStyle: EnsTextStyle.text16_w400_normal_body,
        ),
        EnsBulletPoint(
          text:
              'En cas de risque de transfusion identifié (comme une anémie sévère, avant une intervention chirurgicale à risque hémorragique, dans une situation d’urgence nécessitant une transfusion, ou après une hémorragie post-partum, etc.).',
          textStyle: EnsTextStyle.text16_w400_normal_body,
        ),
        EnsBulletPoint(
          text: 'Chez les femmes enceintes.',
          textStyle: EnsTextStyle.text16_w400_normal_body,
        ),
        EnsBulletPoint(
          text: 'À la naissance, dans certains cas spécifiques.',
          textStyle: EnsTextStyle.text16_w400_normal_body,
        ),
      ],
    );
  }
}
