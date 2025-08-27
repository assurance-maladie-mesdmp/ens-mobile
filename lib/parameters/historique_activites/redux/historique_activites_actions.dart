/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'historique_activites_redux.dart';

class FetchProfessionnelsDeSanteTracesAction {
  final bool force;

  FetchProfessionnelsDeSanteTracesAction({this.force = false});
}

class _ProcessFetchProfessionnelsDeSanteTracesSuccessAction {
  final ProfessionnelsDeSanteTraces professionnelsDeSanteTraces;
  final DateRangeFilter? currentDataDateFilter;

  _ProcessFetchProfessionnelsDeSanteTracesSuccessAction(this.professionnelsDeSanteTraces, this.currentDataDateFilter);
}

class _ProcessFetchProfessionnelsDeSanteTracesErrorAction {}

class FetchProfessionnelsDeSanteTracesNextPageAction {}

class _ProcessFetchProfessionnelsDeSanteTracesNextPageSuccessAction {
  final ProfessionnelsDeSanteTraces professionnelsDeSanteTraces;

  _ProcessFetchProfessionnelsDeSanteTracesNextPageSuccessAction(this.professionnelsDeSanteTraces);
}

class _ProcessFetchProfessionnelsDeSanteTracesNextPageErrorAction {}

class FetchMesActivitesTracesAction {
  final bool force;

  FetchMesActivitesTracesAction({this.force = false});
}

class _ProcessFetchMesActivitesTracesSuccessAction {
  final MesActivitesTraces mesActivitesTraces;

  _ProcessFetchMesActivitesTracesSuccessAction(this.mesActivitesTraces);
}

class _ProcessFetchMesActivitesTracesErrorAction {}

class FetchServicesSynchronisesTracesAction {
  final bool force;

  FetchServicesSynchronisesTracesAction({this.force = false});
}

class _ProcessFetchServicesSynchronisesTracesSuccessAction {
  final ServicesSynchronisesTraces servicesSynchronisesTraces;

  _ProcessFetchServicesSynchronisesTracesSuccessAction(this.servicesSynchronisesTraces);
}

class _ProcessFetchServicesSynchronisesTracesErrorAction {}

class UpdateHistoriqueActivitiesFilterAction {
  final DateRangeFilter? dateRangeFilter;

  const UpdateHistoriqueActivitiesFilterAction({required this.dateRangeFilter});
}

class ResetHistoriqueActivitiesFilterAction {}

class FetchProfessionnelDeSanteTracesByIdAction {
  final String psIdNat;

  const FetchProfessionnelDeSanteTracesByIdAction({required this.psIdNat});
}

class _ProcessFetchProfessionnelDeSanteTracesByIdSuccessAction {
  final String psIdNat;
  final ProfessionnelDeSanteTracesById professionnelDeSanteTracesById;

  _ProcessFetchProfessionnelDeSanteTracesByIdSuccessAction({
    required this.psIdNat,
    required this.professionnelDeSanteTracesById,
  });
}

class _ProcessFetchProfessionnelDeSanteTracesByIdErrorAction {
  final String psIdNat;

  _ProcessFetchProfessionnelDeSanteTracesByIdErrorAction({required this.psIdNat});
}
