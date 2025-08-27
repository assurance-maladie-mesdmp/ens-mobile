/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'vaccinations_redux.dart';

class FetchVaccinationsAction {
  final bool force;

  const FetchVaccinationsAction({this.force = false});
}

class ProcessFetchVaccinationsSuccessAction {
  final List<EnsVaccination> vaccinations;

  ProcessFetchVaccinationsSuccessAction(this.vaccinations);
}

class ProcessFetchVaccinationsErrorAction {}

class AddVaccinationAction {
  final EditingVaccination editingVaccination;

  AddVaccinationAction(this.editingVaccination);
}

class ProcessEditVaccinationSuccessAction {}

class ProcessEditVaccinationDateErrorAction {}

class InitVaccinationEditionAction {}

class UpdateVaccinationAction {
  final EditingVaccination editingVaccination;

  UpdateVaccinationAction(this.editingVaccination);
}

class DeleteVaccinationAction {
  final String vaccinationId;

  DeleteVaccinationAction(this.vaccinationId);
}

class ProcessDeleteVaccinationSuccessAction {
  final String vaccinationId;

  ProcessDeleteVaccinationSuccessAction(this.vaccinationId);
}

class FetchVaccinsAction {}

class ProcessFetchVaccinsSuccessAction {
  final List<EnsVaccin> vaccins;

  ProcessFetchVaccinsSuccessAction(this.vaccins);
}

class ProcessFetchVaccinsErrorAction {}

class FetchCarteVaccinationsAction {}

class ProcessFetchCarteVaccinationsSuccessAction {
  final CarteVaccinations carteVaccinations;

  ProcessFetchCarteVaccinationsSuccessAction(this.carteVaccinations);
}

class ProcessFetchCarteVaccinationsErrorAction {}

class FetchVaccinByCipAction {
  final String cipCode;

  FetchVaccinByCipAction({required this.cipCode});
}

class ProcessFetchVaccinByCipSuccessAction {
  final EnsVaccin? vaccin;

  ProcessFetchVaccinByCipSuccessAction(this.vaccin);
}

class ProcessFetchVaccinByCipErrorAction {}

class ResetVaccinationScannerAction {}
