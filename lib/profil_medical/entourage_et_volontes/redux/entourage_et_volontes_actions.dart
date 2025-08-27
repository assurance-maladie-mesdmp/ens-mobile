/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'entourage_et_volontes_redux.dart';

class FetchEntourageEtVolontesAction {
  final bool force;

  FetchEntourageEtVolontesAction({this.force = false});
}

class ProcessFetchEntourageEtVolontesSuccessAction {
  final EntourageEtVolontes entourageEtVolontes;

  ProcessFetchEntourageEtVolontesSuccessAction(this.entourageEtVolontes);
}

class ProcessFetchEntourageEtVolontesErrorAction {}

class CreateEntourageContactAction {
  final EditingEntourageContact editingEntourageContact;

  const CreateEntourageContactAction(this.editingEntourageContact);
}

class _ProcessCreateOrUpdateEntourageContactSuccessAction {}

class _ProcessCreateOrUpdateEntourageContactFailureAction {}

class UpdateEntourageContactAction {
  final EditingEntourageContact editingEntourageContact;

  const UpdateEntourageContactAction(this.editingEntourageContact);
}

class DeleteEntourageContactAction {
  final String contactId;

  const DeleteEntourageContactAction(this.contactId);
}

class _ProcessDeleteEntourageContactSuccessAction {}

class _ProcessDeleteEntourageContactErrorAction {}

class ToggleConsentDonOrganeAction {
  final bool consent;

  ToggleConsentDonOrganeAction(this.consent);
}

class _ProcessToggleConsentDonOrganeSuccessAction {
  final bool consent;

  const _ProcessToggleConsentDonOrganeSuccessAction(this.consent);
}

class _ProcessToggleConsentDonOrganeErrorAction {}
