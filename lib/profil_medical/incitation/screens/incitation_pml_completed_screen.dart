/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/synthese_pml/screens/synthese_pml_screen.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_incitation.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/disappearing_illustration_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class IncitationPmlCompletedScreen extends StatelessWidget {
  static const routeName = '/medical/profil/incitation/fin';

  const IncitationPmlCompletedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments as SynthesePmlScreenArguments?;
    final isFromOnboarding = arguments?.isFromOnboarding ?? false;

    context.tagAction(TagsIncitation.tag_913_merci_profil_medical_completer);
    return Scaffold(
      appBar: const EnsAppBarSubLevel(
        title: 'Profil médical complété',
      ),
      body: DisappearingIllustrationPage(
        asset: EnsImages.synthese_du_profil_medical,
        children: [
          const Text(
            'Partagez ces informations à vos professionnels de santé',
            style: EnsTextStyle.text24_w400_normal_title,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          const Text(
            'Pour une meilleure prise en charge médicale, je peux partager ces informations en enregistrant la synthèse du profil médical dans la rubrique Documents de Mon espace santé. Si j\'ai choisi de rendre visibles les documents aux professionnels de santé, cette synthèse leur sera accessible.',
            style: EnsTextStyle.text16_w400_normal_body,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 32),
          EnsButton(
            label: 'Voir la synthèse médicale',
            onTap: () {
              context.tagAction(TagsIncitation.tag_912_button_voir_synthese);
              Navigator.pushReplacementNamed(
                context,
                SynthesePmlScreen.routeName,
                arguments: SynthesePmlScreenArguments(isFromOnboarding: isFromOnboarding),
              );
            },
          ),
        ],
      ),
    );
  }
}
