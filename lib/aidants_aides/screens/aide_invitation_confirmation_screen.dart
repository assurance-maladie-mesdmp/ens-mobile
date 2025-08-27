/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/aidants_aides/screens/attestation_pdf_screen.dart';
import 'package:fr_cnamts_ens/aidants_aides/screens/viewmodels/aide_invitation_confirmation_view_model.dart';
import 'package:fr_cnamts_ens/aidants_aides/screens/widgets/attestation_delegation_container.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/tags/tags_aidants_aides.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/disappearing_illustration_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button_secondary.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_pop_scope.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class AideInvitationConfirmationScreen extends StatelessWidget {
  static const routeName = '/partage/aidants-aides/invitation-confirmation';

  const AideInvitationConfirmationScreen();

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, AideInvitationConfirmationViewModel>(
      distinct: true,
      converter: (store) => AideInvitationConfirmationViewModel(store),
      onInitialBuild: (vm) {
        context.tagAction(TagsAidantsAides.tag_2546_vous_avez_acces_au_profil);
      },
      builder: (context, vm) {
        return EnsPopScope.shouldNotPop(
          onPopInvoked: (navigator) {
            if (vm.hasMorePendingInvitations) {
              navigator.pop();
            } else {
              navigator.popUntil((route) => route.isFirst);
            }
          },
          child: Scaffold(
            appBar: const EnsAppBarSubLevel(title: 'Invitation à accéder à un profil'),
            body: DisappearingIllustrationPage(
              asset: EnsImages.felicitation,
              children: [
                Text(
                  'Le profil de ${vm.aideFirstName} est désormais accessible',
                  textAlign: TextAlign.center,
                  style: EnsTextStyle.text24_w400_normal_title,
                ),
                const SizedBox(height: 16),
                Text(
                  'Je peux consulter le profil de ${vm.aideFirstName} en cliquant sur le bouton ci-dessous. Je pourrai également y accéder en cliquant sur mon profil.\n\nJe peux télécharger le justificatif d\'accès au profil de ${vm.aideFirstName}. Si je le souhaite, je pourrai ensuite l\'enregistrer dans mes documents. Ce justificatif est également enregistré dans la rubrique Documents du profil de ${vm.aideFirstName}.',
                  textAlign: TextAlign.center,
                  style: EnsTextStyle.text16_w400_normal_body,
                ),
                if (vm.attestationPdf != null) ...[
                  const SizedBox(height: 24),
                  AttestationDelegationContainer(
                    onTap: () {
                      Navigator.pushNamed(context, AttestationPdfScreen.routeName, arguments: vm.attestationPdf);
                    },
                  ),
                ],
                const SizedBox(height: 40),
                EnsButton(
                  label: 'Consulter le profil',
                  paddingAround: EdgeInsets.zero,
                  onTap: () {
                    context.tagAction(TagsAidantsAides.tag_2548_button_aidant_consulter_le_profil);
                    vm.changeProfile();
                    Navigator.popUntil(context, (route) => route.isFirst);
                  },
                ),
                if (vm.hasMorePendingInvitations) ...[
                  const SizedBox(height: 24),
                  EnsButtonSecondary(
                    label: 'Gérer une autre invitation',
                    paddingAround: EdgeInsets.zero,
                    onTap: () {
                      context.tagAction(TagsAidantsAides.tag_2551_button_aidant_gerer_une_autre_invitation);
                      Navigator.pop(context);
                    },
                  ),
                ],
              ],
            ),
          ),
        );
      },
    );
  }
}
