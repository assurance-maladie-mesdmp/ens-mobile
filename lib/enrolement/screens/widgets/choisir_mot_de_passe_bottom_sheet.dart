/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/tags/tags_enrolement.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/ens_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_bullet_point.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_external_link.dart';

class ChoisirMotDePasseBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const LINK_FAQ = 'https://www.monespacesante.fr/questions-frequentes/acceder-a-mon-espace-sante/17';
    return EnsIllustrationBottomSheet(
      title: 'Comment choisir mon mot de passe ?',
      additionalContent: [
        const Text(
          'Pour garantir la sécurité de vos données, choisissez un mot de passe robuste.',
          style: EnsTextStyle.text16_w400_normal_body,
        ),
        const EnsBulletPointStartWithBoldText(
          boldText: 'Complexe :',
          text: ' mélangez lettres majuscules, minuscules, chiffres et caractères spéciaux.',
        ),
        const EnsBulletPointStartWithBoldText(
          boldText: 'Différent :',
          text: ' choisissez un mot de passe que vous n\'utilisez pas encore.',
        ),
        const EnsBulletPointStartWithBoldText(
          boldText: 'Long :',
          text: ' plus le mot de passe est long, plus il est difficile à pirater.',
        ),
        const EnsBulletPointStartWithBoldText(
          boldText: 'Pas d\'informations personnelles :',
          text: ' n\'utilisez pas votre nom, date de naissance ou nom de famille.',
        ),
        const SizedBox(height: 16),
        EnsExternalLink.withRedirection(
          linkTextStyle: EnsTextStyle.text16_w700_primary_underline,
          mainAxisAlignment: MainAxisAlignment.end,
          linkUrl: LINK_FAQ,
          linkText: 'En savoir plus sur les mots de passe robustes',
          onTap: () {
            context.tagInitialAction(TagsEnrolement.tag_2323_link_faq_mp_robuste);
          },
        ),
      ],
      positiveButtonLabel: 'J\'ai compris',
    );
  }
}
