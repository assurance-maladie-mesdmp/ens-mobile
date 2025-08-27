/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'ayants_droits_redux.dart';

class AyantsDroitsPendingInvitationsState extends Equatable {
  final AllPurposesStatus confirmationRequestStatus;
  final ConfirmationPartageProfilStatut confirmationPartageProfilStatut;
  final AllPurposesStatus pendingInvitationsFromAyantsDroitsStatus;
  final List<AyantsDroitsPendingInvitation> pendingInvitationsFromAyantsDroits;
  final AyantDroitsPartageProfil? invitationConfirmedProfile;

  const AyantsDroitsPendingInvitationsState({
    this.confirmationRequestStatus = AllPurposesStatus.NOT_LOADED,
    this.confirmationPartageProfilStatut = ConfirmationPartageProfilStatut.UNKNOWN,
    this.pendingInvitationsFromAyantsDroitsStatus = AllPurposesStatus.NOT_LOADED,
    this.pendingInvitationsFromAyantsDroits = const [],
    this.invitationConfirmedProfile,
  });

  @override
  List<Object?> get props => [
        confirmationRequestStatus,
        confirmationPartageProfilStatut,
        pendingInvitationsFromAyantsDroitsStatus,
        pendingInvitationsFromAyantsDroits,
        invitationConfirmedProfile,
      ];

  AyantsDroitsPendingInvitationsState clone({
    AllPurposesStatus? confirmationRequestStatus,
    ConfirmationPartageProfilStatut? confirmationPartageProfilStatut,
    AllPurposesStatus? pendingInvitationsFromAyantsDroitsStatus,
    List<AyantsDroitsPendingInvitation>? pendingInvitationsFromAyantsDroits,
    AyantDroitsPartageProfil? invitationConfirmedProfile,
  }) {
    return AyantsDroitsPendingInvitationsState(
      confirmationRequestStatus: confirmationRequestStatus ?? this.confirmationRequestStatus,
      confirmationPartageProfilStatut: confirmationPartageProfilStatut ?? this.confirmationPartageProfilStatut,
      pendingInvitationsFromAyantsDroitsStatus:
          pendingInvitationsFromAyantsDroitsStatus ?? this.pendingInvitationsFromAyantsDroitsStatus,
      pendingInvitationsFromAyantsDroits: pendingInvitationsFromAyantsDroits ?? this.pendingInvitationsFromAyantsDroits,
      invitationConfirmedProfile: invitationConfirmedProfile ?? this.invitationConfirmedProfile,
    );
  }
}
