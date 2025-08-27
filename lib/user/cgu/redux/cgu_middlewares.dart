/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'cgu_redux.dart';

class CguMiddlewares {
  final ICguRepository _cguRepository;

  CguMiddlewares(this._cguRepository);

  static List<Middleware<EnsState>> create(ICguRepository cguRepository) {
    final middlewares = CguMiddlewares(cguRepository);

    return [
      TypedMiddleware<EnsState, AcceptCguAction>(middlewares.acceptCgu).call,
    ];
  }

  Future<void> acceptCgu(Store<EnsState> store, AcceptCguAction action, NextDispatcher next) async {
    next(action);
    final patientId = store.state.userState.connectedUserPatientId;
    final result = await _cguRepository.acceptCgu(patientId: patientId);

    result.onSuccess((_) {
      store.dispatch(_ProcessAcceptCguSuccessAction());
    }).onError((_) {
      store.dispatch(_ProcessAcceptCguErrorAction());
      store.dispatch(const DisplaySnackbarAction.error('Une erreur est survenue.'));
    });
  }
}
