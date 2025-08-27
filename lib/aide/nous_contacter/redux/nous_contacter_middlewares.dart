/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'nous_contacter_redux.dart';

class NousContacterMiddlewares {
  final INousContacterRepository nousContacterRepository;

  NousContacterMiddlewares(this.nousContacterRepository);

  static List<Middleware<EnsState>> create(
    INousContacterRepository nousContacterRepository,
  ) {
    final middlewares = NousContacterMiddlewares(nousContacterRepository);
    return [
      TypedMiddleware<EnsState, FetchTicketsSupportAction>(middlewares._onFetchTicketsSupportAction).call,
      TypedMiddleware<EnsState, FetchTicketSupportDetailsAction>(middlewares._onFetchTicketSupportDetailsAction).call,
    ];
  }

  Future<void> _onFetchTicketsSupportAction(
    Store<EnsState> store,
    FetchTicketsSupportAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final result = await nousContacterRepository.getTicketsSupport(patientId);
    result.onSuccess((successResult) {
      store.dispatch(_ProcessFetchTicketsSupportSuccessAction(successResult));
    });
    result.onError((_) {
      store.dispatch(_ProcessFetchTicketsSupportErrorAction());
    });
  }

  Future<void> _onFetchTicketSupportDetailsAction(
    Store<EnsState> store,
    FetchTicketSupportDetailsAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final result = await nousContacterRepository.getTicketSupportDetails(action.ticketId);
    result.onSuccess((successResult) {
      store.dispatch(_ProcessFetchTicketSupportDetailSuccessAction(successResult));
    });
    result.onError((_) {
      store.dispatch(_ProcessFetchTicketSupportDetailsErrorAction());
    });
  }
}
