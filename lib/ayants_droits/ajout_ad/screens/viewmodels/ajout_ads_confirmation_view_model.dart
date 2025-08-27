/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:ui';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ayants_droits/ajout_ad/domain/profile_activation_result.dart';
import 'package:fr_cnamts_ens/ayants_droits/ajout_ad/redux/ajout_ad_redux.dart';
import 'package:fr_cnamts_ens/consentement_extraction_donnees_sante/screens/consentement_extraction_donnees_utils.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/user/domain/model/ens_profil.dart';
import 'package:fr_cnamts_ens/user/redux/user_actions.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:redux/redux.dart';

class AjoutAdConfirmationViewModel extends Equatable {
  final AllPurposesStatus status;
  final List<ProfileActivationResult> adsActivatedProfiles;
  final List<ProfileActivationResult> adsNotActivatedProfiles;
  final String appBarTitle;
  final bool canAddOtherAd;
  final VoidCallback load;
  final VoidCallback resetAjoutAdState;
  final VoidCallback resetActivateAdsProfilsStates;
  final void Function(ProfileActivationResult profile) changeProfile;
  final bool shouldDisplayExtractMesureConsentement;

  @override
  List<Object?> get props => [
        status,
        adsActivatedProfiles,
        adsNotActivatedProfiles,
        appBarTitle,
        canAddOtherAd,
        shouldDisplayExtractMesureConsentement,
      ];

  const AjoutAdConfirmationViewModel._({
    required this.status,
    required this.adsActivatedProfiles,
    required this.adsNotActivatedProfiles,
    required this.appBarTitle,
    required this.canAddOtherAd,
    required this.load,
    required this.resetAjoutAdState,
    required this.resetActivateAdsProfilsStates,
    required this.changeProfile,
    required this.shouldDisplayExtractMesureConsentement,
  });

  factory AjoutAdConfirmationViewModel.from(
    Store<EnsState> store, {
    required Map<int, Color> profilIconColors,
    required bool isConsentementExtractionDonneesEnabled,
  }) {
    final activateAdsProfilsResultState = store.state.ajoutAdState.activateAdsProfilsResultState;
    final canAddOtherAd = store.state.ajoutAdState.adsToAdd.isNotEmpty;

    final adsActivatedProfiles = activateAdsProfilsResultState.adsActivatedProfiles;
    final adsNotActivatedProfiles = activateAdsProfilsResultState.adsNotActivatedProfiles;
    return AjoutAdConfirmationViewModel._(
      status: activateAdsProfilsResultState.status,
      adsActivatedProfiles: adsActivatedProfiles,
      adsNotActivatedProfiles: adsNotActivatedProfiles,
      appBarTitle: _buildAppBarTitle(adsActivatedProfiles, adsNotActivatedProfiles),
      canAddOtherAd: canAddOtherAd,
      load: () => store.dispatch(FetchActivateAdsProfilsResultAction()),
      resetAjoutAdState: () => store.dispatch(ResetAjoutAdState()),
      resetActivateAdsProfilsStates: () => store.dispatch(ResetActivateAdsProfilsStates()),
      changeProfile: (ProfileActivationResult profile) {
        final ensProfile = EnsProfil(
          patientId: profile.patientId,
          nom: profile.lastName,
          prenom: profile.firstName,
          couleur: profilIconColors[profile.index.toInt()] ?? EnsColors.primary,
        );
        store.dispatch(ChangeProfileAction(ensProfile));
      },
      shouldDisplayExtractMesureConsentement: ConsentementExtractionDonneesUtils.shouldDisplayConsentement(
        isConsentementExtractionDonneesEnabled: isConsentementExtractionDonneesEnabled,
        state: store.state,
      ),
    );
  }

  static String _buildAppBarTitle(
    List<ProfileActivationResult> adsActivatedProfiles,
    List<ProfileActivationResult> adsNotActivatedProfiles,
  ) {
    if (adsActivatedProfiles.isNotEmpty && adsNotActivatedProfiles.isNotEmpty) {
      return 'Activation des profils';
    } else if (adsActivatedProfiles.isNotEmpty && adsNotActivatedProfiles.isEmpty) {
      return 'Profils activés';
    } else if (adsActivatedProfiles.isEmpty && adsNotActivatedProfiles.isNotEmpty) {
      return 'Profils non ajoutés';
    }
    return '';
  }
}
