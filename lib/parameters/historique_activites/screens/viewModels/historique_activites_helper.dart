/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:fr_cnamts_ens/parameters/historique_activites/domain/trace.dart';
import 'package:fr_cnamts_ens/parameters/historique_activites/redux/historique_activites_redux.dart';
import 'package:fr_cnamts_ens/parameters/historique_activites/screens/viewModels/historique_activites_display_model.dart';

class HistoriqueActivitesHelper {
  static List<Trace> filterTraces(List<Trace> traces, DateRangeFilter? dateFilter) {
    if (dateFilter != null) {
      return _filterByDate(traces, dateFilter);
    } else {
      return traces;
    }
  }

  static List<Trace> _filterByDate(List<Trace> traces, DateRangeFilter dateFilter) {
    return traces
        .where((trace) => trace.date.isAfter(dateFilter.startDate) && trace.date.isBefore(dateFilter.endDate))
        .toList();
  }

  static List<HistoriqueActivitesDisplayModel> buildHistoriqueActivitesDisplayModels(List<Trace> traces) {
    final List<HistoriqueActivitesDisplayModel> displayModels = [];
    final tracesParMois = HistoriqueActivitesHelper.getMonth(traces);
    tracesParMois.forEach((date, monthTraces) {
      displayModels.add(HistoriqueActivitesDateHeaderDisplayModel.fromDate(date));
      for (final trace in monthTraces) {
        displayModels.add(HistoriqueActivitesTraceDisplayModel.fromTrace(trace));
      }
    });
    return displayModels;
  }

  static Map<DateTime, List<Trace>> getMonth(List<Trace> traces) {
    final tracesReversed = traces.sortedBy((a) => a.date).reversed;
    final Map<DateTime, List<Trace>> tracesParMois = {};
    List<Trace> currentTraces = [];
    DateTime? monthYear;

    for (final trace in tracesReversed) {
      final currentTraceMonthYear = DateTime(trace.date.year, trace.date.month);

      if (monthYear == null) {
        monthYear = DateTime(trace.date.year, trace.date.month);
      } else if (currentTraceMonthYear != monthYear) {
        _addEntriesToMap(monthYear, currentTraces, tracesParMois);

        monthYear = DateTime(trace.date.year, trace.date.month);
        currentTraces = [];
      }

      currentTraces.add(trace);

      if (trace == tracesReversed.last) {
        _addEntriesToMap(monthYear, currentTraces, tracesParMois);
      }
    }

    return tracesParMois;
  }

  static void _addEntriesToMap(
    DateTime monthYear,
    List<Trace> currentTraces,
    Map<DateTime, List<Trace>> tracesParMois,
  ) {
    final currentTracesParMois = <DateTime, List<Trace>>{monthYear: currentTraces};
    tracesParMois.addEntries(currentTracesParMois.entries);
  }
}
