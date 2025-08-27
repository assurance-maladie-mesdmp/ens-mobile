/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/files/domain/models/ens_file_content.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/user/domain/model/ens_profil.dart';
import 'package:fr_cnamts_ens/user/redux/user_actions.dart';
import 'package:redux/redux.dart';

class AideInvitationConfirmationViewModel extends Equatable {
  final String aideFirstName;
  final bool hasMorePendingInvitations;
  final void Function() changeProfile;
  final EnsFileContent? attestationPdf;

  const AideInvitationConfirmationViewModel._({
    required this.aideFirstName,
    required this.hasMorePendingInvitations,
    required this.changeProfile,
    this.attestationPdf,
  });

  @override
  List<Object?> get props => [aideFirstName, hasMorePendingInvitations, attestationPdf];

  factory AideInvitationConfirmationViewModel(Store<EnsState> store) {
    final aidantState = store.state.aidantState;
    final invitationsFromAidesState = aidantState.invitationsFromAidesState;
    final ayantsDroitsPendingInvitationsState = store.state.ayantsDroitsPendingInvitationsState;

    final hasMorePendingInvitations =
        ayantsDroitsPendingInvitationsState.pendingInvitationsFromAyantsDroits.isNotEmpty ||
            invitationsFromAidesState.pendingInvitationsFromAides.isNotEmpty;

    final aide = invitationsFromAidesState.acceptOrRefuseInvitationState.invitationFromAide!.aide;

    return AideInvitationConfirmationViewModel._(
      aideFirstName: aide.mainFirstName,
      hasMorePendingInvitations: hasMorePendingInvitations,
      changeProfile: () {
        final ensProfile = EnsProfil(
          patientId: aide.id,
          nom: aide.lastName,
          prenom: aide.firstName,
          couleur: aide.color,
        );
        store.dispatch(ChangeProfileAction(ensProfile));
      },
      attestationPdf: invitationsFromAidesState.acceptOrRefuseInvitationState.attestationPdf,
    );
  }
}
