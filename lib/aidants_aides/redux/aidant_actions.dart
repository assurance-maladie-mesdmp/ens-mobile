/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'aidants_aides_redux.dart';

class FetchInvitationsFromAidesAction {}

class _ProcessFetchInvitationsFromAidesSuccessAction {
  final List<InvitationFromAide> invitations;

  const _ProcessFetchInvitationsFromAidesSuccessAction(this.invitations);
}

class _ProcessFetchInvitationsFromAidesErrorAction {}

class FetchDelegationsPourAidantAction {}

class _ProcessFetchDelegationsPourAidantSuccessAction {
  final List<DelegationEnCours> delegationsEnCours;

  _ProcessFetchDelegationsPourAidantSuccessAction({required this.delegationsEnCours});
}

class _ProcessFetchDelegationsPourAidantErrorAction {}

class AcceptInvitationFromAideAction {
  final InvitationFromAide invitationFromAide;

  const AcceptInvitationFromAideAction({required this.invitationFromAide});
}

class _ProcessAcceptInvitationFromAideSuccessAction {
  final InvitationFromAide invitationFromAide;
  final EnsFileContent? attestationPdf;

  const _ProcessAcceptInvitationFromAideSuccessAction({required this.invitationFromAide, required this.attestationPdf});
}

class _ProcessAcceptInvitationFromAideErrorAction {}

class RefuseInvitationFromAideAction {
  final String invitationId;

  const RefuseInvitationFromAideAction({required this.invitationId});
}

class _ProcessRefuseInvitationFromAideSuccessAction {
  final String invitationId;

  const _ProcessRefuseInvitationFromAideSuccessAction({required this.invitationId});
}

class _ProcessRefuseInvitationFromAideErrorAction {}

class DeleteAccesAuProfilAideAction {
  final String delegationId;
  final String patientId;

  DeleteAccesAuProfilAideAction({required this.delegationId, required this.patientId});
}

class _ProcessDeleteAccesAuProfilAideSuccessAction {
  final String delegationId;
  final String patientId;
  final EnsFileContent? attestation;

  _ProcessDeleteAccesAuProfilAideSuccessAction({
    required this.delegationId,
    required this.patientId,
    required this.attestation,
  });
}

class _ProcessDeleteAccesAuProfilAideErrorAction {}
