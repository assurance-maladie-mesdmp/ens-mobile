/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'groupe_sanguin_redux.dart';

class FetchCmsInformationsGroupeSanguinAction {}

class _ProcessFetchCmsInformationsGroupeSanguinSuccessAction {
  final List<InformationsGroupeSanguin> informationsGroupeSanguin;

  const _ProcessFetchCmsInformationsGroupeSanguinSuccessAction(this.informationsGroupeSanguin);
}

class FetchGroupeSanguinAction {
  final bool force;

  const FetchGroupeSanguinAction({this.force = false});
}

class _ProcessFetchGroupeSanguinSuccessAction {
  final GroupeSanguinData? response;

  const _ProcessFetchGroupeSanguinSuccessAction(this.response);
}

class _ProcessFetchGroupeSanguinErrorAction {}

class SendGroupeSanguinAction {
  final GroupeSanguin groupeSanguin;

  const SendGroupeSanguinAction(this.groupeSanguin);
}

class _AddGroupeSanguinAction {
  final String patientId;
  final GroupeSanguin groupeSanguin;

  const _AddGroupeSanguinAction(this.patientId, this.groupeSanguin);
}

class _ProcessAddGroupeSanguinSuccessAction {}

class _ProcessAddGroupeSanguinErrorAction {}

class _UpdateGroupeSanguinAction {
  final String id;
  final String patientId;
  final GroupeSanguin groupeSanguin;

  const _UpdateGroupeSanguinAction(this.id, this.patientId, this.groupeSanguin);
}

class _ProcessUpdateGroupeSanguinSuccessAction extends EnsPatientRelatedAction {
  _ProcessUpdateGroupeSanguinSuccessAction(super.patientId);
}

class _ProcessUpdateGroupeSanguinErrorAction extends EnsPatientRelatedAction {
  _ProcessUpdateGroupeSanguinErrorAction(super.patientId);
}

class DeleteGroupeSanguinAction {
  const DeleteGroupeSanguinAction();
}

class _ProcessDeleteGroupeSanguinSuccessAction extends EnsPatientRelatedAction {
  _ProcessDeleteGroupeSanguinSuccessAction(super.patientId);
}

class _ProcessDeleteGroupeSanguinErrorAction extends EnsPatientRelatedAction {
  _ProcessDeleteGroupeSanguinErrorAction(super.patientId);
}
