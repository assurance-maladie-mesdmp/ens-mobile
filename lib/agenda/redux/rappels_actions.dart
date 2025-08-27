/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'agenda_redux.dart';

class _ProcessFetchRappelsSuccessAction {
  final List<Rappel> rappels;

  _ProcessFetchRappelsSuccessAction(this.rappels);
}

class _ProcessFetchRappelsErrorAction {}

class AddRappelAction {
  final DateTime date;
  final String title;
  final String? comment;

  AddRappelAction({required this.date, required this.title, required this.comment});
}

class ReinitEditRappelStatusAction {}

class UpdateRappelAction {
  final Rappel rappel;

  UpdateRappelAction(this.rappel);
}

class DeleteRappelAction {
  final String rappelId;

  DeleteRappelAction(this.rappelId);
}

class _ProcessDeleteRappelSuccessAction {
  final String rappelId;

  _ProcessDeleteRappelSuccessAction(this.rappelId);
}

class _ProcessAddRappelSuccessAction {
  final Rappel rappel;

  _ProcessAddRappelSuccessAction(this.rappel);
}

class _ProcessAddRappelErrorAction {}

class _ProcessUpdatedRappelSuccessAction {
  Rappel rappel;

  _ProcessUpdatedRappelSuccessAction(this.rappel);
}

class _ProcessUpdatedRappelErrorAction {}

class FetchRappelDetailAction {
  final String rappelId;
  final String? patientId;

  FetchRappelDetailAction(this.rappelId, [this.patientId]);
}

class _ProcessFetchedRappelDetailSuccessAction {
  final Rappel rappel;

  _ProcessFetchedRappelDetailSuccessAction(this.rappel);
}

class _ProcessFetchedRappelDetailErrorAction {
  final AgendaDomainError domainError;

  const _ProcessFetchedRappelDetailErrorAction(this.domainError);
}
