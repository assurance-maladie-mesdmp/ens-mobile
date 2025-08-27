/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/incitation/redux/incitation_pml_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/incitation/screens/incitation_pml_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/incitation/screens/viewmodels/incitation_pml_welcome_screen_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/synthese_pml/screens/synthese_pml_screen.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_incitation.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/disappearing_illustration_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/user/redux/user_selectors.dart';
import 'package:fr_cnamts_ens/utils/wordings_extension.dart';

class IncitationPmlWelcomeScreen extends StatelessWidget {
  static const routeName = '/medical/profil/incitationwelcome';

  const IncitationPmlWelcomeScreen();

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments as SynthesePmlScreenArguments?;
    final isFromOnboarding = arguments?.isFromOnboarding ?? false;

    return StoreConnector<EnsState, IncitationPmlWelcomeScreenViewModel>(
      converter: (store) => IncitationPmlWelcomeScreenViewModel.from(store),
      distinct: true,
      onInit: (store) {
        store.dispatch(AddPatientIdIncitationWelcomePageAction(UserSelectors.getPatientId(store.state)));
      },
      onInitialBuild: (vm) {
        vm.profilType.isProfilPrincipal
            ? context.tagAction(TagsIncitation.tag_866_onboarding_debut_pml_od)
            : context.tagAction(TagsIncitation.tag_868_onboarding_debut_pml_ad);
      },
      builder: (context, vm) => Scaffold(
        appBar: EnsAppBarSubLevel(
          title: 'Compléter mon profil médical'.resolveWith(isProfilPrincipal: vm.profilType.isProfilPrincipal),
        ),
        body: DisappearingIllustrationPage(
          asset: EnsImages.bienvenue,
          children: [
            Text(
              _getDisappearingIllustrationText(profilType: vm.profilType, firstName: vm.firstName),
              style: EnsTextStyle.text24_w400_normal_title,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            Text(
              'Pour retrouver toutes mes informations de santé au même endroit, faciliter leur partage avec les professionnels de santé et pour une meilleure prise en charge de ma santé, je renseigne l\'essentiel de mes informations médicales.'
                  .resolveWith(isProfilPrincipal: vm.profilType.isProfilPrincipal),
              style: EnsTextStyle.text16_w400_normal_body,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                const EnsSvg(EnsImages.confidential_document, width: 64, height: 64),
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    'Je renseigne mon profil médical'.resolveWith(isProfilPrincipal: vm.profilType.isProfilPrincipal),
                    style: EnsTextStyle.text14_w400_normal_body,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                const EnsSvg(EnsImages.profil_medical, width: 64, height: 64),
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    'Je rends accessible la synthèse de mon profil médical aux professionnels de santé en l’enregistrant dans mes documents'
                        .resolveWith(isProfilPrincipal: vm.profilType.isProfilPrincipal),
                    style: EnsTextStyle.text14_w400_normal_body,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            EnsButton(
              label: 'Compléter mon profil médical'.resolveWith(isProfilPrincipal: vm.profilType.isProfilPrincipal),
              onTap: () {
                vm.profilType.isProfilPrincipal
                    ? context.tagAction(TagsIncitation.tag_867_button_commencer_onboarding_pml_od)
                    : context.tagAction(TagsIncitation.tag_869_button_commencer_onboarding_pml_ad);
                Navigator.pushReplacementNamed(
                  context,
                  IncitationPmlScreen.routeName,
                  arguments: SynthesePmlScreenArguments(isFromOnboarding: isFromOnboarding),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

String _getDisappearingIllustrationText({
  required ProfilType profilType,
  required String? firstName,
}) {
  return switch (profilType) {
    ProfilType.PROFIL_PRINCIPAL => 'Je complète mes informations de santé',
    ProfilType.AIDE || ProfilType.AYANT_DROIT => 'Je complète les informations de santé de $firstName'
  };
}
