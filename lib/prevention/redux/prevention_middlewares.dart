/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'prevention_redux.dart';

class PreventionMiddlewares {
  final IPreventionRepository _preventionRepository;

  PreventionMiddlewares(this._preventionRepository);

  static List<Middleware<EnsState>> create(IPreventionRepository preventionRepository) {
    final middlewares = PreventionMiddlewares(preventionRepository);

    return [
      TypedMiddleware<EnsState, FetchPreventionArticlesAction>(middlewares._onFetchPreventionArticlesAction).call,
      TypedMiddleware<EnsState, FetchPreventionDetailAction>(middlewares._onFetchPreventionDetailAction).call,
    ];
  }

  Future<void> _onFetchPreventionArticlesAction(
    Store<EnsState> store,
    FetchPreventionArticlesAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final preventionListState = store.state.preventionState.preventionListState;
    if (action.force || preventionListState.status.isNotSuccess()) {
      final result = await _preventionRepository.getArticlesDePrevention(action.sexLabel, action.age);
      result.onSuccess((successResult) {
        store.dispatch(_ProcessFetchPreventionArticlesSuccessAction(successResult));
      }).onError((error) {
        store.dispatch(ProcessFetchPreventionArticlesErrorAction());
      });
    }

    final monActuListState = store.state.monActuState.monActuListState;
    if (action.force || monActuListState.status.isNotSuccess()) {
      final result = await _preventionRepository.getArticlesMonActuSante(action.sexLabel, action.age);
      result.onSuccess((successResult) {
        store.dispatch(_ProcessFetchMonActuSanteSuccessAction(successResult));
      }).onError((error) {
        store.dispatch(ProcessFetchMonActuSanteErrorAction());
      });
    }
  }

  Future<void> _onFetchPreventionDetailAction(
    Store<EnsState> store,
    FetchPreventionDetailAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final result = await _preventionRepository.getArticleDetail(action.articleId, action.generique);
    result.onSuccess((successResult) {
      store.dispatch(_ProcessFetchPreventionDetailSuccessAction(successResult));
    }).onError((error) {
      store.dispatch(_ProcessFetchPreventionDetailErrorAction());
    });
  }
}
