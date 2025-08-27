/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'mesures_redux.dart';

class MesuresState extends Equatable {
  final LastMesuresState lastMesuresState;
  final Map<EnsMesureType, EnsMesureState> mesureStatesByType;
  final MesuresTilesCustomizationState mesuresTilesCustomizationState;
  final AllPurposesStatus mesureFormStatus;
  final AllPurposesStatus mesuresDataForExtractionStatus;

  const MesuresState({
    this.lastMesuresState = const LastMesuresState(),
    this.mesureStatesByType = const {},
    this.mesuresTilesCustomizationState = const MesuresTilesCustomizationState.init(),
    this.mesureFormStatus = AllPurposesStatus.NOT_LOADED,
    this.mesuresDataForExtractionStatus = AllPurposesStatus.NOT_LOADED,
  });

  MesuresState clone({
    LastMesuresState? lastMesuresState,
    Map<EnsMesureType, EnsMesureState>? mesureStatesByType,
    AllPurposesStatus? mesureFormStatus,
    MesuresTilesCustomizationState? mesuresTilesCustomizationState,
    AllPurposesStatus? mesuresDataForExtractionStatus,
  }) {
    return MesuresState(
      lastMesuresState: lastMesuresState ?? this.lastMesuresState,
      mesureStatesByType: mesureStatesByType ?? this.mesureStatesByType,
      mesureFormStatus: mesureFormStatus ?? this.mesureFormStatus,
      mesuresTilesCustomizationState: mesuresTilesCustomizationState ?? this.mesuresTilesCustomizationState,
      mesuresDataForExtractionStatus: mesuresDataForExtractionStatus ?? this.mesuresDataForExtractionStatus,
    );
  }

  @override
  List<Object?> get props => [
        lastMesuresState,
        mesureStatesByType,
        mesureFormStatus,
        mesuresTilesCustomizationState,
        mesuresDataForExtractionStatus,
      ];
}

class LastMesuresState extends Equatable {
  final AllPurposesStatus status;
  final List<EnsMesureType> lastMesures;

  const LastMesuresState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.lastMesures = const [],
  });

  LastMesuresState clone({
    AllPurposesStatus? status,
    List<EnsMesureType>? lastMesures,
  }) {
    return LastMesuresState(
      status: status ?? this.status,
      lastMesures: lastMesures ?? this.lastMesures,
    );
  }

  @override
  List<Object?> get props => [status, lastMesures];
}

class EnsMesureState extends Equatable {
  final EnsMesure mesure;
  final EnsMesureMetadataState mesureMetadataState;
  final EnsMesureHistoryState mesureHistoryState;

  const EnsMesureState({
    required this.mesure,
    this.mesureMetadataState = const EnsMesureMetadataState(),
    this.mesureHistoryState = const EnsMesureHistoryState(),
  });

  EnsMesureState clone({
    EnsMesure? mesure,
    EnsMesureMetadataState? mesureMetadataState,
    EnsMesureHistoryState? mesureHistoryState,
  }) {
    return EnsMesureState(
      mesure: mesure ?? this.mesure,
      mesureMetadataState: mesureMetadataState ?? this.mesureMetadataState,
      mesureHistoryState: mesureHistoryState ?? this.mesureHistoryState,
    );
  }

  @override
  List<Object?> get props => [
        mesure,
        mesureMetadataState,
        mesureHistoryState,
      ];
}

class EnsMesureMetadataState extends Equatable {
  final AllPurposesStatus status;
  final EnsMesureMetadata? mesureMetadata;

  const EnsMesureMetadataState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.mesureMetadata,
  });

  bool get isSuccessWithData => status.isSuccess() && mesureMetadata != null;

  bool get isErrorOrSuccessWithoutData => status.isError() || (status.isSuccess() && mesureMetadata == null);

  EnsMesureMetadataState clone({
    AllPurposesStatus? status,
    Optional<EnsMesureMetadata>? mesureMetadataOptional,
  }) {
    return EnsMesureMetadataState(
      status: status ?? this.status,
      mesureMetadata: mesureMetadataOptional != null ? mesureMetadataOptional.orElseNullable(null) : mesureMetadata,
    );
  }

  @override
  List<Object?> get props => [status, mesureMetadata];
}

class EnsMesureHistoryState extends Equatable {
  final AllPurposesStatus status;
  final List<EnsMesureValue> mesureHistory;

  const EnsMesureHistoryState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.mesureHistory = const [],
  });

  EnsMesureHistoryState clone({
    AllPurposesStatus? status,
    List<EnsMesureValue>? mesureHistory,
  }) {
    return EnsMesureHistoryState(
      status: status ?? this.status,
      mesureHistory: mesureHistory ?? this.mesureHistory,
    );
  }

  @override
  List<Object?> get props => [status, mesureHistory];
}

class MesuresTilesCustomizationState extends Equatable {
  final AllPurposesStatus editMesuresTilesCustomizationStatus;
  final MesuresTilesCustomizationListState mesuresTilesCustomizationListState;

  const MesuresTilesCustomizationState({
    required this.editMesuresTilesCustomizationStatus,
    required this.mesuresTilesCustomizationListState,
  });

  const MesuresTilesCustomizationState.init()
      : editMesuresTilesCustomizationStatus = AllPurposesStatus.NOT_LOADED,
        mesuresTilesCustomizationListState = const MesuresTilesCustomizationListState();

  MesuresTilesCustomizationState clone({
    AllPurposesStatus? editMesuresTilesCustomizationStatus,
    MesuresTilesCustomizationListState? mesuresTilesCustomizationListState,
  }) =>
      MesuresTilesCustomizationState(
        editMesuresTilesCustomizationStatus:
            editMesuresTilesCustomizationStatus ?? this.editMesuresTilesCustomizationStatus,
        mesuresTilesCustomizationListState:
            mesuresTilesCustomizationListState ?? this.mesuresTilesCustomizationListState,
      );

  @override
  List<Object?> get props => [editMesuresTilesCustomizationStatus, mesuresTilesCustomizationListState];
}

class MesuresTilesCustomizationListState extends Equatable {
  final AllPurposesStatus status;
  final List<EnsMesureType> mesuresVisiblesInCustomList;

  const MesuresTilesCustomizationListState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.mesuresVisiblesInCustomList = const [],
  });

  MesuresTilesCustomizationListState clone({
    AllPurposesStatus? status,
    List<EnsMesureType>? mesuresVisiblesInCustomList,
  }) {
    return MesuresTilesCustomizationListState(
      status: status ?? this.status,
      mesuresVisiblesInCustomList: mesuresVisiblesInCustomList ?? this.mesuresVisiblesInCustomList,
    );
  }

  @override
  List<Object?> get props => [status, mesuresVisiblesInCustomList];
}
