/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'ajout_ad_redux.dart';

class AjoutAdMiddlewares {
  final IAjoutAdRepository ajoutAdRepository;

  AjoutAdMiddlewares(this.ajoutAdRepository);

  static List<Middleware<EnsState>> create(
    IAjoutAdRepository ajoutAdRepository,
  ) {
    final middlewares = AjoutAdMiddlewares(ajoutAdRepository);
    return [
      TypedMiddleware<EnsState, FetchAjoutAdPossiblesAction>(middlewares._onFetchAjoutAdPossiblesAction).call,
      TypedMiddleware<EnsState, ActivateAdsProfilsAction>(middlewares._onActivateAdsProfilsAction).call,
      TypedMiddleware<EnsState, FetchActivateAdsProfilsResultAction>(
        middlewares._onFetchActivateAdsProfilsResultAction,
      ).call,
    ];
  }

  Future<void> _onFetchAjoutAdPossiblesAction(
    Store<EnsState> store,
    FetchAjoutAdPossiblesAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getConnectedUserPatientId(store.state);
    if (action.force || store.state.ajoutAdState.status.isNotSuccess()) {
      final result = await ajoutAdRepository.getAdsAAjouter(patientId);
      result.onSuccess((successResult) {
        store.dispatch(ProcessFetchAdToAddSuccessAction(successResult.adsToAdd));
        store.dispatch(_ProcessFetchNonActivableSuccessAction(successResult.nonActivableAds));
      });
      result.onError((_) {
        store.dispatch(ProcessFetchAdToAddErrorAction());
      });
    }
  }

  Future<void> _onActivateAdsProfilsAction(
    Store<EnsState> store,
    ActivateAdsProfilsAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final result = await ajoutAdRepository.activateAdsProfils(action.adsIds);
    result.onSuccess((successResult) {
      store.dispatch(FetchRecommandationDiffereeAction());
      store.dispatch(_ProcessActivateAdsProfilsSuccessAction(selectedAdsId: action.adsIds));
      _fetchResults(action.adsIds, store);
    });
    result.onError((_) {
      store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
      store.dispatch(_ProcessActivateAdsProfilsErrorAction());
    });
  }

  Future<void> _onFetchActivateAdsProfilsResultAction(
    Store<EnsState> store,
    FetchActivateAdsProfilsResultAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final selectedAdsId = store.state.ajoutAdState.activateAdsProfilsState.selectedAdsId;
    _fetchResults(selectedAdsId, store);
  }

  Future<void> _fetchResults(List<int> adsIds, Store<EnsState> store) async {
    final patientId = UserSelectors.getConnectedUserPatientId(store.state);
    final result = await ajoutAdRepository.getActivationProfilsAdsResult(patientId: patientId, adIds: adsIds);
    result.onSuccess((successResult) {
      store.dispatch(
        _ProcessFetchActivateAdsProfilsResultSuccessAction(
          adsActivated: successResult.profilsActivationSucceed,
          adsNotActivated: successResult.profilsActivationFailed,
        ),
      );
    });
    result.onError((_) {
      store.dispatch(_ProcessFetchActivateAdsProfilsResultErrorAction());
    });
  }
}
