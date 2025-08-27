/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/ayants_droits/domain/ayant_droit_partage_data.dart';
import 'package:fr_cnamts_ens/ayants_droits/domain/confirmation_partage_profil_statut.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/user/domain/model/ens_profil.dart';
import 'package:fr_cnamts_ens/user/redux/user_actions.dart';
import 'package:redux/redux.dart';

class AyantDroitsInvitationConfirmationViewModel extends Equatable {
  final ConfirmationPartageProfilStatut confirmationPartageProfilStatut;
  final AyantDroitsPartageProfil profilPartage;
  final bool hasMorePendingInvitations;
  final void Function(AyantDroitsPartageProfil) changeProfile;

  const AyantDroitsInvitationConfirmationViewModel._({
    required this.confirmationPartageProfilStatut,
    required this.profilPartage,
    required this.hasMorePendingInvitations,
    required this.changeProfile,
  });

  @override
  List<Object?> get props => [
        confirmationPartageProfilStatut,
        profilPartage,
        hasMorePendingInvitations,
      ];

  factory AyantDroitsInvitationConfirmationViewModel(Store<EnsState> store) {
    final ayantsDroitsPendingInvitationsState = store.state.ayantsDroitsPendingInvitationsState;
    final aidantState = store.state.aidantState;

    final hasPendingInvitationsFromAD =
        ayantsDroitsPendingInvitationsState.pendingInvitationsFromAyantsDroits.isNotEmpty;
    final hasPendingInvitationsFromAides = aidantState.invitationsFromAidesState.pendingInvitationsFromAides.isNotEmpty;
    return AyantDroitsInvitationConfirmationViewModel._(
      confirmationPartageProfilStatut: ayantsDroitsPendingInvitationsState.confirmationPartageProfilStatut,
      profilPartage: ayantsDroitsPendingInvitationsState.invitationConfirmedProfile!,
      hasMorePendingInvitations: hasPendingInvitationsFromAD || hasPendingInvitationsFromAides,
      changeProfile: (AyantDroitsPartageProfil profilPartage) => _changeProfile(profilPartage, store),
    );
  }

  static void _changeProfile(AyantDroitsPartageProfil profilPartage, Store<EnsState> store) {
    final ensProfile = EnsProfil(
      patientId: profilPartage.patientId,
      nom: profilPartage.lastName,
      prenom: profilPartage.firstName,
      couleur: profilPartage.color,
    );
    store.dispatch(ChangeProfileAction(ensProfile));
  }
}
