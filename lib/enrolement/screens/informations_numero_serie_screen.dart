/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/enrolement/domain/type_carte_vitale_enum.dart';
import 'package:fr_cnamts_ens/enrolement/screens/widgets/numero_support_picto_with_call.dart';
import 'package:fr_cnamts_ens/enrolement/screens/widgets/sourd_ou_malentendant_picto_with_link.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_divider.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_illustration.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class InformationsNumeroSerieScreen extends StatelessWidget {
  static const routeName = 'enrolement/identite/information_numero_serie';

  @override
  Widget build(BuildContext context) {
    final typeCarteVitale = ModalRoute.of(context)!.settings.arguments! as TypeCarteVitale;

    return Scaffold(
      appBar: const EnsAppBarSubLevel(title: 'Numéro de série'),
      body: ScrollviewWithScrollbar(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 32),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    EnsIllustration(
                      typeCarteVitale.isAvecPhoto()
                          ? EnsImages.carte_vitale_avec_photo_numero_serie
                          : EnsImages.carte_vitale_sans_photo_numero_serie,
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      'Où trouver mon numéro de série de carte Vitale ?',
                      style: EnsTextStyle.text24_w400_normal_title,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 24),
                    Text(
                      typeCarteVitale.isAvecPhoto()
                          ? 'Le numéro de série se situe en haut à droite de votre carte Vitale. Renseignez les 11 derniers chiffres de votre numéro de série.'
                          : 'Le numéro de série se situe au dos en haut à gauche de votre carte Vitale. Il est composé de 8 à 13 chiffres.',
                      style: EnsTextStyle.text16_w400_normal_body,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Et si je n\'arrive pas à lire le numéro de série de ma carte Vitale ?',
                      style: EnsTextStyle.text16_w600_normal_title,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Afin d\'obtenir le numéro de série de votre carte Vitale, contactez le :',
                      style: EnsTextStyle.text16_w400_normal_body,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16),
                    const NumeroSupportPictoWithCall(),
                    const SizedBox(height: 16),
                    const Text(
                      'Service disponible du lundi au vendredi de 8h30 à 17h30',
                      style: EnsTextStyle.text16_w400_normal_body,
                      textAlign: TextAlign.center,
                    ),
                    const EnsDivider(paddingBottom: 24, paddingTop: 24),
                    const SourdOuMalentendantPictoWithLink(),
                  ],
                ),
                const SizedBox(height: 32),
                EnsButton(
                  label: 'J\'ai compris',
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
