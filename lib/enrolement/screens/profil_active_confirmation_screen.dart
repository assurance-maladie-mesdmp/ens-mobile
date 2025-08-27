/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/auth/screens/login_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/viewmodels/profil_active_screen_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:fr_cnamts_ens/interruption_services/widget/interruption_service_helper.dart';
import 'package:fr_cnamts_ens/tags/tags_enrolement.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_link_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_pop_scope.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class ProfilActiveConfirmationScreen extends StatelessWidget {
  static const routeName = '/enrolement/profil-active-confirmation';

  const ProfilActiveConfirmationScreen();

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsInitialState, ProfilActiveScreenViewModel>(
      converter: (store) => ProfilActiveScreenViewModel.from(store),
      onInitialBuild: (_) {
        context.tagInitialAction(TagsEnrolement.tag_2322_enrolement_confirmation_acceptation);
      },
      onDidChange: (_, vm) {
        if (vm.shouldDisplayLoginScreen) {
          vm.resetEnrolementState();
          Navigator.popUntil(context, ModalRoute.withName(LoginScreen.routeName));
        }
      },
      distinct: true,
      builder: (context, vm) {
        return EnsPopScope.shouldNotPop(
          child: Scaffold(
            body: Center(
              child: ScrollviewWithScrollbar(
                padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const EnsSvg(EnsImages.felicitation),
                    const SizedBox(height: 24),
                    Text(
                      vm.isEnrolementAd
                          ? 'Le profil de ${vm.firstName} a bien été activé !'
                          : 'Mon profil a bien été activé !',
                      style: EnsTextStyle.text24_w400_normal_title,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      'Je peux découvrir toutes les fonctionnalités de Mon espace santé et commencer à compléter mon profil en me connectant ci-dessous.',
                      style: EnsTextStyle.text16_w400_normal_body,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Si vous avez des enfants, vous pouvez activer leur profil directement depuis votre compte.',
                      style: EnsTextStyle.text16_w400_normal_body,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 32),
                    EnsButton(
                      isLoading: vm.isAuthenticating,
                      isEnrolement: true,
                      label: 'Connexion',
                      onTap: () {
                        InterruptionServiceHelper.showSnackbarOnInterruption(
                          context,
                          connexionMode: InterruptionServiceConnexionMode.NON_CONNECTE,
                          interruptionServiceSnackbarMessage: vm.interruptionServiceSnackbarMessage,
                          onNotInterrompu: () => vm.enterAuthenticatedMode(),
                        );
                      },
                    ),
                    const SizedBox(height: 20),
                    EnsLinkText(
                      label: 'Revenir à l\'accueil',
                      borderRadius: 40,
                      shouldExpanded: true,
                      textPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                      textAlign: TextAlign.center,
                      onTap: () => Navigator.popUntil(context, (route) => route.isFirst),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
