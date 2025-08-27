/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'consentement_extraction_donnees_sante_redux.dart';

class ConsentementExtractionDonneesSanteMiddlewares {
  final IConsentementExtractionDonneesSanteRepository repository;

  ConsentementExtractionDonneesSanteMiddlewares(this.repository);

  static List<Middleware<EnsState>> create(IConsentementExtractionDonneesSanteRepository repository) {
    final middlewares = ConsentementExtractionDonneesSanteMiddlewares(repository);
    return [
      TypedMiddleware<EnsState, UpdateConsentementExtractionDonneesSanteAction>(
        middlewares._onUpdateConsentementExtractionDonneesSanteAction,
      ).call,
    ];
  }

  Future<void> _onUpdateConsentementExtractionDonneesSanteAction(
    Store<EnsState> store,
    UpdateConsentementExtractionDonneesSanteAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final result = await repository.updateConsentement(patientId, action.hasAccepted);
    result.onSuccess((successResult) {
      store.dispatch(_ProcessUpdateConsentementExtractionDonneesSanteSuccessAction(action.hasAccepted));
    }).onError((error) {
      store.dispatch(const DisplaySnackbarAction.error('Une erreur est survenue.'));
      store.dispatch(_ProcessUpdateConsentementExtractionDonneesSanteErrorAction());
    });
  }
}
