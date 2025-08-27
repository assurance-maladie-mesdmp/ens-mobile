/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/parameters/historique_activites/domain/trace.dart';

class HistoriqueActivitesSelector {
  static List<Trace> getSortedTracesFromPs(EnsState state, String psIdNat) {
    final currentPsTracesState = state.historiqueActivitesState.professionnelDeSanteTracesByIdStates[psIdNat];
    if (currentPsTracesState != null && currentPsTracesState.status.isSuccess()) {
      final psTraces = currentPsTracesState.psTraces;
      final sortedPsTraces = psTraces.sorted((traceA, traceB) => traceA.date.compareTo(traceB.date)).reversed.toList();
      return sortedPsTraces;
    } else {
      return [];
    }
  }
}
