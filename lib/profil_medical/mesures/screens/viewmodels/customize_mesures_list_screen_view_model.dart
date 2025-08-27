/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_type.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/redux/mesures_redux.dart';
import 'package:redux/redux.dart';

class CustomizeMesuresListScreenViewModel extends Equatable {
  final Map<EnsMesureType, CustomizeMesuresListItemDisplayModel> initialMesuresState;
  final UpdateMesuresTilesCustomizationStatus status;
  final void Function(Map<EnsMesureType, CustomizeMesuresListItemDisplayModel>) updateMesuresTilesCustomization;

  const CustomizeMesuresListScreenViewModel._internal({
    required this.initialMesuresState,
    required this.status,
    required this.updateMesuresTilesCustomization,
  });

  factory CustomizeMesuresListScreenViewModel(Store<EnsState> store) {
    UpdateMesuresTilesCustomizationStatus status = UpdateMesuresTilesCustomizationStatus.LOADING;
    final editMesuresTilesCustomizationStatus =
        store.state.mesuresState.mesuresTilesCustomizationState.editMesuresTilesCustomizationStatus;
    final lastMesureListState = store.state.mesuresState.lastMesuresState;

    final Map<EnsMesureType, CustomizeMesuresListItemDisplayModel> initialMesuresState = {};

    if (editMesuresTilesCustomizationStatus.isNotLoading() && lastMesureListState.status.isSuccess()) {
      final visibleMesure = MesuresSelectors.getMesuresMarkedAsVisibleByUser(store.state);
      for (final mesureType in lastMesureListState.lastMesures) {
        initialMesuresState[mesureType] = CustomizeMesuresListItemDisplayModel(
          type: mesureType,
          label: mesureType.label,
          visibilityStatus: visibleMesure.contains(mesureType),
        );
      }
      status = UpdateMesuresTilesCustomizationStatus.SUCCESS;
    }
    return CustomizeMesuresListScreenViewModel._internal(
      initialMesuresState: initialMesuresState,
      status: status,
      updateMesuresTilesCustomization: (Map<EnsMesureType, CustomizeMesuresListItemDisplayModel> mesuresStatus) {
        store.dispatch(
          UpdateMesuresTilesCustomizationAction(
            mesuresStatus.map((mesureType, displayModel) => MapEntry(mesureType, displayModel.visibilityStatus)),
          ),
        );
      },
    );
  }

  @override
  List<Object?> get props => [initialMesuresState, status];
}

class CustomizeMesuresListItemDisplayModel extends Equatable {
  final EnsMesureType type;
  final String label;
  final bool visibilityStatus;

  const CustomizeMesuresListItemDisplayModel({required this.type, required this.label, required this.visibilityStatus});

  CustomizeMesuresListItemDisplayModel clone({bool? visibilityStatus}) => CustomizeMesuresListItemDisplayModel(
        type: type,
        label: label,
        visibilityStatus: visibilityStatus ?? this.visibilityStatus,
      );

  @override
  List<Object?> get props => [type, label, visibilityStatus];
}

enum UpdateMesuresTilesCustomizationStatus { LOADING, SUCCESS }
