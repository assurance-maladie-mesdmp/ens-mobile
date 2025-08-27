/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'aide_faq_redux.dart';

class AideFaqReducers {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, _ProcessFetchFaqSuccessAction>(
          AideFaqReducers._onProcessFetchFaqSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchFaqFailedAction>(
          AideFaqReducers._onProcessFetchFaqFailedAction,
        ).call,
      ];

  static EnsState _onProcessFetchFaqSuccessAction(EnsState state, _ProcessFetchFaqSuccessAction action) {
    return state.clone(
      faqState: AideFaqState(
        status: AllPurposesStatus.SUCCESS,
        items: {for (final item in action.items) item.id: item},
      ),
    );
  }

  static EnsState _onProcessFetchFaqFailedAction(EnsState state, _ProcessFetchFaqFailedAction action) {
    return state.clone(
      faqState: const AideFaqState(status: AllPurposesStatus.ERROR, items: {}),
    );
  }
}
