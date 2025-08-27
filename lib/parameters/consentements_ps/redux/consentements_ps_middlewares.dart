/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'consentements_ps_redux.dart';

class ConsentementsPsMiddlewares {
  final IConsentementsPsRepository _consentementsPsRepository;

  ConsentementsPsMiddlewares(this._consentementsPsRepository);

  static List<Middleware<EnsState>> create(IConsentementsPsRepository consentementsPsRepository) {
    final middlewares = ConsentementsPsMiddlewares(consentementsPsRepository);

    return [
      TypedMiddleware<EnsState, FetchConsentementsPsAction>(middlewares._onFetchConsentementsPsAction).call,
      TypedMiddleware<EnsState, BlockPsAction>(middlewares._onBlockPsAction).call,
      TypedMiddleware<EnsState, UnblockPsAction>(middlewares._onUnblockPsAction).call,
    ];
  }

  Future<void> _onFetchConsentementsPsAction(
    Store<EnsState> store,
    FetchConsentementsPsAction action,
    NextDispatcher next,
  ) async {
    next(action);
    if (action.force || store.state.consentementsPsListState.status.isNotSuccess()) {
      final patientId = UserSelectors.getPatientId(store.state);
      final result = await _consentementsPsRepository.getConsentementPs(patientId);
      result.onSuccess((consentementPs) {
        store.dispatch(_ProcessFetchConsentementsPsSuccessAction(consentementPs));
      }).onError((_) {
        store.dispatch(_ProcessFetchConsentementsPsErrorAction());
      });
    }
  }

  Future<void> _onBlockPsAction(Store<EnsState> store, BlockPsAction action, NextDispatcher next) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final requestResult = await _consentementsPsRepository.blockPs(patientId, action.psIdNat);

    requestResult.onSuccess((successResult) {
      store.dispatch(const DisplaySnackbarAction.success('Professionnel de santé bloqué avec succès'));
      store.dispatch(const FetchConsentementsPsAction(force: true));
      store.dispatch(const FetchProfessionnelSanteConfidentialitiesAction(force: true));
    }).onError((error) {
      store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
    });
  }

  Future<void> _onUnblockPsAction(Store<EnsState> store, UnblockPsAction action, NextDispatcher next) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final result = await _consentementsPsRepository.unblockPs(
      patientId,
      action.psIdNat,
      action.consentementId,
    );

    result.onSuccess((successResult) {
      store.dispatch(const DisplaySnackbarAction.success('Professionnel de santé débloqué'));
      store.dispatch(const FetchConsentementsPsAction(force: true));
      store.dispatch(const FetchProfessionnelSanteConfidentialitiesAction(force: true));
    }).onError((error) {
      store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
    });
  }
}
