/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/parameters/historique_activites/redux/historique_activites_redux.dart';
import 'package:fr_cnamts_ens/parameters/historique_activites/screens/widget/historique_activites_tab_button.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:redux/redux.dart';

class HistoriqueActivitesScreenViewModel extends Equatable {
  final int activeFilterCount;
  final ProfilType profilType;
  final void Function(HistoriqueActivitesTab selectedTab) refresh;

  const HistoriqueActivitesScreenViewModel._internal({
    required this.activeFilterCount,
    required this.profilType,
    required this.refresh,
  });

  factory HistoriqueActivitesScreenViewModel.from(Store<EnsState> store) {
    final dateRangeFilter = store.state.historiqueActivitesState.dateRangeFilter;
    final profilType = ProfilsUtils.getCurrentProfilType(store.state);

    return HistoriqueActivitesScreenViewModel._internal(
      activeFilterCount: dateRangeFilter != null ? 1 : 0,
      profilType: profilType,
      refresh: (selectedTab) {
        switch (selectedTab) {
          case HistoriqueActivitesTab.MES_PROFESSIONNELS:
            store.dispatch(FetchProfessionnelsDeSanteTracesAction(force: true));
          case HistoriqueActivitesTab.MES_ACTIVITES:
            store.dispatch(FetchMesActivitesTracesAction(force: true));
          case HistoriqueActivitesTab.MES_SERVICES_SYNCHRONISES:
            store.dispatch(FetchServicesSynchronisesTracesAction(force: true));
        }
      },
    );
  }

  @override
  List<Object?> get props => [activeFilterCount, profilType];
}
