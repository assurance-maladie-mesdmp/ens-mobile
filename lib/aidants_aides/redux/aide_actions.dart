/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'aidants_aides_redux.dart';

class FetchPotentielAidantAction {
  final String numeroSecu;
  final String firstName;
  final String lastName;
  final DateTime birthDate;

  const FetchPotentielAidantAction({
    required this.numeroSecu,
    required this.firstName,
    required this.lastName,
    required this.birthDate,
  });
}

class _ProcessFetchPotentielAidantSuccessAction {
  final PotentielAidant potentielAidant;

  const _ProcessFetchPotentielAidantSuccessAction({
    required this.potentielAidant,
  });
}

class _ProcessFetchPotentielAidantErrorAction {}

class SendInvitationToPotentielAidantAction {}

class _ProcessSendInvitationToPotentielAidantSuccessAction {}

class _ProcessSendInvitationToPotentielAidantErrorAction {}

class FetchDelegationsPourAideAction {}

class _ProcessFetchDelegationsPourAideSuccessAction {
  final List<DelegationEnCours> delegationsEnCours;
  final List<DelegationEnAttente> delegationsEnAttente;

  _ProcessFetchDelegationsPourAideSuccessAction({required this.delegationsEnCours, required this.delegationsEnAttente});
}

class _ProcessFetchDelegationsPourAideErrorAction {}

class DeleteAccesDeAidantAction {
  final String delegationId;

  DeleteAccesDeAidantAction({required this.delegationId});
}

class _ProcessDeleteAccesDeAidantSuccessAction {
  final String delegationId;
  final String? attestationDocumentId;

  _ProcessDeleteAccesDeAidantSuccessAction({
    required this.delegationId,
    this.attestationDocumentId,
  });
}

class _ProcessDeleteAccesDeAidantErrorAction {}

class SaveNumeroSecuFromScanAidantAction {
  final String numeroSecu;

  const SaveNumeroSecuFromScanAidantAction(this.numeroSecu);
}

class ResetNumeroSecuFromScanAidantAction {}
