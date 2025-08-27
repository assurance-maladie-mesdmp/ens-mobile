/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'mesures_redux.dart';

class MesuresMiddlewares {
  final IMesuresRepository _mesuresRepository;

  MesuresMiddlewares(this._mesuresRepository);

  static List<Middleware<EnsState>> create(IMesuresRepository mesuresRepository) {
    final middlewares = MesuresMiddlewares(mesuresRepository);

    return [
      TypedMiddleware<EnsState, FetchLastMesuresAction>(middlewares._onFetchLastMesuresAction).call,
      TypedMiddleware<EnsState, FetchMesureDataAction>(middlewares._onFetchMesureDataAction).call,
      TypedMiddleware<EnsState, InitializeMesureFormAction>(middlewares._onInitializeMesureFormAction).call,
      TypedMiddleware<EnsState, AddMesureAction>(middlewares._onAddMesureAction).call,
      TypedMiddleware<EnsState, UpdateMesureAction>(middlewares._onUpdateMesureAction).call,
      TypedMiddleware<EnsState, DeleteMesureAction>(middlewares._onDeleteMesureAction).call,
      TypedMiddleware<EnsState, UpdateMesuresTilesCustomizationAction>(
        middlewares._onUpdateMesuresTilesCustomizationAction,
      ).call,
      TypedMiddleware<EnsState, AddMesureTargetAction>(middlewares._onAddMesureTargetAction).call,
      TypedMiddleware<EnsState, UpdateMesureTargetAction>(middlewares._onUpdateMesureTargetAction).call,
      TypedMiddleware<EnsState, DeleteMesureTargetAction>(middlewares._onDeleteMesureTargetAction).call,
      TypedMiddleware<EnsState, FetchMesuresDataForExtractAction>(middlewares._onFetchMesuresDataForExtractAction).call,
    ];
  }

  Future<void> _onFetchLastMesuresAction(
    Store<EnsState> store,
    FetchLastMesuresAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    if (action.force || store.state.mesuresState.lastMesuresState.status.isNotSuccess()) {
      final result = await _mesuresRepository.getLastMesures(patientId);
      result.onSuccess((successResult) {
        store.dispatch(ProcessFetchedLastMesuresAction(RequestResultSuccess(successResult.mesures)));
        store.dispatch(ProcessFetchedMesureCustomizationStatus(successResult.customizationStatus));
      }).onError((_) {
        store.dispatch(ProcessFetchedLastMesuresAction(RequestResultError.genericError()));
      });
    }
  }

  void _onFetchMesureDataAction(Store<EnsState> store, FetchMesureDataAction action, NextDispatcher next) {
    final EnsMesureType type = action.mesureType;
    final patientId = UserSelectors.getPatientId(store.state);
    next(action);

    _mesuresRepository.getMesureDataByCode(type, patientId).then((result) {
      store.dispatch(ProcessFetchedMesureDataAction(type, result));
    });
  }

  Future<void> _onInitializeMesureFormAction(
    Store<EnsState> store,
    InitializeMesureFormAction action,
    NextDispatcher next,
  ) async {
    final type = action.mesureType;
    final ensMesure = store.state.mesuresState.mesureStatesByType[type];

    next(action);

    if (ensMesure == null) {
      return;
    }
    final metadataState = ensMesure.mesureMetadataState;
    if (metadataState.status.isSuccess()) {
      return;
    }
    final metadata = await _mesuresRepository.getMetadata(type);
    store.dispatch(ProcessFetchedMetadataResultAction(type, metadata));
  }

  Future<void> _onAddMesureAction(Store<EnsState> store, AddMesureAction action, NextDispatcher next) async {
    next(action);
    _addOrUpdate(
      store,
      action.input,
      (patientId, input, metadata) => _mesuresRepository.addMesure(
        patientId: patientId,
        input: action.input,
        metadata: metadata,
      ),
      'Valeur ajoutée',
    );
    store.dispatch(AddSuccessfulRatingAction());
  }

  Future<void> _onUpdateMesureAction(Store<EnsState> store, UpdateMesureAction action, NextDispatcher next) async {
    next(action);
    _addOrUpdate(
      store,
      action.input,
      (patientId, input, metadata) => _mesuresRepository.updateMesure(
        patientId: patientId,
        input: action.input,
        metadata: metadata,
      ),
      'Valeur modifiée',
    );
  }

  Future<void> _addOrUpdate(
    Store<EnsState> store,
    EnsMesureInput input,
    Future<RequestResult<EnsMesureValue?>> Function(String, EnsMesureInput, EnsMesureMetadata) request,
    String successMessage,
  ) async {
    final type = input.type;
    final patientId = UserSelectors.getPatientId(store.state);
    final ensMesure = store.state.mesuresState.mesureStatesByType[type];
    if (ensMesure == null) {
      return;
    }
    final metadataState = ensMesure.mesureMetadataState;
    final mesureMetadata = metadataState.mesureMetadata;
    if (metadataState.status.isNotSuccess() || mesureMetadata == null) {
      return;
    }

    final result = await request(patientId, input, mesureMetadata);

    result.onSuccess((newValue) {
      store.dispatch(DisplaySnackbarAction.success(successMessage));
      store.dispatch(AddOrUpdateMesureSuccessAction(type, newValue));
      if (ensMesure.mesureHistoryState.status.isNotSuccess() || newValue == null) {
        store.dispatch(FetchMesureDataAction(type));
      }
      _refreshImcIfNeeded(store, type);
    }).onError((_) {
      store.dispatch(AddOrUpdateMesureErrorAction());
    });
  }

  void _refreshImcIfNeeded(Store<EnsState> store, EnsMesureType type) {
    if (type == EnsMesureType.TAILLE || type == EnsMesureType.POIDS) {
      final mesureImc = store.state.mesuresState.mesureStatesByType[EnsMesureType.IMC];
      if (mesureImc != null) {
        store.dispatch(FetchMesureDataAction(EnsMesureType.IMC));
      }
    }
  }

  void _onDeleteMesureAction(Store<EnsState> store, DeleteMesureAction action, NextDispatcher next) {
    final patientId = UserSelectors.getPatientId(store.state);
    final mesureId = action.mesureId;
    next(action);
    _mesuresRepository.deleteMesure(patientId, mesureId).then((result) {
      result.onSuccess((successResult) {
        store.dispatch(const DisplaySnackbarAction.success('Valeur supprimée'));
        _refreshImcIfNeeded(store, action.mesureType);
      }).onError((error) {
        store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
      });
      store.dispatch(ProcessDeletedMesureAction(result, action.mesureType));
    });
  }

  void _onUpdateMesuresTilesCustomizationAction(
    Store<EnsState> store,
    UpdateMesuresTilesCustomizationAction action,
    NextDispatcher next,
  ) {
    final patientId = UserSelectors.getPatientId(store.state);
    next(action);
    _mesuresRepository.updateMesuresCustomization(patientId, action.visibilityStatus).then((result) {
      result.onSuccess((_) {
        store.dispatch(const DisplaySnackbarAction.success('Affichage des mesures personnalisé'));
      }).onError((_) {
        store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
      });
      store.dispatch(ProcessUpdatedTilesCustomizationAction(result));
    });
  }

  void _onAddMesureTargetAction(Store<EnsState> store, AddMesureTargetAction action, NextDispatcher next) {
    final patientId = UserSelectors.getPatientId(store.state);
    next(action);
    _mesuresRepository.addMesureTarget(patientId, action.type, action.value).then((result) {
      result.onSuccess((successResult) {
        store.dispatch(const DisplaySnackbarAction.success('Objectif ajouté'));
        store.dispatch(ProcessAddedOrUpdatedMesureTargetAction(successResult));
      }).onError((_) {
        store.dispatch(AddOrUpdateMesureErrorAction());
      });
    });
  }

  void _onUpdateMesureTargetAction(Store<EnsState> store, UpdateMesureTargetAction action, NextDispatcher next) {
    final patientId = UserSelectors.getPatientId(store.state);
    next(action);
    _mesuresRepository.updateMesureTarget(patientId, action.targetId, action.value).then((result) {
      result.onSuccess((successResult) {
        store.dispatch(const DisplaySnackbarAction.success('Objectif modifié'));
        store.dispatch(ProcessAddedOrUpdatedMesureTargetAction(successResult));
      }).onError((_) {
        store.dispatch(AddOrUpdateMesureErrorAction());
      });
    });
  }

  void _onDeleteMesureTargetAction(Store<EnsState> store, DeleteMesureTargetAction action, NextDispatcher next) {
    final patientId = UserSelectors.getPatientId(store.state);
    next(action);
    _mesuresRepository.deleteMesureTarget(patientId, action.targetId).then((result) {
      result.onSuccess((successResult) {
        store.dispatch(const DisplaySnackbarAction.success('Objectif supprimé'));
        store.dispatch(ProcessDeletedTargetAction(action.targetId));
      }).onError((_) {
        store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
      });
    });
  }

  Future<void> _onFetchMesuresDataForExtractAction(
    Store<EnsState> store,
    FetchMesuresDataForExtractAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final mesuresTypesSansHistorique = MesuresSelectors.mesuresTypesSansHistorique(action.mesureTypes, store.state);

    if (mesuresTypesSansHistorique.isNotEmpty) {
      final result = await _mesuresRepository.getMesuresDatasByListCodes(mesuresTypesSansHistorique, patientId);
      result.onSuccess((successResult) {
        store.dispatch(
          ProcessFetchedMesureDataForExtractSuccessAction(
            mesuresTypes: action.mesureTypes,
            mesuresDatas: successResult,
          ),
        );
      }).onError((error) {
        store.dispatch(ProcessFetchedMesureDataForExtractErrorAction(mesuresTypes: mesuresTypesSansHistorique));
      });
    }
  }
}
