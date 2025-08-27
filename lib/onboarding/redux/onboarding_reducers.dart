/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'onboarding_redux.dart';

class OnboardingReducers {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, FetchFirstConnexionOnboardingDataAction>(
          OnboardingReducers._onFetchFirstConnexionOnboardingDataAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchShouldDisplayIncitationPmlBottomSheetAction>(
          OnboardingReducers._onProcessFetchShouldDisplayIncitationPmlBottomSheetAction,
        ).call,
        TypedReducer<EnsState, _ProcessIncitationPmlBottomSheetDoneAction>(
          OnboardingReducers._onProcessIncitationPmlBottomSheetDoneAction,
        ).call,
      ];

  static EnsState _onFetchFirstConnexionOnboardingDataAction(
    EnsState state,
    FetchFirstConnexionOnboardingDataAction action,
  ) {
    final currentDefaultConfidentialityState = state.documentsState.defaultConfidentialityState;
    return state.clone(
      documentsState: state.documentsState.clone(
        defaultConfidentialityState: currentDefaultConfidentialityState.clone(getStatus: AllPurposesStatus.LOADING),
      ),
    );
  }

  static EnsState _onProcessFetchShouldDisplayIncitationPmlBottomSheetAction(
    EnsState state,
    _ProcessFetchShouldDisplayIncitationPmlBottomSheetAction action,
  ) {
    return state.clone(
      onboardingState: OnboardingState(
        shouldDisplayIncitationPmlBottomSheet: action.shouldDisplayIncitationPmlBottomSheet,
      ),
    );
  }

  static EnsState _onProcessIncitationPmlBottomSheetDoneAction(
    EnsState state,
    _ProcessIncitationPmlBottomSheetDoneAction action,
  ) {
    return state.clone(
      onboardingState: const OnboardingState(shouldDisplayIncitationPmlBottomSheet: false),
    );
  }
}
