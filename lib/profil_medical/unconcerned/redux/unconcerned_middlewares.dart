/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'unconcerned_redux.dart';

class UnconcernedMiddlewares {
  final IUnconcernedRepository unconcernedRepository;

  UnconcernedMiddlewares._(this.unconcernedRepository);

  static List<Middleware<EnsState>> create(IUnconcernedRepository unconcernedRepository) {
    final middleware = UnconcernedMiddlewares._(unconcernedRepository);

    return [
      TypedMiddleware<EnsState, SetUnconcernedAction>(middleware._onSetUnconcernedAction).call,
    ];
  }

  Future<void> _onSetUnconcernedAction(
    Store<EnsState> store,
    SetUnconcernedAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final result = await unconcernedRepository.setUnconcerned(action.section, patientId);
    result.onSuccess((successResult) {
      store.dispatch(_ProcessSetUnconcernedSuccessAction(successResult));
    }).onError((error) {
      store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
      store.dispatch(_ProcessSetUnconcernedErrorAction(action.section));
    });
  }
}
