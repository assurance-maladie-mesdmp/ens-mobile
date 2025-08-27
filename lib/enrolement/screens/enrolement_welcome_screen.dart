/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/enrolement/screens/choix_carte_vitale_screen.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/tags/tags_enrolement.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_external_link.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class EnrolementWelcomeScreen extends StatelessWidget {
  static const routeName = '/enrolement/welcome';

  final void Function(String) onNextCall;

  const EnrolementWelcomeScreen(this.onNextCall);

  @override
  Widget build(BuildContext context) {
    context.tagInitialAction(TagsEnrolement.tag_2295_enrolement_accueil);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'J\'active mon profil Mon espace santé',
            style: EnsTextStyle.text20_w400_normal_title,
          ),
          const SizedBox(height: 48),
          const Text(
            'Pour l\'activer, il me faut :',
            style: EnsTextStyle.text16_w400_normal_body,
          ),
          const SizedBox(height: 24),
          const Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              EnsSvg(EnsImages.carte_vitale_avec_photo, height: 54),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Mon numéro de sécurité sociale',
                      style: EnsTextStyle.text14_w400_normal_body,
                    ),
                    Text(
                      'Mon numéro de série de carte Vitale',
                      style: EnsTextStyle.text14_w400_normal_body,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 32),
          const Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              EnsSvg(EnsImages.chrono, height: 54),
              SizedBox(width: 16),
              Text(
                '5 minutes de mon temps',
                style: EnsTextStyle.text14_w400_normal_body,
              ),
            ],
          ),
          const Expanded(child: SizedBox(height: 32)),
          EnsButton(
            label: 'Commencer',
            onTap: () {
              context.tagInitialAction(TagsEnrolement.tag_2296_link_cloturer_opposer);
              onNextCall(ChoixCarteVitaleScreen.routeName);
            },
          ),
          const SizedBox(height: 32),
          Center(
            child: Wrap(
              alignment: WrapAlignment.center,
              children: [
                const Text(
                  'Je peux aussi ',
                  style: EnsTextStyle.text16_w400_normal_body,
                ),
                EnsExternalLink.withRedirection(
                  linkText: 'clôturer ou m\'opposer',
                  linkUrl: EnsModuleContainer.commonInjector!.getUrlsConfig().enrolementClotureUrl,
                  linkTextStyle: EnsTextStyle.text16_w700_primary_underline,
                ),
                const Text(
                  ' à Mon espace santé',
                  style: EnsTextStyle.text16_w400_normal_body,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
