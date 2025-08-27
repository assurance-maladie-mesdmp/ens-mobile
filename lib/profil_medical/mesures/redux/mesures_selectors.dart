/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'mesures_redux.dart';

class MesuresSelectors {
  const MesuresSelectors._();

  static List<EnsMesureType> getMesuresMarkedAsVisibleByUser(EnsState state) {
    final mesuresTilesCustomizationListState =
        state.mesuresState.mesuresTilesCustomizationState.mesuresTilesCustomizationListState;
    if (mesuresTilesCustomizationListState.status.isNotSuccess()) {
      return [];
    }
    return mesuresTilesCustomizationListState.mesuresVisiblesInCustomList;
  }

  static List<EnsMesureType> mesuresTypesSansHistorique(List<EnsMesureType> mesureTypes, EnsState state) {
    return mesureTypes.where((type) {
      final mesure = state.mesuresState.mesureStatesByType[type];
      return mesure == null ||
          (mesure.mesureHistoryState.status.isNotSuccess() && mesure.mesureMetadataState.status.isNotSuccess());
    }).toList();
  }
}
