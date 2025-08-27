/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'mesures_redux.dart';

class FetchLastMesuresAction {
  final bool force;

  const FetchLastMesuresAction({this.force = false});
}

class ProcessFetchedLastMesuresAction {
  final RequestResult<List<EnsMesure>> result;

  ProcessFetchedLastMesuresAction(this.result);
}

class ProcessFetchedMesureCustomizationStatus {
  final List<EnsMesureType> result;

  ProcessFetchedMesureCustomizationStatus(this.result);
}

class FetchMesureDataAction {
  final EnsMesureType mesureType;

  FetchMesureDataAction(this.mesureType);
}

class ProcessFetchedMesureDataAction {
  final EnsMesureType mesureType;
  final RequestResult<EnsMesureData> result;

  ProcessFetchedMesureDataAction(this.mesureType, this.result);
}

class InitializeMesureFormAction {
  final EnsMesureType mesureType;

  InitializeMesureFormAction(this.mesureType);
}

class ProcessFetchedMetadataResultAction {
  final EnsMesureType mesureType;
  final RequestResult<EnsMesureMetadata> result;

  ProcessFetchedMetadataResultAction(this.mesureType, this.result);
}

class AddMesureAction {
  final EnsMesureInput input;

  AddMesureAction(this.input);
}

class AddOrUpdateMesureSuccessAction {
  final EnsMesureType type;
  final EnsMesureValue? newValue;

  AddOrUpdateMesureSuccessAction(this.type, this.newValue);
}

class AddOrUpdateMesureErrorAction {}

class UpdateMesureAction {
  final EnsMesureInput input;

  UpdateMesureAction(this.input);
}

class DeleteMesureAction {
  final String mesureId;
  final EnsMesureType mesureType;

  DeleteMesureAction(this.mesureId, this.mesureType);
}

class ProcessDeletedMesureAction {
  final RequestResult<String> result;
  final EnsMesureType mesureType;

  ProcessDeletedMesureAction(this.result, this.mesureType);
}

class UpdateMesuresTilesCustomizationAction {
  final Map<EnsMesureType, bool> visibilityStatus;

  UpdateMesuresTilesCustomizationAction(this.visibilityStatus);
}

class ProcessUpdatedTilesCustomizationAction {
  final RequestResult<Map<EnsMesureType, bool>> result;

  ProcessUpdatedTilesCustomizationAction(this.result);
}

class AddMesureTargetAction {
  final EnsMesureType type;
  final double value;

  AddMesureTargetAction(this.type, this.value);
}

class UpdateMesureTargetAction {
  final String targetId;
  final double value;

  UpdateMesureTargetAction(this.targetId, this.value);
}

class ProcessAddedOrUpdatedMesureTargetAction {
  final EnsMesureTarget addedTarget;

  ProcessAddedOrUpdatedMesureTargetAction(this.addedTarget);
}

class DeleteMesureTargetAction {
  final String targetId;

  DeleteMesureTargetAction(this.targetId);
}

class ProcessDeletedTargetAction {
  final String targetId;

  ProcessDeletedTargetAction(this.targetId);
}

class FetchMesuresDataForExtractAction {
  final List<EnsMesureType> mesureTypes;

  FetchMesuresDataForExtractAction(this.mesureTypes);
}

class ProcessFetchedMesureDataForExtractSuccessAction {
  final List<EnsMesureType> mesuresTypes;
  final List<EnsMesureData> mesuresDatas;

  ProcessFetchedMesureDataForExtractSuccessAction({required this.mesuresTypes, required this.mesuresDatas});
}

class ProcessFetchedMesureDataForExtractErrorAction {
  final List<EnsMesureType> mesuresTypes;

  ProcessFetchedMesureDataForExtractErrorAction({required this.mesuresTypes});
}
