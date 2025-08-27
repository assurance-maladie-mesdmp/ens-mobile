/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/auth/redux/auth_actions.dart';
import 'package:fr_cnamts_ens/auth/screens/login_screen.dart';
import 'package:fr_cnamts_ens/enrolement/redux/enrolement_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:fr_cnamts_ens/tags/tags_enrolement.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/disappearing_illustration_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_link_text.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class CompteExistantScreen extends StatelessWidget {
  static const routeName = '/enrolement/identite/compte_existant';

  const CompteExistantScreen();

  @override
  Widget build(BuildContext context) {
    context.tagInitialAction(TagsEnrolement.tag_2304_enrolement_compte_existant);
    return Scaffold(
      body: DisappearingIllustrationPage(
        asset: EnsImages.bienvenue,
        children: [
          const Text(
            'Un profil a déjà été créé pour cette personne.',
            style: EnsTextStyle.text24_w400_normal_title,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          const Text(
            'Vous pouvez dès à présent vous connecter en utilisant votre identifiant et votre mot de passe.',
            style: EnsTextStyle.text16_w400_normal_body,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 48),
          StoreBuilder<EnsInitialState>(
            builder: (_, store) {
              return Column(
                children: [
                  EnsButton(
                    label: 'Connexion',
                    onTap: () {
                      context.tagInitialAction(TagsEnrolement.tag_2305_button_compte_existant_connexion);
                      store.dispatch(EnterAuthenticatedModeAction(true));
                      store.dispatch(ResetEnrolementAction());
                    },
                  ),
                  const SizedBox(height: 32),
                  EnsLinkText(
                    label: 'Revenir à l’accueil',
                    alignment: AlignmentDirectional.center,
                    textAlign: TextAlign.center,
                    textPadding: EdgeInsets.zero,
                    onTap: () {
                      context.tagInitialAction(TagsEnrolement.tag_2306_button_compte_existant_accueil);
                      store.dispatch(ResetEnrolementAction());
                      Navigator.pushReplacementNamed(context, LoginScreen.routeName);
                    },
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
