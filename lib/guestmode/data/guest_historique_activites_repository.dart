/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/parameters/historique_activites/data/historique_activites_repository.dart';
import 'package:fr_cnamts_ens/parameters/historique_activites/domain/mes_activites_traces.dart';
import 'package:fr_cnamts_ens/parameters/historique_activites/domain/professionnel_de_sante_traces_by_id.dart';
import 'package:fr_cnamts_ens/parameters/historique_activites/domain/professionnels_de_sante_traces.dart';
import 'package:fr_cnamts_ens/parameters/historique_activites/domain/services_synchronises_traces.dart';
import 'package:fr_cnamts_ens/parameters/historique_activites/domain/trace.dart';

class GuestHistoriqueActivitesRepository extends IHistoriqueActivitesRepository {
  final psTraces = [
    Trace(
      date: DateTime.parse('2023-03-28T10:53:22.435+02:00'),
      author: const TraceAuthor(name: 'Simone Beauregard', type: EnsHistoryTraceType.PS),
      label: 'a modifié une valeur de la mesure de santé Poids',
    ),
    Trace(
      date: DateTime.parse('2024-03-28T10:39:10.909+02:00'),
      author: const TraceAuthor(name: 'Michel Dupont', type: EnsHistoryTraceType.PS),
      label: 'a modifié Exemple d\'activité',
    ),
    Trace(
      date: DateTime.parse('2025-01-20T10:39:10.909+02:00'),
      author: const TraceAuthor(name: 'Michel Dupont', type: EnsHistoryTraceType.PS),
      label: 'a modifié Exemple d\'activité',
    ),
    Trace(
      date: DateTime.parse('2022-03-30T10:39:10.909+02:00'),
      author: const TraceAuthor(name: 'Michel Dupont', type: EnsHistoryTraceType.PS),
      label: 'a modifié Exemple d\'activité',
    ),
    Trace(
      date: DateTime.parse('2022-03-30T11:39:10.909+02:00'),
      author: const TraceAuthor(name: 'Michel Dupont', type: EnsHistoryTraceType.PS),
      label: 'a modifié Exemple d\'activité',
    ),
  ];

  @override
  Future<RequestResult<ProfessionnelsDeSanteTraces>> getProfessionnelsDeSanteTraces({
    required String patientId,
    required int page,
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    return RequestResultSuccess(
      ProfessionnelsDeSanteTraces(
        traces: psTraces,
        currentPage: 1,
        hasNextPage: false,
      ),
    );
  }

  @override
  Future<RequestResult<MesActivitesTraces>> getMesActivitesTraces(String patientId) async {
    return RequestResultSuccess(
      MesActivitesTraces(
        traces: [
          Trace(
            date: DateTime.parse('2022-03-28T10:53:22.435+02:00'),
            author: const TraceAuthor(name: 'VIRGINIE CAPANELLI', type: EnsHistoryTraceType.USER),
            label: 'a modifié une valeur de la mesure de santé Poids',
          ),
          Trace(
            date: DateTime.parse('2022-03-28T10:39:10.909+02:00'),
            author: const TraceAuthor(name: 'VIRGINIE CAPANELLI', type: EnsHistoryTraceType.USER),
            label: 'a supprimé le document docPdf',
          ),
          Trace(
            date: DateTime.parse('2022-03-28T10:39:10.909+02:00'),
            author: const TraceAuthor(name: 'SUPPORT', type: EnsHistoryTraceType.SUPPORT),
            label: 'a supprimé le document radio.pdf',
          ),
          Trace(
            date: DateTime.parse('2022-03-28T10:39:10.909+02:00'),
            author: const TraceAuthor(name: 'SYSTÈME', type: EnsHistoryTraceType.SYSTEME),
            label: 'a mis à jour vos vaccins',
          ),
        ],
      ),
    );
  }

  @override
  Future<RequestResult<ServicesSynchronisesTraces>> getServicesSynchronisesTraces(String patientId) async {
    return RequestResultSuccess(const ServicesSynchronisesTraces(traces: []));
  }

  @override
  Future<RequestResult<ProfessionnelDeSanteTracesById>> getProfessionnelDeSanteTracesById({
    required String patientId,
    required String psIdNat,
  }) async {
    return RequestResultSuccess(ProfessionnelDeSanteTracesById(traces: psTraces));
  }
}
