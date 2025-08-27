/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'incitation_pml_redux.dart';

class IncitationPmlMiddlewares {
  final ISecureStorageRepository _incitationPmlRepository;

  IncitationPmlMiddlewares(this._incitationPmlRepository);

  static List<Middleware<EnsState>> create(
    ISecureStorageRepository incitationPmlRepository,
  ) {
    final middleware = IncitationPmlMiddlewares(incitationPmlRepository);
    return [
      TypedMiddleware<EnsState, FetchIncitationWelcomePageViewsAction>(
        middleware._onFetchIncitationWelcomePageViews,
      ).call,
      TypedMiddleware<EnsState, AddPatientIdIncitationWelcomePageAction>(
        middleware._onAddPatientIdIncitationWelcomePage,
      ).call,
    ];
  }

  Future<void> _onFetchIncitationWelcomePageViews(
    Store<EnsState> store,
    FetchIncitationWelcomePageViewsAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final result = await _incitationPmlRepository.readIncitationWelcomePageViews();
    result.onSuccess((successResult) {
      store.dispatch(_ProcessFetchedIncitationWelcomePageViewsAction(successResult));
    });
  }

  Future<void> _onAddPatientIdIncitationWelcomePage(
    Store<EnsState> store,
    AddPatientIdIncitationWelcomePageAction action,
    NextDispatcher next,
  ) async {
    next(action);
    await _incitationPmlRepository.writeIncitationWelcomePageViews(action.patientId);
  }
}
