/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'professional_activities_redux.dart';

class ProfessionalActivitiesMiddlewares {
  final IProfessionalActivitiesRepository _professionalActivitiesRepository;

  ProfessionalActivitiesMiddlewares(this._professionalActivitiesRepository);

  static List<Middleware<EnsState>> create(IProfessionalActivitiesRepository professionalActivitiesRepository) {
    final middlewares = ProfessionalActivitiesMiddlewares(professionalActivitiesRepository);

    return [
      TypedMiddleware<EnsState, FetchProfessionalActivitiesAction>(
        middlewares._onFetchProfessionalActivitiesAction,
      ).call,
    ];
  }

  Future<void> _onFetchProfessionalActivitiesAction(
    Store<EnsState> store,
    FetchProfessionalActivitiesAction action,
    NextDispatcher next,
  ) async {
    next(action);
    if (action.force || store.state.professionalActivitiesState.status.isNotSuccess()) {
      final result = await _professionalActivitiesRepository.getProfessionsAndSpecialities();
      result.onSuccess((successResult) {
        store.dispatch(_ProcessFetchProfessionalActivitiesSuccessAction(successResult));
      }).onError((_) {
        store.dispatch(_ProcessFetchProfessionalActivitiesErrorAction());
        store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
      });
    }
  }
}
