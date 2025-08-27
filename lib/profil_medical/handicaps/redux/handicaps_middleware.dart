/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'handicaps_redux.dart';

class HandicapsMiddlewares {
  final IHandicapsRepository _repository;

  HandicapsMiddlewares(this._repository);

  static List<Middleware<EnsState>> create(IHandicapsRepository handicapsRepository) {
    final middlewares = HandicapsMiddlewares(handicapsRepository);
    return [
      TypedMiddleware<EnsState, FetchHandicapsAction>(middlewares._onFetchHandicapsAction).call,
      TypedMiddleware<EnsState, SaveHandicapAction>(middlewares._onSaveHandicapAction).call,
      TypedMiddleware<EnsState, DeleteHandicapAction>(middlewares._onDeleteHandicapAction).call,
    ];
  }

  Future<void> _onFetchHandicapsAction(Store<EnsState> store, FetchHandicapsAction action, NextDispatcher next) async {
    next(action);
    if (action.force || store.state.handicapsState.handicapsListState.status.isNotSuccess()) {
      final patientId = UserSelectors.getPatientId(store.state);
      final result = await _repository.getHandicaps(patientId);
      result.onSuccess((successResult) {
        store.dispatch(
          _ProcessFetchHandicapsSuccessAction(
            handicaps: successResult.handicaps,
            nonConcerneDepuis: successResult.unconcernedDeclarationDate,
          ),
        );
      }).onError((_) {
        store.dispatch(_ProcessFetchHandicapsErrorAction());
      });
    }
  }

  Future<void> _onSaveHandicapAction(Store<EnsState> store, SaveHandicapAction action, NextDispatcher next) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final RequestResult<EditingHandicap> result;
    if (action.isUpdating) {
      result = await _repository.updateHandicap(action.editingHandicap, patientId);
    } else {
      result = await _repository.addHandicap(action.editingHandicap, patientId);
    }
    result.onSuccess((successResult) {
      store.dispatch(DisplaySnackbarAction.success(action.isUpdating ? 'Handicap modifié' : 'Handicap ajouté'));
      if (!action.isUpdating) {
        store.dispatch(AddSuccessfulRatingAction());
      }
      store.dispatch(_ProcessSaveHandicapSuccessAction(successResult));
      store.dispatch(const FetchHandicapsAction(force: true));
    }).onError((error) {
      store.dispatch(_ProcessSaveHandicapErrorAction());
      store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
    });
  }

  Future<void> _onDeleteHandicapAction(Store<EnsState> store, DeleteHandicapAction action, NextDispatcher next) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final result = await _repository.deleteHandicap(action.handicapId, patientId);
    result.onSuccess((successResult) {
      store.dispatch(_ProcessDeleteHandicapSuccessAction(successResult));
      store.dispatch(const DisplaySnackbarAction.success('Handicap supprimé'));
    }).onError((error) {
      store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
    });
  }
}
