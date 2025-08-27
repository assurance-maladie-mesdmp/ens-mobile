/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/aidants_aides/screens/attestation_pdf_screen.dart';
import 'package:fr_cnamts_ens/aidants_aides/screens/viewmodels/revocation_acces_aide_confirmation_view_model.dart';
import 'package:fr_cnamts_ens/aidants_aides/screens/widgets/attestation_delegation_container.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/tags/tags_aidants_aides.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/disappearing_illustration_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class RevocationAccesAideConfirmationScreen extends StatelessWidget {
  static const routeName = '/aidants_aides/revocation_acces_aide';

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, RevocationAccesAideConfirmationViewModel>(
      converter: (store) => RevocationAccesAideConfirmationViewModel.from(store),
      builder: (context, vm) => Scaffold(
        appBar: const EnsAppBarSubLevel(title: ''),
        body: SafeArea(
          child: DisappearingIllustrationPage(
            asset: EnsImages.success,
            children: [
              Text(
                'Le profil de ${vm.firstName} n\'est plus accessible',
                style: EnsTextStyle.text24_w400_normal_title,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              const Text(
                'Je peux télécharger le justificatif d’accès mis à jour.',
                style: EnsTextStyle.text16_w400_normal_body,
                textAlign: TextAlign.center,
              ),
              if (vm.attestation != null) ...[
                const SizedBox(height: 16),
                AttestationDelegationContainer(
                  onTap: () {
                    context.tagAction(TagsAidantsAides.tag_2547_button_aidant_consulter_enregistrer_document);
                    Navigator.pushNamed(context, AttestationPdfScreen.routeName, arguments: vm.attestation);
                  },
                ),
              ],
              const SizedBox(height: 40),
              EnsButton(
                label: 'Revenir à l\'accueil',
                onTap: () {
                  Navigator.popUntil(context, (route) => route.isFirst);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
