/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/parameters/historique_activites/redux/historique_activites_redux.dart';
import 'package:fr_cnamts_ens/parameters/historique_activites/screens/viewModels/historique_activites_display_model.dart';
import 'package:fr_cnamts_ens/parameters/historique_activites/screens/viewModels/historique_activites_helper.dart';
import 'package:fr_cnamts_ens/parameters/historique_activites/screens/viewModels/historique_activites_status.dart';
import 'package:redux/redux.dart';

class HistoriqueActivitesMesServicesSynchronisesTracesViewModel extends Equatable {
  final ActivityHistoryStatus status;
  final List<HistoriqueActivitesDisplayModel> displayModels;
  final void Function() load;
  final void Function() resetTraces;

  const HistoriqueActivitesMesServicesSynchronisesTracesViewModel._internal({
    required this.status,
    required this.displayModels,
    required this.load,
    required this.resetTraces,
  });

  factory HistoriqueActivitesMesServicesSynchronisesTracesViewModel.from(Store<EnsState> store) {
    var activityHistoryStatus = ActivityHistoryStatus.LOADING;
    List<HistoriqueActivitesDisplayModel> displayModels = [];

    final historiqueActivitesState = store.state.historiqueActivitesState;
    final servicesSynchronisesTracesState = historiqueActivitesState.servicesSynchronisesTracesState;
    if (servicesSynchronisesTracesState.status.isSuccess()) {
      activityHistoryStatus = ActivityHistoryStatus.SUCCESS;
      final traces = servicesSynchronisesTracesState.traces;

      if (traces.isEmpty) {
        activityHistoryStatus = ActivityHistoryStatus.EMPTY;
      } else {
        final dateRangeFilter = historiqueActivitesState.dateRangeFilter;
        final filterTraces = HistoriqueActivitesHelper.filterTraces(traces, dateRangeFilter);
        if (filterTraces.isEmpty) {
          activityHistoryStatus = ActivityHistoryStatus.FILTER_EMPTY;
        } else {
          displayModels = HistoriqueActivitesHelper.buildHistoriqueActivitesDisplayModels(filterTraces);
        }
      }
    } else if (servicesSynchronisesTracesState.status.isError()) {
      activityHistoryStatus = ActivityHistoryStatus.ERROR;
    }

    return HistoriqueActivitesMesServicesSynchronisesTracesViewModel._internal(
      status: activityHistoryStatus,
      displayModels: displayModels,
      load: () => store.dispatch(FetchServicesSynchronisesTracesAction()),
      resetTraces: () => store.dispatch(ResetHistoriqueActivitiesFilterAction()),
    );
  }

  @override
  List<Object?> get props => [status, displayModels];
}
