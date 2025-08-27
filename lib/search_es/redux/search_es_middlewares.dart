/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'search_es_redux.dart';

class SearchEsMiddlewares {
  final ISearchEsRepository _searchEsRepository;

  SearchEsMiddlewares(this._searchEsRepository);

  static List<Middleware<EnsState>> create(ISearchEsRepository searchEsRepository) {
    final middlewares = SearchEsMiddlewares(searchEsRepository);

    return [
      TypedMiddleware<EnsState, SearchEsAction>(middlewares._onSearchEsAction).call,
    ];
  }

  Future<void> _onSearchEsAction(
    Store<EnsState> store,
    SearchEsAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final result = await _searchEsRepository.getEtablissementSante(
      action.name,
      action.departmentCode,
      action.zipCodes,
      action.cityCode,
      action.rechercheEsType == RechercheEsType.ADD_PHARMACIE_FOR_MESSAGERIE,
    );

    result.onSuccess((successResult) {
      store.dispatch(_ProcessSearchEsSuccessAction(successResult));
      final validEs = action.rechercheEsType == RechercheEsType.ADD_PHARMACIE_FOR_MESSAGERIE
          ? successResult.where((es) => es.mail != null && es.active)
          : successResult;

      if (validEs.isEmpty) {
        store.dispatch(
          DisplaySnackbarAction.error(
            action.rechercheEsType == RechercheEsType.ADD_PHARMACIE_FOR_MESSAGERIE
                ? 'Aucune pharmacie n’a été trouvée. Modifiez votre saisie.'
                : 'Aucun professionnel de santé n’a été trouvé. Modifiez votre saisie.',
          ),
        );
      }
    }).onError((domainError) {
      store.dispatch(_ProcessSearchEsErrorAction());
      if (domainError.errorMessage != null) {
        store.dispatch(DisplaySnackbarAction.error(domainError.errorMessage!));
      }
    });
  }
}
