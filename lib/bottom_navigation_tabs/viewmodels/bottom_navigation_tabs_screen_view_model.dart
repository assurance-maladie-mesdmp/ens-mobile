/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:ui';

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/bottom_navigation_tabs/redux/main_app_bar_actions.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_bottom_nav_bar.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:redux/redux.dart';

class BottomNavigationTabsScreenViewModel extends Equatable {
  final List<EnsNavigationBarItem> navigationBarItems;
  final Color? profileColor;
  final bool isMainAppBarVisible;
  final void Function() displayMainAppBar;

  const BottomNavigationTabsScreenViewModel._internal(
    this.navigationBarItems,
    this.profileColor,
    this.isMainAppBarVisible,
    this.displayMainAppBar,
  );

  factory BottomNavigationTabsScreenViewModel(Store<EnsState> store) => BottomNavigationTabsScreenViewModel._internal(
        const [
          EnsNavigationBarItem(
            title: 'Accueil',
            iconUri: EnsImages.ic_home_alt_outlined,
            selectedIconUri: EnsImages.ic_home_alt_filled,
            semanticLabel: 'Accueil, onglet 1 sur 4',
          ),
          EnsNavigationBarItem(
            title: 'Documents',
            iconUri: EnsImages.ic_folder_open,
            selectedIconUri: EnsImages.ic_folder_open_filled,
            semanticLabel: 'Documents, onglet 2 sur 4',
          ),
          EnsNavigationBarItem(
            title: 'Messages',
            iconUri: EnsImages.ic_mail,
            selectedIconUri: EnsImages.ic_mail_filled,
            semanticLabel: 'Messages, onglet 3 sur 4',
          ),
          EnsNavigationBarItem(
            title: 'Profil médical',
            iconUri: EnsImages.ic_medical_profile_outlined,
            selectedIconUri: EnsImages.ic_medical_profile_filled,
            semanticLabel: 'Profil médical, onglet 4 sur 4',
          ),
          EnsNavigationBarItem(
            title: 'Plus',
            iconUri: EnsImages.ic_plus_outline,
            selectedIconUri: EnsImages.ic_plus_filled,
            semanticLabel: 'Voir plus, onglet 5 sur 5',
          ),
        ],
        store.state.userState.currentProfile != null
            ? store.state.userState.currentProfile!.couleur
            : EnsColors.primary,
        store.state.displayMainAppBar,
        () {
          if (!store.state.displayMainAppBar) {
            store.dispatch(ToggleMainAppBarVisibilityAction());
          }
        },
      );

  @override
  List<Object?> get props => [navigationBarItems, profileColor, isMainAppBarVisible];
}
