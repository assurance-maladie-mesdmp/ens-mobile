/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'bilan_de_prevention_redux.dart';

class BilanDePreventionMiddlewares {
  IBilanDePreventionRepository bilanDePreventionRepository;

  BilanDePreventionMiddlewares._(this.bilanDePreventionRepository);

  static List<Middleware<EnsState>> create(
    IBilanDePreventionRepository bilanDePreventionRepository,
  ) {
    final middleware = BilanDePreventionMiddlewares._(bilanDePreventionRepository);
    return [
      TypedMiddleware<EnsState, FetchBilanDePreventionQuestionnairesAction>(
        middleware._onFetchBilanDePreventionQuestionnairesAction,
      ).call,
    ];
  }

  Future<void> _onFetchBilanDePreventionQuestionnairesAction(
    Store<EnsState> store,
    FetchBilanDePreventionQuestionnairesAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    if (BilanDePreventionSelectors.needReloadBilanDePreventionData(store.state, action)) {
      final result = await bilanDePreventionRepository.getQuestionnaires(patientId);
      result.onSuccess((successResult) {
        store.dispatch(_ProcessFetchedBilanDePreventionQuestionnairesAction(result: successResult));
      }).onError((error) {
        store.dispatch(_ProcessFetchedBilanDePreventionQuestionnairesAction(result: null));
      });
    }
  }
}
