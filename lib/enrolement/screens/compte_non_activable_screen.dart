/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/auth/screens/login_screen.dart';
import 'package:fr_cnamts_ens/enrolement/redux/enrolement_redux.dart';
import 'package:fr_cnamts_ens/enrolement/screens/widgets/numero_support_picto_with_call.dart';
import 'package:fr_cnamts_ens/enrolement/screens/widgets/sourd_ou_malentendant_picto_with_link.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:fr_cnamts_ens/tags/tags_enrolement.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/disappearing_illustration_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_divider.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class CompteNonActivableScreen extends StatelessWidget {
  static const routeName = '/enrolement/identite/compte_non_activable';

  const CompteNonActivableScreen();

  @override
  Widget build(BuildContext context) {
    context.tagInitialAction(TagsEnrolement.tag_2326_enrolement_dashboard_profil_decede);
    return Scaffold(
      body: DisappearingIllustrationPage(
        asset: EnsImages.compte_non_activable,
        children: [
          const Text(
            'Ce profil ne peut pas être activé',
            style: EnsTextStyle.text24_w400_normal_title,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          const Text(
            'Une question ? Nos conseillers sont disponibles par téléphone de 08h30 à 17h30 du lundi au vendredi.',
            style: EnsTextStyle.text16_w400_normal_body,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          const NumeroSupportPictoWithCall(),
          const EnsDivider(paddingBottom: 24, paddingTop: 24),
          const SourdOuMalentendantPictoWithLink(),
          const SizedBox(height: 40),
          StoreBuilder<EnsInitialState>(
            builder: (_, store) {
              return EnsButton(
                label: 'Revenir à l\'accueil',
                onTap: () {
                  store.dispatch(ResetEnrolementAction());
                  Navigator.pushReplacementNamed(context, LoginScreen.routeName);
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
