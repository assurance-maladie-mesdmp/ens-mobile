/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'ayants_droits_redux.dart';

class FetchProfilsRattachesAndAdPendingInvitationsAction {}

class ProcessFetchProfilsRattachesSuccessAction {
  final List<EnsProfilRattache> profilsRattaches;

  ProcessFetchProfilsRattachesSuccessAction(this.profilsRattaches);
}

class ProcessFetchProfilsRattachesErrorAction {}

class ProcessFetchAyantsDroitsPendingInvitationsSuccessAction {
  final List<AyantsDroitsPendingInvitation> invitations;

  ProcessFetchAyantsDroitsPendingInvitationsSuccessAction(this.invitations);
}

class ProcessFetchAyantsDroitsPendingInvitationsErrorAction {}

class SendAyantDroitInvitationConfirmationAction {
  final AyantDroitsPartageProfil adPartageProfil;
  final ConfirmationPartageProfilStatut confirmationPartageStatut;

  SendAyantDroitInvitationConfirmationAction({
    required this.adPartageProfil,
    required this.confirmationPartageStatut,
  });
}

class _ProcessSendAyantDroitInvitationConfirmationSuccessAction {
  final AyantDroitsPartageProfil invitationConfirmedProfile;
  final ConfirmationPartageProfilStatut statutPartage;

  _ProcessSendAyantDroitInvitationConfirmationSuccessAction({
    required this.invitationConfirmedProfile,
    required this.statutPartage,
  });
}

class _ProcessSendAyantDroitInvitationConfirmationErrorAction {}
