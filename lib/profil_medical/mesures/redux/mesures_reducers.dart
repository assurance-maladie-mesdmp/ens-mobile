/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'mesures_redux.dart';

class MesuresReducers {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, ProcessFetchedLastMesuresAction>(MesuresReducers._onProcessFetchedLastMesuresAction)
            .call,
        TypedReducer<EnsState, ProcessFetchedMesureDataAction>(MesuresReducers._onProcessFetchedMesureDataAction).call,
        TypedReducer<EnsState, ProcessFetchedMetadataResultAction>(
          MesuresReducers._onProcessFetchedMetadataResultAction,
        ).call,
        TypedReducer<EnsState, AddMesureAction>(MesuresReducers._onAddMesureAction).call,
        TypedReducer<EnsState, UpdateMesureAction>(MesuresReducers._onUpdateMesureAction).call,
        TypedReducer<EnsState, AddOrUpdateMesureSuccessAction>(MesuresReducers._onAddOrUpdateMesureSuccessAction).call,
        TypedReducer<EnsState, AddOrUpdateMesureErrorAction>(MesuresReducers._onAddOrUpdateMesureErrorAction).call,
        TypedReducer<EnsState, ProcessDeletedMesureAction>(MesuresReducers._onProcessDeletedMesureAction).call,
        TypedReducer<EnsState, UpdateMesuresTilesCustomizationAction>(
          MesuresReducers._onUpdateMesuresTilesCustomizationAction,
        ).call,
        TypedReducer<EnsState, ProcessUpdatedTilesCustomizationAction>(
          MesuresReducers._onProcessUpdatedTilesCustomizationAction,
        ).call,
        TypedReducer<EnsState, AddMesureTargetAction>(MesuresReducers._onAddMesureTargetAction).call,
        TypedReducer<EnsState, ProcessAddedOrUpdatedMesureTargetAction>(
          MesuresReducers._onProcessAddedOrUpdatedMesureTargetAction,
        ).call,
        TypedReducer<EnsState, UpdateMesureTargetAction>(MesuresReducers._onUpdateMesureTargetAction).call,
        TypedReducer<EnsState, ProcessDeletedTargetAction>(MesuresReducers._onProcessDeletedTargetAction).call,
        TypedReducer<EnsState, ProcessFetchedMesureCustomizationStatus>(
          MesuresReducers._onProcessFetchedMesureCustomizationStatus,
        ).call,
        TypedReducer<EnsState, FetchLastMesuresAction>(MesuresReducers._onFetchLastMesuresAction).call,
        TypedReducer<EnsState, FetchMesuresDataForExtractAction>(MesuresReducers._onFetchMesuresDataForExtractAction)
            .call,
        TypedReducer<EnsState, ProcessFetchedMesureDataForExtractSuccessAction>(
          MesuresReducers._onProcessFetchedMesureDataForExtractSuccessAction,
        ).call,
        TypedReducer<EnsState, ProcessFetchedMesureDataForExtractErrorAction>(
          MesuresReducers._onProcessFetchedMesureDataForExtractErrorAction,
        ).call,
      ];

  static EnsState _onProcessFetchedLastMesuresAction(EnsState state, ProcessFetchedLastMesuresAction action) {
    LastMesuresState newLastMesuresState = state.mesuresState.lastMesuresState;
    Map<EnsMesureType, EnsMesureState> newMesureStatesByType = Map.from(state.mesuresState.mesureStatesByType);

    action.result.onSuccess((successResult) {
      newLastMesuresState = newLastMesuresState.clone(
        status: AllPurposesStatus.SUCCESS,
        lastMesures: successResult.map((mesure) => mesure.type).toList(),
      );
      newMesureStatesByType = {for (final mesure in successResult) mesure.type: EnsMesureState(mesure: mesure)};
    }).onError((_) {
      newLastMesuresState = newLastMesuresState.clone(
        status: AllPurposesStatus.ERROR,
      );
    });

    return state.clone(
      mesuresState: state.mesuresState.clone(
        lastMesuresState: newLastMesuresState,
        mesureStatesByType: newMesureStatesByType,
      ),
    );
  }

  static EnsState _onProcessFetchedMesureDataAction(EnsState state, ProcessFetchedMesureDataAction action) {
    final newMesureStatesByTypeState = Map<EnsMesureType, EnsMesureState>.from(state.mesuresState.mesureStatesByType);
    final newMesureState = newMesureStatesByTypeState[action.mesureType];

    if (newMesureState != null) {
      action.result.onSuccess((successResult) {
        final newMesure = newMesureState.clone(
          mesure: newMesureState.mesure.clone(
            lastValueOptional:
                successResult.mesureHistory.isNotEmpty ? Optional.of(successResult.mesureHistory[0]) : null,
          ),
          mesureMetadataState: newMesureState.mesureMetadataState.clone(
            status: AllPurposesStatus.SUCCESS,
            mesureMetadataOptional: Optional.of(successResult.mesureMetadata),
          ),
          mesureHistoryState: newMesureState.mesureHistoryState.clone(
            status: AllPurposesStatus.SUCCESS,
            mesureHistory: successResult.mesureHistory,
          ),
        );

        newMesureStatesByTypeState[action.mesureType] = newMesure;
      }).onError((error) {
        final newMesure = newMesureState.clone(
          mesureMetadataState: newMesureState.mesureMetadataState.clone(
            status: AllPurposesStatus.ERROR,
          ),
          mesureHistoryState: newMesureState.mesureHistoryState.clone(
            status: AllPurposesStatus.ERROR,
          ),
        );

        newMesureStatesByTypeState[action.mesureType] = newMesure;
      });

      return state.clone(mesuresState: state.mesuresState.clone(mesureStatesByType: newMesureStatesByTypeState));
    }
    return state;
  }

  static EnsState _onProcessFetchedMetadataResultAction(EnsState state, ProcessFetchedMetadataResultAction action) {
    final mesure = state.mesuresState.mesureStatesByType[action.mesureType];
    if (mesure == null) {
      return state;
    }
    final newMesureStatesByType = Map<EnsMesureType, EnsMesureState>.from(state.mesuresState.mesureStatesByType);
    var newMetadataState = mesure.mesureMetadataState;
    action.result.onSuccess((metadata) {
      newMetadataState = newMetadataState.clone(
        status: AllPurposesStatus.SUCCESS,
        mesureMetadataOptional: Optional.of(metadata),
      );
    }).onError((_) {
      newMetadataState = newMetadataState.clone(
        status: AllPurposesStatus.ERROR,
      );
    });
    newMesureStatesByType[action.mesureType] = mesure.clone(mesureMetadataState: newMetadataState);
    return state.clone(mesuresState: state.mesuresState.clone(mesureStatesByType: newMesureStatesByType));
  }

  static EnsState _onAddMesureAction(EnsState state, AddMesureAction action) {
    return state.clone(
      mesuresState: state.mesuresState.clone(mesureFormStatus: AllPurposesStatus.LOADING),
    );
  }

  static EnsState _onUpdateMesureAction(EnsState state, UpdateMesureAction action) {
    return state.clone(
      mesuresState: state.mesuresState.clone(mesureFormStatus: AllPurposesStatus.LOADING),
    );
  }

  static EnsState _onAddOrUpdateMesureSuccessAction(EnsState state, AddOrUpdateMesureSuccessAction action) {
    final ensMesureState = state.mesuresState.mesureStatesByType[action.type];
    if (ensMesureState == null) {
      return state;
    }

    var newLastValue = ensMesureState.mesure.lastValue;
    var newHistoryState = ensMesureState.mesureHistoryState;

    final newValue = action.newValue;
    if (newHistoryState.status.isSuccess() && newValue != null) {
      final existingHistory = newHistoryState.mesureHistory.firstWhereOrNull((mesure) => mesure.id == newValue.id);
      var newHistory = <EnsMesureValue>[];
      final EnsMesureValue newValueWithAuteur = _getEnsMesureValueWithAuteur(state, newValue);
      if (existingHistory != null) {
        final mesureHistoryWithoutUpdatedValue = [...newHistoryState.mesureHistory]..remove(existingHistory);
        newHistory = [newValueWithAuteur, ...mesureHistoryWithoutUpdatedValue];
      } else {
        newHistory = [newValueWithAuteur, ...newHistoryState.mesureHistory];
      }
      newHistory.sort((a, b) {
        return -a.effectiveDate.compareTo(b.effectiveDate); // du plus récent au plus ancien
      });
      newLastValue = newHistory[0];
      newHistoryState = newHistoryState.clone(
        status: AllPurposesStatus.SUCCESS,
        mesureHistory: newHistory,
      );
    }

    final newEnsMesure = ensMesureState.clone(
      mesure: ensMesureState.mesure.clone(
        lastValueOptional: Optional.ofNullable(newLastValue),
      ),
      mesureHistoryState: newHistoryState,
    );

    final newMesureStatesByType = Map<EnsMesureType, EnsMesureState>.from(state.mesuresState.mesureStatesByType);
    newMesureStatesByType[action.type] = newEnsMesure;

    return state.clone(
      mesuresState: state.mesuresState.clone(
        mesureStatesByType: newMesureStatesByType,
        mesureFormStatus: AllPurposesStatus.SUCCESS,
      ),
    );
  }

  static EnsMesureValue _getEnsMesureValueWithAuteur(EnsState state, EnsMesureValue newValue) {
    final currentUser = state.userState.mainUserDataState;
    String? profileFirstName;
    String? profileLastName;
    if (currentUser.isSuccessWithData) {
      final userData = currentUser.userData!;
      profileFirstName = userData.mainFirstName;
      profileLastName = userData.lastName;
    }
    return EnsMesureValue(
      id: newValue.id,
      effectiveDate: newValue.effectiveDate,
      formattedMetricValue: newValue.formattedMetricValue,
      unit: newValue.unit,
      permissions: newValue.permissions,
      comments: newValue.comments,
      metrics: newValue.metrics,
      courbeReferenceText: newValue.courbeReferenceText,
      linkDocumentInfo: newValue.linkDocumentInfo,
      auteur: profileFirstName == null || profileLastName == null
          ? null
          : EnsMesureAuteur(profileFirstName, profileLastName),
    );
  }

  static EnsState _onAddOrUpdateMesureErrorAction(EnsState state, AddOrUpdateMesureErrorAction action) => state.clone(
        mesuresState: state.mesuresState.clone(mesureFormStatus: AllPurposesStatus.ERROR),
      );

  static EnsState _onProcessDeletedMesureAction(EnsState state, ProcessDeletedMesureAction action) {
    final ensMesureState = state.mesuresState.mesureStatesByType[action.mesureType];
    if (ensMesureState == null) {
      return state;
    }

    var newLastValue = ensMesureState.mesure.lastValue;
    var newMesureHistoryState = ensMesureState.mesureHistoryState;

    action.result.onSuccess((deletedMesureValueId) {
      if (newMesureHistoryState.status.isSuccess()) {
        final newMesureHistory = List<EnsMesureValue>.from(newMesureHistoryState.mesureHistory);
        newMesureHistory.removeWhere((mesureValue) => mesureValue.id == deletedMesureValueId);
        newLastValue = newMesureHistory.isNotEmpty ? newMesureHistory[0] : null;
        newMesureHistoryState = newMesureHistoryState.clone(
          status: AllPurposesStatus.SUCCESS,
          mesureHistory: newMesureHistory,
        );
      }
    });

    final newEnsMesureState = ensMesureState.clone(
      mesure: ensMesureState.mesure.clone(
        lastValueOptional: Optional.ofNullable(newLastValue),
      ),
      mesureHistoryState: newMesureHistoryState,
    );

    final newMesureStatesByType = Map<EnsMesureType, EnsMesureState>.from(state.mesuresState.mesureStatesByType);
    newMesureStatesByType[action.mesureType] = newEnsMesureState;

    return state.clone(
      mesuresState: state.mesuresState.clone(
        mesureStatesByType: newMesureStatesByType,
      ),
    );
  }

  static EnsState _onUpdateMesuresTilesCustomizationAction(
    EnsState state,
    UpdateMesuresTilesCustomizationAction action,
  ) {
    return state.clone(
      mesuresState: state.mesuresState.clone(
        mesuresTilesCustomizationState: state.mesuresState.mesuresTilesCustomizationState.clone(
          editMesuresTilesCustomizationStatus: AllPurposesStatus.LOADING,
        ),
      ),
    );
  }

  static EnsState _onProcessUpdatedTilesCustomizationAction(
    EnsState state,
    ProcessUpdatedTilesCustomizationAction action,
  ) {
    AllPurposesStatus editMesuresTilesCustomizationStatus =
        state.mesuresState.mesuresTilesCustomizationState.editMesuresTilesCustomizationStatus;
    MesuresTilesCustomizationListState mesuresTilesCustomizationListState =
        state.mesuresState.mesuresTilesCustomizationState.mesuresTilesCustomizationListState;

    final List<EnsMesureType> newMesureStatesByTypeVisiblesInCustomList =
        mesuresTilesCustomizationListState.status.isSuccess()
            ? List.from(mesuresTilesCustomizationListState.mesuresVisiblesInCustomList)
            : [];

    action.result.onSuccess((successResult) {
      successResult.forEach((mesureType, customizationStatus) {
        if (customizationStatus && !newMesureStatesByTypeVisiblesInCustomList.contains(mesureType)) {
          newMesureStatesByTypeVisiblesInCustomList.add(mesureType);
        } else if (!customizationStatus && newMesureStatesByTypeVisiblesInCustomList.contains(mesureType)) {
          newMesureStatesByTypeVisiblesInCustomList.remove(mesureType);
        }
      });
      editMesuresTilesCustomizationStatus = AllPurposesStatus.SUCCESS;
      mesuresTilesCustomizationListState = mesuresTilesCustomizationListState.clone(
        status: AllPurposesStatus.SUCCESS,
        mesuresVisiblesInCustomList: newMesureStatesByTypeVisiblesInCustomList,
      );
    }).onError((error) {
      editMesuresTilesCustomizationStatus = AllPurposesStatus.ERROR;
      mesuresTilesCustomizationListState = mesuresTilesCustomizationListState.clone(status: AllPurposesStatus.ERROR);
    });

    return state.clone(
      mesuresState: state.mesuresState.clone(
        mesuresTilesCustomizationState: state.mesuresState.mesuresTilesCustomizationState.clone(
          editMesuresTilesCustomizationStatus: editMesuresTilesCustomizationStatus,
          mesuresTilesCustomizationListState: mesuresTilesCustomizationListState,
        ),
      ),
    );
  }

  static EnsState _onAddMesureTargetAction(EnsState state, AddMesureTargetAction action) {
    return state.clone(
      mesuresState: state.mesuresState.clone(mesureFormStatus: AllPurposesStatus.LOADING),
    );
  }

  static EnsState _onProcessAddedOrUpdatedMesureTargetAction(
    EnsState state,
    ProcessAddedOrUpdatedMesureTargetAction action,
  ) {
    final addedTarget = action.addedTarget;
    final newMesureStatesByType = Map<EnsMesureType, EnsMesureState>.from(state.mesuresState.mesureStatesByType);
    final newMesureState = newMesureStatesByType[addedTarget.type];

    if (newMesureState != null) {
      newMesureStatesByType[addedTarget.type] = newMesureState.clone(
        mesure: newMesureState.mesure.clone(targetedValueOptional: Optional.of(addedTarget)),
      );
    }
    return state.clone(
      mesuresState: state.mesuresState.clone(
        mesureStatesByType: newMesureStatesByType,
        mesureFormStatus: AllPurposesStatus.SUCCESS,
      ),
    );
  }

  static EnsState _onUpdateMesureTargetAction(EnsState state, UpdateMesureTargetAction action) {
    return state.clone(
      mesuresState: state.mesuresState.clone(mesureFormStatus: AllPurposesStatus.LOADING),
    );
  }

  static EnsState _onProcessDeletedTargetAction(EnsState state, ProcessDeletedTargetAction action) {
    final newMesureStatesByType = Map<EnsMesureType, EnsMesureState>.from(state.mesuresState.mesureStatesByType);
    final EnsMesureType typeOfDeletedTarget = newMesureStatesByType.values
        .firstWhere((mesureState) => mesureState.mesure.targetedValue?.id == action.targetId)
        .mesure
        .type;

    final newMesureState = newMesureStatesByType[typeOfDeletedTarget];
    if (newMesureState != null) {
      newMesureStatesByType[typeOfDeletedTarget] = newMesureState.clone(
        mesure: newMesureState.mesure.clone(targetedValueOptional: Optional.ofNullable(null)),
      );
    }
    return state.clone(mesuresState: state.mesuresState.clone(mesureStatesByType: newMesureStatesByType));
  }

  static EnsState _onProcessFetchedMesureCustomizationStatus(
    EnsState state,
    ProcessFetchedMesureCustomizationStatus action,
  ) {
    return state.clone(
      mesuresState: state.mesuresState.clone(
        mesuresTilesCustomizationState: state.mesuresState.mesuresTilesCustomizationState.clone(
          mesuresTilesCustomizationListState: MesuresTilesCustomizationListState(
            status: AllPurposesStatus.SUCCESS,
            mesuresVisiblesInCustomList: action.result,
          ),
        ),
      ),
    );
  }

  static EnsState _onFetchLastMesuresAction(EnsState state, FetchLastMesuresAction action) {
    return state.clone(
      mesuresState: state.mesuresState.clone(
        lastMesuresState: state.mesuresState.lastMesuresState.status.isNotSuccess()
            ? state.mesuresState.lastMesuresState.clone(status: AllPurposesStatus.LOADING)
            : state.mesuresState.lastMesuresState,
      ),
    );
  }

  static EnsState _onFetchMesuresDataForExtractAction(
    EnsState state,
    FetchMesuresDataForExtractAction action,
  ) {
    final mesuresTypesSansHistorique = MesuresSelectors.mesuresTypesSansHistorique(action.mesureTypes, state);
    return state.clone(
      mesuresState: state.mesuresState.clone(
        mesuresDataForExtractionStatus: mesuresTypesSansHistorique.isNotEmpty
            ? AllPurposesStatus.LOADING
            : state.mesuresState.mesuresDataForExtractionStatus,
      ),
    );
  }

  static EnsState _onProcessFetchedMesureDataForExtractSuccessAction(
    EnsState state,
    ProcessFetchedMesureDataForExtractSuccessAction action,
  ) {
    final newMesureStatesByType = Map<EnsMesureType, EnsMesureState>.from(state.mesuresState.mesureStatesByType);

    for (final mesureType in action.mesuresTypes) {
      final mesureData = action.mesuresDatas
          .where((mesureData) => mesureData.mesureMetadata.metrics.firstOrNull?.type == mesureType)
          .firstOrNull;

      EnsMesureState? ensMesureState = newMesureStatesByType[mesureType];

      if (mesureData != null && ensMesureState != null) {
        ensMesureState = ensMesureState.clone(
          mesure: ensMesureState.mesure.clone(
            lastValueOptional: mesureData.mesureHistory.isNotEmpty
                ? Optional.of(mesureData.mesureHistory[0])
                : Optional.ofNullable(null),
          ),
          mesureMetadataState: ensMesureState.mesureMetadataState.clone(
            status: AllPurposesStatus.SUCCESS,
            mesureMetadataOptional: Optional.of(mesureData.mesureMetadata),
          ),
          mesureHistoryState: ensMesureState.mesureHistoryState.clone(
            status: AllPurposesStatus.SUCCESS,
            mesureHistory: mesureData.mesureHistory,
          ),
        );
        newMesureStatesByType[mesureType] = ensMesureState;
      }
    }

    return state.clone(
      mesuresState: state.mesuresState.clone(
        mesureStatesByType: newMesureStatesByType,
        mesuresDataForExtractionStatus: AllPurposesStatus.SUCCESS,
      ),
    );
  }

  static EnsState _onProcessFetchedMesureDataForExtractErrorAction(
    EnsState state,
    ProcessFetchedMesureDataForExtractErrorAction action,
  ) {
    final newMesureStatesByType = Map<EnsMesureType, EnsMesureState>.from(state.mesuresState.mesureStatesByType);

    for (final mesureType in action.mesuresTypes) {
      final ensMesureState = newMesureStatesByType[mesureType];
      if (ensMesureState != null) {
        final newEnsMesureState = ensMesureState.clone(
          mesureMetadataState: ensMesureState.mesureMetadataState.clone(status: AllPurposesStatus.ERROR),
          mesureHistoryState: ensMesureState.mesureHistoryState.clone(status: AllPurposesStatus.ERROR),
        );
        newMesureStatesByType[mesureType] = newEnsMesureState;
      }
    }

    return state.clone(
      mesuresState: state.mesuresState.clone(
        mesureStatesByType: newMesureStatesByType,
        mesuresDataForExtractionStatus: AllPurposesStatus.ERROR,
      ),
    );
  }
}
