/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'raccourcis_redux.dart';

class RaccourcisMiddlewares {
  final IRaccourcisRepository _raccourcisRepository;

  RaccourcisMiddlewares(this._raccourcisRepository);

  static List<Middleware<EnsState>> create(IRaccourcisRepository raccourcisRepository) {
    final middlewares = RaccourcisMiddlewares(raccourcisRepository);

    return [
      TypedMiddleware<EnsState, FetchRaccourcisItemAction>(middlewares._onFetchRaccourcisItemAction).call,
      TypedMiddleware<EnsState, FetchRaccourcisItemParCategorieAction>(
        middlewares._onFetchRaccourcisItemParCategorieAction,
      ).call,
      TypedMiddleware<EnsState, UpdateHomeRaccourcisItemsAction>(middlewares._onUpdateRaccourcisItemsAction).call,
      TypedMiddleware<EnsState, AddMesuresToPmlAction>(middlewares._onAddMesuresToPmlAction).call,
    ];
  }

  Future<void> _onFetchRaccourcisItemAction(
    Store<EnsState> store,
    FetchRaccourcisItemAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final result = await _raccourcisRepository.getRaccourcis(patientId);
    store.dispatch(_ProcessFetchedRaccourcisItemAction(raccourcis: result));
  }

  Future<void> _onFetchRaccourcisItemParCategorieAction(
    Store<EnsState> store,
    FetchRaccourcisItemParCategorieAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final result = _raccourcisRepository.getAllRaccourcis();
    store.dispatch(_ProcessFetchedRaccourcisItemParCategorieAction(result));
  }

  Future<void> _onUpdateRaccourcisItemsAction(
    Store<EnsState> store,
    UpdateHomeRaccourcisItemsAction action,
    NextDispatcher next,
  ) async {
    next(action);
    if (action.raccourcis.length <= 5) {
      final patientId = UserSelectors.getPatientId(store.state);
      await _raccourcisRepository.setRaccourcis(patientId, action.raccourcis);
      store.dispatch(_ProcessUpdateHomeRaccourcisItemsSuccessAction(raccourcis: action.raccourcis));
    } else {
      store.dispatch(const DisplaySnackbarAction.error('Vous ne pouvez pas ajouter plus de 5 raccourcis.'));
    }
  }

  Future<void> _onAddMesuresToPmlAction(
    Store<EnsState> store,
    AddMesuresToPmlAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final mesuresDansRaccourcis =
        action.raccourcisMesures.map((raccourcis) => EnsMesureType.fromLabel(raccourcis.titre)).nonNulls;
    final mesuresCustomListState =
        store.state.mesuresState.mesuresTilesCustomizationState.mesuresTilesCustomizationListState;
    if (mesuresCustomListState.status.isSuccess()) {
      final mesuresDansPml = mesuresCustomListState.mesuresVisiblesInCustomList;
      final mesuresRaccourcisPasDansPml = mesuresDansRaccourcis
          .where((mesureRacc) => mesuresDansPml.none((mesurePml) => mesureRacc == mesurePml))
          .toList();
      if (mesuresRaccourcisPasDansPml.isNotEmpty) {
        final newMapCustomListMesures = {for (final mesure in EnsMesureType.values) mesure: false};
        newMapCustomListMesures.remove(EnsMesureType.UNKNOWN);
        for (final mesure in mesuresDansPml) {
          newMapCustomListMesures[mesure] = true;
        }
        for (final mesure in mesuresDansRaccourcis) {
          newMapCustomListMesures[mesure] = true;
        }
        store.dispatch(UpdateMesuresTilesCustomizationAction(newMapCustomListMesures));
      }
    }
  }
}
