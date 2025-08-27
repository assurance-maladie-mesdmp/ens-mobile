/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'matrice_habilitation_redux.dart';

class MatriceHabilitationMiddlewares {
  final IMatriceHabilitationRepository _matriceHabilitationRepository;

  MatriceHabilitationMiddlewares(this._matriceHabilitationRepository);

  static List<Middleware<EnsState>> create(IMatriceHabilitationRepository matriceHabilitationRepository) {
    final middlewares = MatriceHabilitationMiddlewares(matriceHabilitationRepository);

    return [
      TypedMiddleware<EnsState, FetchMatriceProfessionsAction>(middlewares._onFetchMatriceProfessionsAction).call,
      TypedMiddleware<EnsState, FetchMatriceCategorieDocumentAction>(
        middlewares._onFetchMatriceCategorieDocumentAction,
      ).call,
      TypedMiddleware<EnsState, FetchMatriceResultatAction>(middlewares._onFetchMatriceResultatAction).call,
    ];
  }

  Future<void> _onFetchMatriceProfessionsAction(
    Store<EnsState> store,
    FetchMatriceProfessionsAction action,
    NextDispatcher next,
  ) async {
    next(action);
    if (store.state.matriceHabilitationState.matriceProfessionState.status.isNotSuccess()) {
      final result = await _matriceHabilitationRepository.getMatriceProfessions();
      result.onSuccess((successResult) {
        store.dispatch(_ProcessFetchMatriceProfessionsSuccessAction(successResult));
      }).onError((error) {
        store.dispatch(_ProcessFetchMatriceProfessionsErrorAction());
      });
    }
  }

  Future<void> _onFetchMatriceCategorieDocumentAction(
    Store<EnsState> store,
    FetchMatriceCategorieDocumentAction action,
    NextDispatcher next,
  ) async {
    next(action);
    if (store.state.matriceHabilitationState.matriceCategorieDocumentState.status.isNotSuccess()) {
      final result = await _matriceHabilitationRepository.getMatriceCategoriesDocuments();
      result.onSuccess((successResult) {
        store.dispatch(_ProcessFetchMatriceCategorieDocumentSuccessAction(successResult));
      }).onError((error) {
        store.dispatch(_ProcessFetchMatriceCategorieDocumentErrorAction());
        store.dispatch(
          const DisplaySnackbarAction.error(
            'Certains éléments n\'ont pas pu s\'afficher. Rechargez la page pour les consulter.',
          ),
        );
      });
    }
  }

  Future<void> _onFetchMatriceResultatAction(
    Store<EnsState> store,
    FetchMatriceResultatAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final result = await _matriceHabilitationRepository.getMatriceResultats(action.codeProfession);
    result.onSuccess((successResult) {
      store.dispatch(_ProcessFetchMatriceResultatSuccessAction(successResult));
    }).onError((error) {
      store.dispatch(_ProcessFetchMatriceResultatErrorAction());
    });
  }
}
