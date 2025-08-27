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
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:redux/redux.dart';

class HistoriqueActivitesMesProfessionnelsTracesViewModel extends Equatable {
  final ActivityHistoryStatus status;
  final AllPurposesStatus paginationStatus;
  final List<HistoriqueActivitesDisplayModel> displayModels;
  final bool hasNextPage;
  final void Function() load;
  final void Function() loadNextPage;
  final void Function() resetTraces;

  const HistoriqueActivitesMesProfessionnelsTracesViewModel._internal({
    required this.status,
    required this.paginationStatus,
    required this.displayModels,
    required this.hasNextPage,
    required this.load,
    required this.loadNextPage,
    required this.resetTraces,
  });

  factory HistoriqueActivitesMesProfessionnelsTracesViewModel.from(Store<EnsState> store) {
    var activityHistoryStatus = ActivityHistoryStatus.LOADING;
    List<HistoriqueActivitesDisplayModel> displayModels = [];

    final professionnelsDeSanteTracesState = store.state.historiqueActivitesState.professionnelsDeSanteTracesState;
    if (professionnelsDeSanteTracesState.status.isSuccess()) {
      activityHistoryStatus = ActivityHistoryStatus.SUCCESS;

      final traces = professionnelsDeSanteTracesState.traces;
      if (traces.isEmpty) {
        if (professionnelsDeSanteTracesState.currentTracesHasFilter) {
          activityHistoryStatus = ActivityHistoryStatus.FILTER_EMPTY;
        } else {
          activityHistoryStatus = ActivityHistoryStatus.EMPTY;
        }
      } else {
        displayModels = HistoriqueActivitesHelper.buildHistoriqueActivitesDisplayModels(traces);
      }
    } else if (professionnelsDeSanteTracesState.status.isError()) {
      activityHistoryStatus = ActivityHistoryStatus.ERROR;
    }

    return HistoriqueActivitesMesProfessionnelsTracesViewModel._internal(
      status: activityHistoryStatus,
      paginationStatus: professionnelsDeSanteTracesState.paginationStatus,
      displayModels: displayModels,
      hasNextPage: professionnelsDeSanteTracesState.hasNextPage,
      load: () => store.dispatch(FetchProfessionnelsDeSanteTracesAction()),
      loadNextPage: () => store.dispatch(FetchProfessionnelsDeSanteTracesNextPageAction()),
      resetTraces: () {
        store.dispatch(ResetHistoriqueActivitiesFilterAction());
        store.dispatch(FetchProfessionnelsDeSanteTracesAction());
      },
    );
  }

  @override
  List<Object?> get props => [status, paginationStatus, displayModels, hasNextPage];
}
