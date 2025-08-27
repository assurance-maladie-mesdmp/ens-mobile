/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_bullet_point.dart';

class AccesAuxDonneesBulletPoints extends StatelessWidget {
  const AccesAuxDonneesBulletPoints({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        EnsBulletPointEndWithBoldText(text: 'aux ', boldText: 'documents ;'),
        EnsBulletPointEndWithBoldText(text: 'aux ', boldText: 'vaccinations ;'),
        EnsRichBulletPoint(
          text: TextSpan(
            children: [
              TextSpan(text: 'aux rubriques ', style: EnsTextStyle.text14_w400_normal_body),
              TextSpan(
                text: 'Mon histoire de santé, Entourage et volontés',
                style: EnsTextStyle.text14_w700_normal_body,
              ),
              TextSpan(text: ' du ', style: EnsTextStyle.text14_w400_normal_body),
              TextSpan(text: 'Profil médical.', style: EnsTextStyle.text14_w700_normal_body),
            ],
          ),
        ),
      ],
    );
  }
}
