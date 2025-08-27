/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'aide_faq_redux.dart';

class AideFaqMiddlewares {
  final IAideFaqRepository repository;

  const AideFaqMiddlewares._(this.repository);

  static List<Middleware<EnsState>> create(
    IAideFaqRepository repository,
  ) {
    final middleware = AideFaqMiddlewares._(repository);
    return [
      TypedMiddleware<EnsState, FetchFaqAction>(middleware._onFetchFaqAction).call,
    ];
  }

  Future<void> _onFetchFaqAction(Store<EnsState> store, FetchFaqAction action, NextDispatcher next) async {
    next(action);
    final state = store.state.faqState;
    if (state.status.isNotSuccess()) {
      final result = await repository.getFaqItems();
      result.onSuccess((successResult) {
        store.dispatch(_ProcessFetchFaqSuccessAction(successResult));
      });
      result.onError((_) {
        store.dispatch(_ProcessFetchFaqFailedAction());
      });
    }
  }
}
