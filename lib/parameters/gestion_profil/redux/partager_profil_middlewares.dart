/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'partager_profil_redux.dart';

class PartagerProfilMiddlewares {
  final IPartagerProfilRepository _repository;

  PartagerProfilMiddlewares(this._repository);

  static List<Middleware<EnsState>> create(IPartagerProfilRepository repository) {
    final middlewares = PartagerProfilMiddlewares(repository);
    return [
      TypedMiddleware<EnsState, FetchPartagerProfilGestionnairesAction>(
        middlewares._onFetchPartagerProfilGestionnairesAction,
      ).call,
    ];
  }

  Future<void> _onFetchPartagerProfilGestionnairesAction(
    Store<EnsState> store,
    FetchPartagerProfilGestionnairesAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final result = await _repository.getPartagerProfilData(patientId);
    result.onSuccess((successResult) {
      store.dispatch(_ProcessPartagerProfilGestionnairesSuccessAction(gestionnaires: successResult));
    });
    result.onError((error) {
      store.dispatch(_ProcessPartagerProfilGestionnairesErrorAction());
    });
  }
}
