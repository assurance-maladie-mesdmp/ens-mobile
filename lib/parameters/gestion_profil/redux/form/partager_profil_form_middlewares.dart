/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'partager_profil_form_redux.dart';

class PartagerProfilFormMiddlewares {
  final IPartagerProfilRepository _repository;

  PartagerProfilFormMiddlewares(this._repository);

  static List<Middleware<EnsState>> create(IPartagerProfilRepository repository) {
    final middlewares = PartagerProfilFormMiddlewares(repository);
    return [
      TypedMiddleware<EnsState, PartagerProfilFormAction>(
        middlewares._onPartagerProfilGestionnaireFormAction,
      ).call,
    ];
  }

  Future<void> _onPartagerProfilGestionnaireFormAction(
    Store<EnsState> store,
    PartagerProfilFormAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final connectedUserPatientId = UserSelectors.getConnectedUserPatientId(store.state);
    final currentProfilPatientId = UserSelectors.getPatientId(store.state);
    final result = await _repository.sendPartagerProfilForm(
      connectedUserPatientId: connectedUserPatientId,
      currentProfilPatientId: currentProfilPatientId,
      secondGestionnaireData: PartagerProfilSecondGestionnaireData(
        nir: action.numeroSecu,
        lastName: action.lastName,
        firstName: action.firstName,
        birthDate: action.birthDate,
      ),
    );
    result.onSuccess((successResult) {
      store.dispatch(_ProcessPartagerProfilFormSuccessAction());
    });
    result.onError((domainError) {
      if (domainError == GenericDomainError.NETWORK_ERROR) {
        store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE, extraVerticalPadding: 56));
        store.dispatch(_ProcessPartagerProfilFormNetworkErrorAction());
      } else {
        store.dispatch(_ProcessPartagerProfilFormErrorAction());
      }
    });
  }
}
