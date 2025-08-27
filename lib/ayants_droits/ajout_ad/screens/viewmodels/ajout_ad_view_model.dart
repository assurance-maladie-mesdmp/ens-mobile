/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ayants_droits/ajout_ad/domain/ad_to_add.dart';
import 'package:fr_cnamts_ens/ayants_droits/ajout_ad/redux/ajout_ad_redux.dart';
import 'package:fr_cnamts_ens/consentement_extraction_donnees_sante/screens/consentement_extraction_donnees_utils.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/interruption_services/domain/interruption_de_service_info.dart';
import 'package:fr_cnamts_ens/interruption_services/redux/interruption_selectors.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profiles_color_helper.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';
import 'package:redux/redux.dart';

class AjoutAdViewModel extends Equatable {
  final AjoutAdScreenStatus status;
  final List<AdToAddDisplayModel> adsAvailables;
  final bool hasNonActivableAds;
  final void Function() load;
  final void Function(List<int> adsIds) activateAdsProfils;
  final AllPurposesStatus activateAdsProfilsStatus;
  final Map<int, Color> profilIconColors;
  final bool shouldDisplayExtractMesureConsentement;
  final String? interruptionServiceSnackbarMessage;

  @override
  List<Object?> get props => [
        status,
        adsAvailables,
        hasNonActivableAds,
        activateAdsProfilsStatus,
        profilIconColors,
        shouldDisplayExtractMesureConsentement,
        interruptionServiceSnackbarMessage,
      ];

  const AjoutAdViewModel._({
    required this.status,
    required this.load,
    required this.adsAvailables,
    required this.hasNonActivableAds,
    required this.activateAdsProfils,
    required this.activateAdsProfilsStatus,
    required this.profilIconColors,
    required this.shouldDisplayExtractMesureConsentement,
    this.interruptionServiceSnackbarMessage,
  });

  factory AjoutAdViewModel.from(
    Store<EnsState> store, {
    required AjoutAdScreenNavigation navigationFrom,
    required bool isConsentementExtractionDonneesEnabled,
  }) {
    final ajoutAdState = store.state.ajoutAdState;
    final interruptionServiceSnackbarMessage = InterruptionSelectors.getCurrentInterruptionInfos(
      state: store.state,
      domaine: DomaineInterruption.ENROLEMENT,
    )?.messageSnackbar;

    return AjoutAdViewModel._(
      status: _getStatus(ajoutAdState),
      load: () => store.dispatch(FetchAjoutAdPossiblesAction()),
      adsAvailables: ajoutAdState.adsToAdd
          .mapIndexed(
            (index, ad) => AdToAddDisplayModel(
              id: ad.id,
              name: '${ad.firstName.capitalize()} ${ad.lastName.capitalize()}',
              status: ad.status,
              statusLabel: toAjoutAdStatusString(ad.status),
              statusIcon: toAjoutAdIconAsset(ad.status),
              color: ProfilesColorHelper.getIconColor(index),
              hasDeleteRequest: ad.hasDeleteRequest,
            ),
          )
          .toList(),
      hasNonActivableAds: ajoutAdState.nonActivableAds.isNotEmpty && navigationFrom.isNotOnboarding,
      activateAdsProfils: (adsIds) => store.dispatch(ActivateAdsProfilsAction(adsIds: adsIds)),
      activateAdsProfilsStatus: ajoutAdState.activateAdsProfilsState.status,
      profilIconColors: Map.fromIterables(
        ajoutAdState.adsToAdd.map((ad) => ad.id),
        ajoutAdState.adsToAdd.mapIndexed((index, _) => ProfilesColorHelper.getIconColor(index)),
      ),
      shouldDisplayExtractMesureConsentement: ConsentementExtractionDonneesUtils.shouldDisplayConsentement(
        isConsentementExtractionDonneesEnabled: isConsentementExtractionDonneesEnabled,
        state: store.state,
      ),
      interruptionServiceSnackbarMessage: interruptionServiceSnackbarMessage,
    );
  }

  static AjoutAdScreenStatus _getStatus(AjoutAdState ajoutAdState) {
    if (ajoutAdState.status.isNotLoadedOrLoading()) {
      return AjoutAdScreenStatus.LOADING;
    } else if (ajoutAdState.status.isError()) {
      return AjoutAdScreenStatus.ERROR;
    } else if (ajoutAdState.adsToAdd.isEmpty) {
      return AjoutAdScreenStatus.EMPTY;
    } else {
      return AjoutAdScreenStatus.SUCCESS;
    }
  }
}

class AdToAddDisplayModel extends Equatable {
  final int id;
  final String name;
  final AdToAddStatus status;
  final String statusLabel;
  final String statusIcon;
  final Color color;
  final bool hasDeleteRequest;

  @override
  List<Object?> get props => [id, name, statusLabel, statusIcon, color, hasDeleteRequest];

  const AdToAddDisplayModel({
    required this.id,
    required this.name,
    required this.status,
    required this.statusLabel,
    required this.statusIcon,
    required this.color,
    required this.hasDeleteRequest,
  });
}

enum AjoutAdScreenStatus { ERROR, LOADING, SUCCESS, EMPTY }

String toAjoutAdStatusString(AdToAddStatus status) {
  return switch (status) {
    AdToAddStatus.OPPOSE => 'Profil opposé',
    AdToAddStatus.CLOTURE => 'Profil clôturé',
    AdToAddStatus.EN_ATTENTE => 'En attente d’activation',
  };
}

String toAjoutAdIconAsset(AdToAddStatus status) {
  return status == AdToAddStatus.EN_ATTENTE ? EnsImages.off_time : EnsImages.ic_off_close;
}

enum AjoutAdScreenNavigation {
  ONBOARDING,
  NOTIFICATION_CENTER,
  POPIN_PROFIL;

  bool get isOnboarding => this == AjoutAdScreenNavigation.ONBOARDING;

  bool get isNotOnboarding => this != AjoutAdScreenNavigation.ONBOARDING;
}
