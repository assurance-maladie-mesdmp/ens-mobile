/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/enrolement/domain/type_carte_vitale_enum.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_illustration.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class InformationsNumeroSecuriteSocialeScreen extends StatelessWidget {
  static const routeName = 'enrolement/identite/information_numero_securite_sociale';

  @override
  Widget build(BuildContext context) {
    final typeCarteVitale = ModalRoute.of(context)!.settings.arguments! as TypeCarteVitale;

    return Scaffold(
      appBar: const EnsAppBarSubLevel(title: 'Numéro de sécurité sociale'),
      body: ScrollviewWithScrollbar(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    EnsIllustration(
                      typeCarteVitale.isAvecPhoto()
                          ? EnsImages.carte_vitale_avec_photo_numero_secu_fleche
                          : EnsImages.carte_vitale_sans_photo,
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      'Où trouver mon numéro de sécurité sociale ?',
                      style: EnsTextStyle.text24_w400_normal_title,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      'Mon numéro de sécurité sociale est indiqué au recto de ma carte Vitale ou sur mon attestation de droits (15 caractères).',
                      style: EnsTextStyle.text16_w400_normal_body,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Moins de 18 ans : quel numéro de sécurité sociale saisir ?',
                      style: EnsTextStyle.text16_w600_normal_title,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'Pour les personnes mineures : renseigner le numéro de sécurité sociale du destinataire de l’email ou du courrier.',
                      style: EnsTextStyle.text16_w400_normal_body,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                EnsButton(
                  label: 'J’ai compris',
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
