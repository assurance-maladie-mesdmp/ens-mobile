/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:ui';

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/app_config.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/user/domain/model/ens_profil.dart';
import 'package:fr_cnamts_ens/utils/extensions/profil_extension.dart';
import 'package:redux/redux.dart';

class EnsAppBarViewModel extends AnalyticsViewModel with EquatableMixin {
  final bool withOverrideConfigurationAction;
  final ProfilType profilType;
  final String profileName;
  final Color profileColor;
  final bool hasUnreadNotifications;
  final bool displayMagicalPage;

  const EnsAppBarViewModel._internal(
    Store<EnsState> super.store, {
    required this.withOverrideConfigurationAction,
    required this.profilType,
    required this.profileName,
    required this.profileColor,
    this.hasUnreadNotifications = false,
    required this.displayMagicalPage,
  });

  factory EnsAppBarViewModel(Store<EnsState> store, AppConfig appConfig) {
    final EnsProfil? currentProfile = store.state.userState.currentProfile;
    final withOverrideConfigurationAction = appConfig.configName == AppConfigName.LOCAL;
    final notificationsCenterState = store.state.notificationCenterState;
    final hasRecommandationDifferee = store.state.recommandationsState.recommandationDifferee != null;

    final String profileName = currentProfile.nomComplet;
    final Color profileColor = currentProfile?.couleur ?? EnsColors.primary;

    return EnsAppBarViewModel._internal(
      store,
      withOverrideConfigurationAction: withOverrideConfigurationAction,
      profilType: ProfilsUtils.getCurrentProfilType(store.state),
      profileName: profileName,
      profileColor: profileColor,
      hasUnreadNotifications: notificationsCenterState.unreadCount > 0 || hasRecommandationDifferee,
      displayMagicalPage: appConfig.configName != AppConfigName.PROD,
    );
  }

  @override
  List<Object?> get props => [
        withOverrideConfigurationAction,
        profilType,
        profileName,
        profileColor,
        hasUnreadNotifications,
        displayMagicalPage,
      ];
}
