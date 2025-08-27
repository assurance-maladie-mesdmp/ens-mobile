/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/notification_center/domain/notification_profile.dart';
import 'package:fr_cnamts_ens/profils_rattaches/domain/ens_profil_rattache.dart';
import 'package:fr_cnamts_ens/snackbar/redux/snackbar_actions.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:redux/redux.dart';

class ProfilsUtils {
  static ProfilType getCurrentProfilType(EnsState state) {
    final isMainProfile = state.userState.isMainProfile;
    if (isMainProfile) {
      return ProfilType.PROFIL_PRINCIPAL;
    } else {
      final profilsRattachesState = state.profilsRattachesState;
      final currentProfile = state.userState.currentProfile;
      final profilRattache = profilsRattachesState.profilsRattaches
          .firstWhereOrNull((profilRattache) => profilRattache.patientId == currentProfile?.patientId);
      return getProfilRattacheProfilType(profilRattache);
    }
  }

  static ProfilType getNotificationProfilType(NotificationProfile profil, Store<EnsState> store) {
    if (profil.isMainProfile) {
      return ProfilType.PROFIL_PRINCIPAL;
    } else {
      final profilsRattachesState = store.state.profilsRattachesState;
      final profilRattache = profilsRattachesState.profilsRattaches
          .firstWhereOrNull((profilRattache) => profilRattache.patientId == profil.patientId);
      return getProfilRattacheProfilType(profilRattache);
    }
  }

  static ProfilType getProfilRattacheProfilType(EnsProfilRattache? profilRattache) {
    if (profilRattache?.profilRattacheType.isAide == true) {
      return ProfilType.AIDE;
    } else {
      return ProfilType.AYANT_DROIT;
    }
  }
}

enum ProfilType {
  PROFIL_PRINCIPAL,
  AIDE,
  AYANT_DROIT;

  bool get isProfilPrincipal => this == PROFIL_PRINCIPAL;

  bool get isAide => this == AIDE;

  bool get isAd => this == AYANT_DROIT;

  bool get isAdult => !isAd;

  String get profilIcon {
    switch (this) {
      case ProfilType.PROFIL_PRINCIPAL:
        return EnsImages.ic_group;
      case ProfilType.AIDE:
        return EnsImages.ic_user_heart;
      case ProfilType.AYANT_DROIT:
        return EnsImages.ic_user;
    }
  }

  void showUnavailableSnackbarIfAide(
    BuildContext context, {
    required String profilFullName,
    required VoidCallback onOtherProfil,
    double? extraVerticalPadding,
  }) {
    if (isAide) {
      StoreProvider.of<EnsState>(context).dispatch(
        DisplaySnackbarAction.unavailableAsAidant(profilFullName, extraVerticalPadding: extraVerticalPadding),
      );
    } else {
      onOtherProfil();
    }
  }

  void handleProfilAction({
    required void Function() aideProfilCallback,
    required void Function() otherProfilCallback,
  }) {
    if (isAide) {
      aideProfilCallback();
    } else {
      otherProfilCallback();
    }
  }
}
