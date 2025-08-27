/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';
import 'package:fr_cnamts_ens/developpeur_outils/redux/developpeur_outils_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:redux/redux.dart';

class HistoriqueAnalyticsScreenViewModel extends Equatable {
  final void Function() clearHistorique;
  final List<TagHistory> historique;

  const HistoriqueAnalyticsScreenViewModel._({required this.clearHistorique, required this.historique});

  factory HistoriqueAnalyticsScreenViewModel.from(Store<EnsInitialState> store) {
    return HistoriqueAnalyticsScreenViewModel._(
      clearHistorique: () {
        store.dispatch(ClearHistoriqueAnalyticsAction());
      },
      historique: store.state.developpeurOutilsState.historiqueAnalytics.reversed.toList(growable: false),
    );
  }

  @override
  List<Object?> get props => [historique];
}
