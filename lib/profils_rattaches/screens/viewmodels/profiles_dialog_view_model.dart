/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:ui';

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/aidants_aides/redux/aidants_aides_redux.dart';
import 'package:fr_cnamts_ens/ayants_droits/redux/ayants_droits_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profiles_color_helper.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/viewmodels/profile_display_model.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/viewmodels/profile_item_display_model.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/user/domain/model/ens_profil.dart';
import 'package:fr_cnamts_ens/user/redux/user_actions.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:fr_cnamts_ens/utils/extensions/profil_extension.dart';
import 'package:fr_cnamts_ens/utils/screen_status.dart';
import 'package:redux/redux.dart';

class ProfilesDialogViewModel extends Equatable {
  static const int nbMaxProfile = 19;
  static const int nbMaxProfileCollapsed = 3;

  final ProfilType profilType;
  final bool shouldShowPendingInvitations;
  final String profileName;
  final Color profileColor;
  final ScreenStatus status;
  final List<ProfileDisplayModel> profiles;
  final AllPurposesStatus fetchInvitationsFromAidesStatus;
  final void Function(ProfileDisplayModel) changeProfile;
  final void Function() reloadData;

  const ProfilesDialogViewModel._internal({
    required this.profilType,
    required this.profileName,
    required this.profileColor,
    required this.status,
    required this.profiles,
    required this.shouldShowPendingInvitations,
    required this.fetchInvitationsFromAidesStatus,
    required this.changeProfile,
    required this.reloadData,
  });

  factory ProfilesDialogViewModel.from(Store<EnsState> store, {required bool isAidantsAidesEnabled}) {
    final EnsProfil? currentProfile = store.state.userState.currentProfile;
    final mainUserDataState = store.state.userState.mainUserDataState;
    final fetchInvitationsFromAidesStatus =
        store.state.aidantState.invitationsFromAidesState.fetchInvitationsFromAidesStatus;
    final hasPendingInvitationsFromAides =
        store.state.aidantState.invitationsFromAidesState.pendingInvitationsFromAides.isNotEmpty;
    final hasPendingInvitationsForAD =
        store.state.ayantsDroitsPendingInvitationsState.pendingInvitationsFromAyantsDroits.isNotEmpty;

    final shouldShowPendingInvitations = hasPendingInvitationsFromAides || hasPendingInvitationsForAD;

    final profilType = ProfilsUtils.getCurrentProfilType(store.state);

    final profileName = currentProfile.nomComplet;
    final profileColor = currentProfile?.couleur ?? EnsColors.primary;

    final profilsRattachesState = store.state.profilsRattachesState;
    var status = ScreenStatus.LOADING;
    List<ProfileDisplayModel>? profiles = [];

    if (profilsRattachesState.status.isSuccess() && mainUserDataState.isSuccessWithData) {
      status = ScreenStatus.SUCCESS;
      profiles = profilsRattachesState.profilsRattaches
          .map(
            (profilRattache) => ProfileDisplayModel(
              patientId: profilRattache.patientId,
              firstName: profilRattache.firstName,
              lastName: profilRattache.lastName,
              fullName: profilRattache.nomComplet,
              color: ProfilesColorHelper.getIconColor(profilRattache.index),
              profilType: ProfilsUtils.getProfilRattacheProfilType(profilRattache),
            ),
          )
          .toList();

      if (!isAidantsAidesEnabled) {
        profiles.removeWhere((profile) => profile.profilType.isAide);
      }

      if (!profilType.isProfilPrincipal) {
        final mainUserData = mainUserDataState.userData!;
        if (!mainUserData.isProfilInactif) {
          final mainUser = ProfileDisplayModel(
            patientId: store.state.userState.connectedUserPatientId,
            firstName: mainUserData.firstName,
            lastName: mainUserData.lastName,
            fullName: mainUserData.nomComplet,
            color: EnsColors.primary,
            profilType: ProfilType.PROFIL_PRINCIPAL,
          );
          profiles.insert(0, mainUser);
        }
        profiles.removeWhere((profile) => profile.patientId == store.state.userState.currentProfilePatientId);
      }
    } else if (profilsRattachesState.status.isError() || mainUserDataState.isErrorOrSuccessWithoutData) {
      status = ScreenStatus.ERROR;
    }

    return ProfilesDialogViewModel._internal(
      profilType: profilType,
      profileName: profileName,
      profileColor: profileColor,
      status: status,
      profiles: profiles,
      shouldShowPendingInvitations: shouldShowPendingInvitations,
      fetchInvitationsFromAidesStatus: fetchInvitationsFromAidesStatus,
      changeProfile: (profileDisplayModel) {
        final ensProfile = EnsProfil(
          patientId: profileDisplayModel.patientId,
          nom: profileDisplayModel.lastName,
          prenom: profileDisplayModel.firstName,
          couleur: profileDisplayModel.color,
        );
        store.dispatch(ChangeProfileAction(ensProfile));
      },
      reloadData: () {
        store.dispatch(FetchUserDataAction(force: true));
        store.dispatch(FetchProfilsRattachesAndAdPendingInvitationsAction());
        if (isAidantsAidesEnabled) {
          store.dispatch(FetchInvitationsFromAidesAction());
        }
      },
    );
  }

  List<ProfileItemDisplayModel> getProfilesItems(bool isExpanded) {
    if (profiles.isEmpty) {
      return [const ProfileItemDisplayModel.ajouterUnProfilButton()];
    } else if (profiles.length <= nbMaxProfileCollapsed) {
      return _getSmallList();
    } else if (isExpanded) {
      return _getExpandedList();
    } else {
      return _getCollapsedList();
    }
  }

  List<ProfileItemDisplayModel> _getSmallList() {
    final List<ProfileItemDisplayModel> displayModels = [];
    for (final profile in profiles) {
      displayModels.add(ProfileItemDisplayModel.profile(profile));
    }
    displayModels.add(const ProfileItemDisplayModel.ajouterUnProfilButton());
    return displayModels;
  }

  List<ProfileItemDisplayModel> _getCollapsedList() {
    final List<ProfileItemDisplayModel> displayModels = [];

    profiles
        .take(nbMaxProfileCollapsed)
        .forEach((profile) => displayModels.add(ProfileItemDisplayModel.profile(profile)));
    displayModels.add(const ProfileItemDisplayModel.expandButton());
    return displayModels;
  }

  List<ProfileItemDisplayModel> _getExpandedList() {
    final List<ProfileItemDisplayModel> displayModels = [];

    for (final profile in profiles) {
      displayModels.add(ProfileItemDisplayModel.profile(profile));
    }

    if (profiles.length < nbMaxProfile) {
      displayModels.add(const ProfileItemDisplayModel.ajouterUnProfilButton());
    }
    displayModels.add(const ProfileItemDisplayModel.collapseButton());
    return displayModels;
  }

  @override
  List<Object?> get props => [
        profilType,
        profileName,
        profileColor,
        status,
        profiles,
        shouldShowPendingInvitations,
        fetchInvitationsFromAidesStatus,
      ];
}
