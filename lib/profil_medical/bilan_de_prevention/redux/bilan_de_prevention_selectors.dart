/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'bilan_de_prevention_redux.dart';

class BilanDePreventionSelectors {
  const BilanDePreventionSelectors._();

  static bool needReloadBilanDePreventionData(
    EnsState state,
    FetchBilanDePreventionQuestionnairesAction action,
  ) {
    final bilanDePreventionStatus = state.bilanDePreventionState.status;
    return action.force == true ||
        (bilanDePreventionStatus != BilanDePreventionStatus.SUCCESS &&
            bilanDePreventionStatus != BilanDePreventionStatus.EMPTY);
  }
}
