/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'agenda_redux.dart';

class _ProcessFetchRendezVousSuccessAction {
  final List<RendezVous> rendezVous;

  _ProcessFetchRendezVousSuccessAction(this.rendezVous);
}

class _ProcessFetchExamensErrorAction {}

class _ProcessFetchExamensSuccessAction {
  final List<ExamenRecommande> examens;

  _ProcessFetchExamensSuccessAction(this.examens);
}

class _ProcessFetchRendezVousErrorAction {}

class AddRendezVousAction {
  final RendezVous rdv;

  AddRendezVousAction(this.rdv);
}

class _ProcessAddRendezVousSuccessAction {
  final RendezVous rendezVous;

  _ProcessAddRendezVousSuccessAction(this.rendezVous);
}

class _ProcessAddRendezVousErrorAction {}

class UpdateRendezVousAction {
  final RendezVous rdv;

  UpdateRendezVousAction(this.rdv);
}

class _ProcessUpdateRendezVousSuccessAction {
  final RendezVous rendezVous;

  _ProcessUpdateRendezVousSuccessAction(this.rendezVous);
}

class _ProcessUpdateRendezVousErrorAction {}

class DeleteRendezVousAction {
  final String rdvId;

  DeleteRendezVousAction(this.rdvId);
}

class _ProcessDeleteRendezVousSuccessAction {
  final String rdvId;

  _ProcessDeleteRendezVousSuccessAction(this.rdvId);
}

class FetchRendezVousDetailAction {
  final String rdvId;
  final String? patientId;

  FetchRendezVousDetailAction(this.rdvId, [this.patientId]);
}

class _ProcessFetchRendezVousDetailSuccessAction {
  final RendezVous rendezVous;

  const _ProcessFetchRendezVousDetailSuccessAction(this.rendezVous);
}

class _ProcessFetchRendezVousDetailErrorAction {
  final AgendaDomainError domainError;

  const _ProcessFetchRendezVousDetailErrorAction(this.domainError);
}
