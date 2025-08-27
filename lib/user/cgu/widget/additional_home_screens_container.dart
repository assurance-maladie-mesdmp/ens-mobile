/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/auth/redux/auth_actions.dart';
import 'package:fr_cnamts_ens/bottomsheet_nouvelles_fonctionalites/widgets/nouvelles_fonctionnalites_bottom_sheet.dart';
import 'package:fr_cnamts_ens/consentement_extraction_donnees_sante/screens/consentement_extraction_donnees_sante_screen.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/onboarding/screens/onboarding_welcome_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/incitation/screens/incitation_pml_welcome_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/synthese_pml/screens/synthese_pml_screen.dart';
import 'package:fr_cnamts_ens/tags/tags_home.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/incitation_pml_bottom_sheet.dart';
import 'package:fr_cnamts_ens/user/cgu/screen/accept_cgu_screen.dart';
import 'package:fr_cnamts_ens/user/cgu/widget/viewmodels/additional_home_screens_view_model.dart';

class AdditionalHomeScreensContainer extends StatelessWidget {
  final Widget child;

  const AdditionalHomeScreensContainer({required this.child});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, AdditionalHomeScreenViewModel>(
      converter: (store) =>
          AdditionalHomeScreenViewModel.from(store, EnsModuleContainer.commonInjector!.getRemoteConfigWrapper()),
      distinct: true,
      onDidChange: (_, vm) {
        switch (vm.screenToDisplay) {
          case AdditionalHomeScreens.ONBOARDING:
            Navigator.pushNamed(context, OnboardingWelcomeScreen.routeName).then((shouldLogout) {
              if (context.mounted && shouldLogout == true) {
                StoreProvider.of<EnsInitialState>(context).dispatch(LogoutAction());
              } else {
                vm.onFirstConnexionOnboardingDisplayed();
              }
            });
          case AdditionalHomeScreens.ACCEPT_CGU:
            Navigator.pushNamed(context, AcceptCguScreen.routeName).then((acceptedCgu) {
              if (acceptedCgu == true) {
                vm.onAcceptCguDisplayed();
              }
            });
          case AdditionalHomeScreens.CONSENTEMENT_EXTRACTION_DONNEES_SANTE:
            Navigator.pushNamed(
              context,
              ConsentementExtractionDonneesSanteScreen.routeName,
              arguments: ConsentementExtractionDonneesSanteScreenArguments(isFromOnboarding: false),
            );
          case AdditionalHomeScreens.BS_NOUVELLES_FONCTIONALITES:
            if (ModalRoute.of(context)?.isCurrent == true) {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) => NouvellesFonctionnalitesBottomSheet(),
              ).whenComplete(() => vm.onNouvellesFonctionnalitesBottomSheetDisplayed());
            }
          case AdditionalHomeScreens.BS_INCITATION_PML:
            if (ModalRoute.of(context)?.isCurrent == true) {
              _displayIncitationPmlBottomSheet(vm, context);
            }
          default:
            break;
        }
      },
      builder: (_, __) => child,
    );
  }

  void _displayIncitationPmlBottomSheet(AdditionalHomeScreenViewModel vm, BuildContext context) {
    context.tagAction(TagsHome.tag_onboarding_app);
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      isDismissible: false,
      builder: (context) => IncitationPmlBottomSheet(
        onBoardedName: vm.mainFirstName,
        isProfilPrincipal: vm.isProfilPrincipal,
        positiveButtonHandler: () {
          context.tagAction(TagsHome.tag_onboarding_app_completerPM);
          Navigator.pushNamed(
            context,
            IncitationPmlWelcomeScreen.routeName,
            arguments: const SynthesePmlScreenArguments(isFromOnboarding: true),
          );
          vm.onIncitationPmlBottomSheetDisplayed();
        },
        negativeButtonHandler: () {
          vm.onIncitationPmlBottomSheetDisplayed();
        },
        closeButtonHandler: () {
          vm.onIncitationPmlBottomSheetDisplayed();
        },
      ),
    );
  }
}
