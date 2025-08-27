/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'ajout_ad_redux.dart';

class AjoutAdReducers {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, FetchAjoutAdPossiblesAction>(
          AjoutAdReducers.onFetchAjoutAdPossiblesAction,
        ).call,
        TypedReducer<EnsState, ProcessFetchAdToAddErrorAction>(
          AjoutAdReducers._onProcessFetchAdToAddErrorAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchNonActivableSuccessAction>(
          AjoutAdReducers._onProcessFetchNonActivableSuccessAction,
        ).call,
        TypedReducer<EnsState, ProcessFetchAdToAddSuccessAction>(
          AjoutAdReducers._onProcessFetchAdToAddSuccessAction,
        ).call,
        TypedReducer<EnsState, ActivateAdsProfilsAction>(
          AjoutAdReducers._onActivateAdsProfilsAction,
        ).call,
        TypedReducer<EnsState, _ProcessActivateAdsProfilsSuccessAction>(
          AjoutAdReducers._onProcessActivateAdsProfilsSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessActivateAdsProfilsErrorAction>(
          AjoutAdReducers._onProcessActivateAdsProfilsErrorAction,
        ).call,
        TypedReducer<EnsState, FetchActivateAdsProfilsResultAction>(
          AjoutAdReducers._onProcessFetchActivateAdsProfilsResultAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchActivateAdsProfilsResultSuccessAction>(
          AjoutAdReducers._onProcessFetchActivateAdsProfilsResultSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchActivateAdsProfilsResultErrorAction>(
          AjoutAdReducers._onProcessFetchActivateAdsProfilsResultErrorAction,
        ).call,
        TypedReducer<EnsState, ResetAjoutAdState>(
          AjoutAdReducers._onResetAjoutAdState,
        ).call,
        TypedReducer<EnsState, ResetActivateAdsProfilsStates>(
          AjoutAdReducers._onResetActivateAdsProfilsStates,
        ).call,
      ];

  static EnsState onFetchAjoutAdPossiblesAction(
    EnsState state,
    FetchAjoutAdPossiblesAction action,
  ) {
    if (action.force || state.ajoutAdState.status.isNotSuccess()) {
      return state.clone(ajoutAdState: state.ajoutAdState.clone(status: AllPurposesStatus.LOADING));
    } else {
      return state;
    }
  }

  static EnsState _onProcessFetchAdToAddErrorAction(
    EnsState state,
    ProcessFetchAdToAddErrorAction action,
  ) {
    return state.clone(ajoutAdState: state.ajoutAdState.clone(status: AllPurposesStatus.ERROR));
  }

  static EnsState _onProcessFetchAdToAddSuccessAction(
    EnsState state,
    ProcessFetchAdToAddSuccessAction action,
  ) {
    return state.clone(
      ajoutAdState: state.ajoutAdState.clone(
        status: AllPurposesStatus.SUCCESS,
        adsToAdd: action.ads,
      ),
    );
  }

  static EnsState _onProcessFetchNonActivableSuccessAction(
    EnsState state,
    _ProcessFetchNonActivableSuccessAction action,
  ) {
    return state.clone(
      ajoutAdState: state.ajoutAdState.clone(
        nonActivableAds: action.ads,
      ),
    );
  }

  static EnsState _onActivateAdsProfilsAction(EnsState state, ActivateAdsProfilsAction action) {
    return state.clone(
      ajoutAdState: state.ajoutAdState.clone(
        activateAdsProfilsState: state.ajoutAdState.activateAdsProfilsState.clone(
          status: AllPurposesStatus.LOADING,
        ),
      ),
    );
  }

  static EnsState _onProcessActivateAdsProfilsSuccessAction(
    EnsState state,
    _ProcessActivateAdsProfilsSuccessAction action,
  ) {
    return state.clone(
      ajoutAdState: state.ajoutAdState.clone(
        activateAdsProfilsState: state.ajoutAdState.activateAdsProfilsState.clone(
          status: AllPurposesStatus.SUCCESS,
          selectedAdsId: action.selectedAdsId,
        ),
        activateAdsProfilsResultState: state.ajoutAdState.activateAdsProfilsResultState.clone(
          status: AllPurposesStatus.LOADING,
        ),
      ),
    );
  }

  static EnsState _onProcessActivateAdsProfilsErrorAction(
    EnsState state,
    _ProcessActivateAdsProfilsErrorAction action,
  ) {
    return state.clone(
      ajoutAdState: state.ajoutAdState.clone(
        activateAdsProfilsState: state.ajoutAdState.activateAdsProfilsState.clone(
          status: AllPurposesStatus.ERROR,
        ),
      ),
    );
  }

  static EnsState _onProcessFetchActivateAdsProfilsResultAction(
    EnsState state,
    FetchActivateAdsProfilsResultAction action,
  ) {
    return state.clone(
      ajoutAdState: state.ajoutAdState.clone(
        activateAdsProfilsResultState: state.ajoutAdState.activateAdsProfilsResultState.clone(
          status: AllPurposesStatus.LOADING,
        ),
      ),
    );
  }

  static EnsState _onProcessFetchActivateAdsProfilsResultSuccessAction(
    EnsState state,
    _ProcessFetchActivateAdsProfilsResultSuccessAction action,
  ) {
    final ajoutAdState = state.ajoutAdState;
    final activateAdsProfilsResultState = ajoutAdState.activateAdsProfilsResultState;
    final profilsRattaches = state.profilsRattachesState.profilsRattaches;

    return state.clone(
      ajoutAdState: ajoutAdState.clone(
        adsToAdd: List<AdToAdd>.from(ajoutAdState.adsToAdd)
          ..removeWhere(
            (adToAdd) =>
                action.adsActivated.any((adActivated) => adActivated.index == adToAdd.id) ||
                action.adsNotActivated.any((adNotActivated) => adNotActivated.index == adToAdd.id),
          ),
        nonActivableAds: List<NonActivableAd>.from(ajoutAdState.nonActivableAds)
          ..addAll(
            ajoutAdState.adsToAdd
                .where((adToAdd) => action.adsNotActivated.any((adNotActivated) => adToAdd.id == adNotActivated.index))
                .map(
                  (adToAdd) => NonActivableAd(
                    firstName: adToAdd.firstName,
                    lastName: adToAdd.lastName,
                    status: adToAdd.status,
                  ),
                ),
          ),
        activateAdsProfilsResultState: activateAdsProfilsResultState.clone(
          status: AllPurposesStatus.SUCCESS,
          adsActivatedProfiles: action.adsActivated,
          adsNotActivatedProfiles: action.adsNotActivated,
        ),
      ),
      profilsRattachesState: state.profilsRattachesState.clone(
        profilsRattaches: List<EnsProfilRattache>.from(profilsRattaches)
          ..addAll(
            action.adsActivated.mapIndexed(
              (index, adActivated) => EnsProfilRattache(
                patientId: adActivated.patientId,
                firstName: adActivated.firstName,
                lastName: adActivated.lastName,
                profilRattacheType: ProfilRattacheType.AYANT_DROIT,
                index: profilsRattaches.length + index,
              ),
            ),
          ),
      ),
    );
  }

  static EnsState _onProcessFetchActivateAdsProfilsResultErrorAction(
    EnsState state,
    _ProcessFetchActivateAdsProfilsResultErrorAction action,
  ) {
    return state.clone(
      ajoutAdState: state.ajoutAdState.clone(
        activateAdsProfilsResultState: state.ajoutAdState.activateAdsProfilsResultState.clone(
          status: AllPurposesStatus.ERROR,
        ),
      ),
    );
  }

  static EnsState _onResetAjoutAdState(
    EnsState state,
    ResetAjoutAdState action,
  ) {
    return state.clone(
      ajoutAdState: const AjoutAdState(),
    );
  }

  static EnsState _onResetActivateAdsProfilsStates(
    EnsState state,
    ResetActivateAdsProfilsStates action,
  ) {
    return state.clone(
      ajoutAdState: state.ajoutAdState.clone(
        activateAdsProfilsState: const ActivateAdsProfilsState(),
        activateAdsProfilsResultState: const ActivateAdsProfilsResultState(),
      ),
    );
  }
}
