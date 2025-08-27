/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'search_ps_redux.dart';

class SearchPsMiddlewares {
  final ISearchPsRepository _searchPsRepository;

  SearchPsMiddlewares(this._searchPsRepository);

  static List<Middleware<EnsState>> create(ISearchPsRepository searchPsRepository) {
    final middlewares = SearchPsMiddlewares(searchPsRepository);

    return [
      TypedMiddleware<EnsState, SearchPsAction>(middlewares.onSearchPsList).call,
      TypedMiddleware<EnsState, SelectPsAction>(middlewares.onSelectPsAction).call,
    ];
  }

  Future<void> onSearchPsList(
    Store<EnsState> store,
    SearchPsAction action,
    NextDispatcher next,
  ) async {
    next(action);

    EnsProfessionalActivity? professionalActivity;
    final professionalActivitiesState = store.state.professionalActivitiesState;
    if (professionalActivitiesState.status.isSuccess()) {
      professionalActivity = professionalActivitiesState.professionalActivities
          .firstWhereOrNull((element) => element.treCode == action.professionalActivityId);
    }
    final result = await _searchPsRepository.getProfessionelSante(
      action.lastname,
      action.firstname,
      action.departmentCode,
      action.zipCodes,
      action.cityCode,
      professionalActivity,
    );

    result.onSuccess((successResult) {
      store.dispatch(_ProcessSearchPsSuccessAction(successResult));
    }).onError((domainError) {
      store.dispatch(_ProcessSearchPsErrorAction());
      if (domainError.errorMessage != null) {
        store.dispatch(DisplaySnackbarAction.error(domainError.errorMessage!));
      }
    });
  }

  Future<void> onSelectPsAction(
    Store<EnsState> store,
    SelectPsAction action,
    NextDispatcher next,
  ) async {
    next(action);

    final selectedPs = store.state.professionnelsDeSanteState.searchPsState.professionnelsDeSante
        .firstWhereOrNull((ps) => ps.nationalId == action.selectedPsId);
    if (selectedPs != null) {
      store.dispatch(_ProcessSelectPsAction(selectedPs));
    }
  }
}
