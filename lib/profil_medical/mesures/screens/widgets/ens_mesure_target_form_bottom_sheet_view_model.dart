/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_metadata.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_target.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_type.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/redux/mesures_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/screens/widgets/ens_mesure_form_bottom_sheet_view_model.dart';
import 'package:fr_cnamts_ens/utils/error_helper.dart';
import 'package:redux/redux.dart';

class EnsMesureTargetFormBottomSheetViewModel extends Equatable {
  final String unit;
  final EnsMesureType mesureType;
  final List<EnsMesureMetadataMetric> mesureMetadataMetrics;
  final bool isSendingData;
  final bool shouldPop;
  final MetadataStatus metadataStatus;
  final String infoText;
  final String? errorText;
  final EnsMesureTarget? currentTarget;
  final void Function(EnsMesureType type, double value) addTarget;
  final void Function(double value) updateTarget;

  const EnsMesureTargetFormBottomSheetViewModel._internal({
    required this.unit,
    required this.mesureType,
    required this.mesureMetadataMetrics,
    required this.isSendingData,
    required this.shouldPop,
    required this.metadataStatus,
    required this.infoText,
    this.currentTarget,
    this.errorText,
    required this.addTarget,
    required this.updateTarget,
  });

  factory EnsMesureTargetFormBottomSheetViewModel(Store<EnsState> store, EnsMesureType mesureType) {
    String unit = '';
    List<EnsMesureMetadataMetric> mesureMetadataMetrics = [];
    bool isSendingData = false;
    bool shouldPop = false;
    MetadataStatus metadataStatus = MetadataStatus.LOADING;
    String? errorText;

    final mesureState = store.state.mesuresState.mesureStatesByType[mesureType];
    final mesureFormStatus = store.state.mesuresState.mesureFormStatus;
    final mesureMetadataState = mesureState?.mesureMetadataState;
    final mesureMetadata = mesureState?.mesureMetadataState.mesureMetadata;
    final targetedValue = mesureState?.mesure.targetedValue;

    if (mesureMetadataState?.status.isSuccess() == true && mesureMetadata != null) {
      metadataStatus = MetadataStatus.SUCCESS;
      unit = mesureMetadata.metrics[0].unit;
      mesureMetadataMetrics = mesureMetadata.metrics;
    } else if (mesureMetadataState?.status.isError() == true) {
      metadataStatus = MetadataStatus.ERROR;
    }

    isSendingData = mesureFormStatus.isLoading();
    if (mesureFormStatus.isError()) {
      errorText = GENERIC_ERROR_MESSAGE;
    } else if (mesureFormStatus.isSuccess()) {
      shouldPop = true;
    }

    return EnsMesureTargetFormBottomSheetViewModel._internal(
      mesureMetadataMetrics: mesureMetadataMetrics,
      isSendingData: isSendingData,
      shouldPop: shouldPop,
      unit: unit,
      mesureType: mesureType,
      metadataStatus: metadataStatus,
      infoText: _getInfoTextForType(mesureType),
      errorText: errorText,
      currentTarget: targetedValue,
      addTarget: (EnsMesureType type, double value) {
        store.dispatch(AddMesureTargetAction(type, value));
      },
      updateTarget: (double value) {
        if (targetedValue != null) {
          store.dispatch(UpdateMesureTargetAction(targetedValue.id, value));
        }
      },
    );
  }

  static String _getInfoTextForType(EnsMesureType mesureType) {
    switch (mesureType) {
      case EnsMesureType.HEMOGLOBINE_GLYQUEE:
        return 'En concertation avec mon médecin, je peux fixer un objectif concernant ma mesure d’hémoglobine glyquée (HbA1c)';
      default:
        return '';
    }
  }

  @override
  List<Object?> get props => [
        unit,
        mesureType,
        mesureMetadataMetrics,
        isSendingData,
        shouldPop,
        metadataStatus,
        infoText,
        errorText,
        currentTarget,
      ];
}
