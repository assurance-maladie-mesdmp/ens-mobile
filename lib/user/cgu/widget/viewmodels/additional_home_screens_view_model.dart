/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/bottomsheet_nouvelles_fonctionalites/redux/nouvelles_fonctionnalites_redux.dart';
import 'package:fr_cnamts_ens/consentement_extraction_donnees_sante/screens/consentement_extraction_donnees_utils.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/infra/remote_config_wrapper.dart';
import 'package:fr_cnamts_ens/onboarding/redux/onboarding_redux.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/user/cgu/redux/cgu_redux.dart';
import 'package:fr_cnamts_ens/user/cgu/widget/viewmodels/additional_home_screens_view_helper.dart';
import 'package:fr_cnamts_ens/user/redux/user_actions.dart';
import 'package:fr_cnamts_ens/user/redux/user_selectors.dart';
import 'package:fr_cnamts_ens/utils/ens_date_utils.dart';
import 'package:fr_cnamts_ens/utils/extensions/profil_extension.dart';
import 'package:redux/redux.dart';

class AdditionalHomeScreenViewModel extends Equatable {
  final AdditionalHomeScreens screenToDisplay;
  final String mainFirstName;
  final bool isProfilPrincipal;
  final void Function() onNouvellesFonctionnalitesBottomSheetDisplayed;
  final void Function() onFirstConnexionOnboardingDisplayed;
  final void Function() onIncitationPmlBottomSheetDisplayed;
  final void Function() onAcceptCguDisplayed;

  const AdditionalHomeScreenViewModel._({
    required this.screenToDisplay,
    required this.mainFirstName,
    required this.isProfilPrincipal,
    required this.onNouvellesFonctionnalitesBottomSheetDisplayed,
    required this.onFirstConnexionOnboardingDisplayed,
    required this.onIncitationPmlBottomSheetDisplayed,
    required this.onAcceptCguDisplayed,
  });

  factory AdditionalHomeScreenViewModel.from(Store<EnsState> store, RemoteConfigWrapper remoteConfigWrapper) {
    final onboardingState = store.state.onboardingState;
    final mainUserDataState = store.state.userState.mainUserDataState;
    final mainFirstName = store.state.userState.currentProfile.mainFirstName;
    final isProfilPrincipal = ProfilsUtils.getCurrentProfilType(store.state).isProfilPrincipal;

    final shouldDisplayFirstConnexionOnboarding = UserSelectors.shouldDisplayOnboarding(store.state);
    final shouldDisplayCgu =
        !shouldDisplayFirstConnexionOnboarding && AdditionalHomeScreensViewHelper.shouldDisplayCgu(mainUserDataState);
    final shouldDisplayExtractionMesuresConsentementPage = ConsentementExtractionDonneesUtils.shouldDisplayConsentement(
          isConsentementExtractionDonneesEnabled: remoteConfigWrapper.isEnabled(Feature.consentementExtractionDonnees),
          state: store.state,
        ) &&
        !shouldDisplayFirstConnexionOnboarding &&
        !shouldDisplayCgu;
    final shouldDisplayNouvellesFonctionalitesBottomSheet = !shouldDisplayFirstConnexionOnboarding &&
        !shouldDisplayCgu &&
        !shouldDisplayExtractionMesuresConsentementPage &&
        AdditionalHomeScreensViewHelper.shouldDisplayNouvellesFonctionalitesBottomSheet(
          store.state.nouvellesFonctionnalitesState,
        );
    final shouldDisplayIncitationPmlBottomSheet = !shouldDisplayFirstConnexionOnboarding &&
        !shouldDisplayCgu &&
        !shouldDisplayExtractionMesuresConsentementPage &&
        !shouldDisplayNouvellesFonctionalitesBottomSheet &&
        onboardingState.shouldDisplayIncitationPmlBottomSheet;

    AdditionalHomeScreens screenToDisplay = AdditionalHomeScreens.NONE;

    if (shouldDisplayFirstConnexionOnboarding) {
      screenToDisplay = AdditionalHomeScreens.ONBOARDING;
    } else if (shouldDisplayCgu) {
      screenToDisplay = AdditionalHomeScreens.ACCEPT_CGU;
    } else if (shouldDisplayExtractionMesuresConsentementPage) {
      screenToDisplay = AdditionalHomeScreens.CONSENTEMENT_EXTRACTION_DONNEES_SANTE;
    } else if (shouldDisplayNouvellesFonctionalitesBottomSheet) {
      screenToDisplay = AdditionalHomeScreens.BS_NOUVELLES_FONCTIONALITES;
    } else if (shouldDisplayIncitationPmlBottomSheet) {
      screenToDisplay = AdditionalHomeScreens.BS_INCITATION_PML;
    }

    return AdditionalHomeScreenViewModel._(
      screenToDisplay: screenToDisplay,
      mainFirstName: mainFirstName,
      isProfilPrincipal: isProfilPrincipal,
      onNouvellesFonctionnalitesBottomSheetDisplayed: () {
        store.dispatch(SetNouvellesFonctionnalitesBottomsheetDisplayedAction());
      },
      onFirstConnexionOnboardingDisplayed: () {
        store.dispatch(SetFirstConnexionOnboardingDoneAction(EnsDateUtils.formatYYYYMMDD(DateTime.now())));
      },
      onIncitationPmlBottomSheetDisplayed: () {
        store.dispatch(SetShouldDisplayIncitationPmlBottomSheetAction(false));
      },
      onAcceptCguDisplayed: () {
        store.dispatch(SetCguAcceptedAt());
      },
    );
  }

  @override
  List<Object?> get props => [screenToDisplay, mainFirstName, isProfilPrincipal];
}

enum AdditionalHomeScreens {
  NONE,
  ONBOARDING,
  ACCEPT_CGU,
  CONSENTEMENT_EXTRACTION_DONNEES_SANTE,
  BS_INCITATION_PML,
  BS_NOUVELLES_FONCTIONALITES,
}
