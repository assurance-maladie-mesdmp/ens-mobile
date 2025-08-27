/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'agenda_redux.dart';

class UpdateExamenStatusAction {
  final ExamenStatus status;
  final ExamenStatus previousStatus;
  final String examenId;
  final DateTime dateDebut;
  final DateTime? dateRealisation;

  UpdateExamenStatusAction({
    required this.status,
    required this.previousStatus,
    required this.examenId,
    required this.dateDebut,
    required this.dateRealisation,
  });
}

class _ProcessUpdateExamenSuccessAction {
  final ExamenStatus status;
  final String examenId;
  final DateTime dateDebut;
  final DateTime? dateRealisation;

  _ProcessUpdateExamenSuccessAction({
    required this.status,
    required this.examenId,
    required this.dateDebut,
    this.dateRealisation,
  });
}

class ReinitializeExamensRecommandesFiltersAction {}

class UpdateExamensRecommandesStatutFilterAction {
  final List<ExamenStatus> selectedFilters;

  UpdateExamensRecommandesStatutFilterAction(this.selectedFilters);
}

class UpdateExamensRecommandesTypeExamenFilterAction {
  final List<String> selectedFilters;

  UpdateExamensRecommandesTypeExamenFilterAction(this.selectedFilters);
}
