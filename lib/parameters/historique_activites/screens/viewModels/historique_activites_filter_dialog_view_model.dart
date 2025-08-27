/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/parameters/historique_activites/redux/historique_activites_redux.dart';
import 'package:fr_cnamts_ens/parameters/historique_activites/screens/widget/historique_activites_tab_button.dart';
import 'package:redux/redux.dart';

class HistoriqueActivitesFilterDialogViewModel extends Equatable {
  final DateTime? startDate;
  final DateTime? endDate;
  final void Function(DateRangeFilter? dateFilter) updateFilters;
  final void Function() reloadTraces;

  const HistoriqueActivitesFilterDialogViewModel._internal({
    this.startDate,
    this.endDate,
    required this.updateFilters,
    required this.reloadTraces,
  });

  factory HistoriqueActivitesFilterDialogViewModel.from(
    Store<EnsState> store, {
    required HistoriqueActivitesTab selectedTab,
  }) {
    final dateRangeFilter = store.state.historiqueActivitesState.dateRangeFilter;

    return HistoriqueActivitesFilterDialogViewModel._internal(
      startDate: dateRangeFilter?.startDate,
      endDate: dateRangeFilter?.endDate,
      updateFilters: (dateFilter) {
        store.dispatch(UpdateHistoriqueActivitiesFilterAction(dateRangeFilter: dateFilter));
      },
      reloadTraces: () {
        if (selectedTab == HistoriqueActivitesTab.MES_PROFESSIONNELS) {
          store.dispatch(FetchProfessionnelsDeSanteTracesAction());
        }
      },
    );
  }

  @override
  List<Object?> get props => [startDate, endDate];
}
