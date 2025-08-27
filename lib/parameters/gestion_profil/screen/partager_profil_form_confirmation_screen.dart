/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/tags/tags_parameters.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/disappearing_illustration_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class PartagerProfilFormConfirmationScreen extends StatelessWidget {
  static const routeName = '/partage-du-profil/form/confirmation';

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments! as PartagerProfilFormConfirmationArguments;
    final isSuccess = arguments.isSuccess;
    context.tagAction(
      isSuccess ? TagsParameters.tag_1274_partage_profil_success : TagsParameters.tag_1275_partage_profil_error,
    );
    return Scaffold(
      appBar: EnsAppBarSubLevel(title: isSuccess ? 'Partage envoyé' : 'Partage échoué'),
      body: SafeArea(
        child: DisappearingIllustrationPage(
          asset: isSuccess ? EnsImages.felicitation : EnsImages.error,
          children: [
            Text(
              isSuccess ? 'La demande de partage a bien été envoyée !' : 'Le partage n’a pas pu être effectué ',
              textAlign: TextAlign.center,
              style: EnsTextStyle.text24_w400_normal_title,
            ),
            const SizedBox(height: 24),
            Text(
              isSuccess
                  ? 'Je recevrai une notification lorsque le second représentant légal de ${arguments.patientName} aura répondu à la demande de partage.'
                  : 'Pour partager le profil, assurez-vous que la personne désignée a bien activé Mon espace santé.',
              textAlign: TextAlign.center,
              style: EnsTextStyle.text16_w400_normal_body,
            ),
            const SizedBox(height: 32),
            EnsButton(
              label: 'Revenir à l’accueil',
              onTap: () => Navigator.popUntil(context, (route) => route.isFirst),
            ),
          ],
        ),
      ),
    );
  }
}

class PartagerProfilFormConfirmationArguments {
  final bool isSuccess;
  final String patientName;

  PartagerProfilFormConfirmationArguments({required this.isSuccess, required this.patientName});
}
