/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'onboarding_redux.dart';

class OnboardingMiddleware {
  final IOnboardingRepository onboardingRepository;
  final ISecureStorageRepository secureStorageRepository;

  OnboardingMiddleware._internal(this.onboardingRepository, this.secureStorageRepository);

  static List<Middleware<EnsState>> create(
    IOnboardingRepository onboardingRepository,
    ISecureStorageRepository secureStorageRepository,
  ) {
    final middlewares = OnboardingMiddleware._internal(onboardingRepository, secureStorageRepository);
    return [
      TypedMiddleware<EnsState, FetchFirstConnexionOnboardingDataAction>(
        middlewares._onFetchFirstConnexionOnboardingDataAction,
      ).call,
      TypedMiddleware<EnsState, FetchShouldDisplayIncitationPmlBottomSheetAction>(
        middlewares._onFetchShouldDisplayIncitationPmlBottomSheetAction,
      ).call,
      TypedMiddleware<EnsState, SetShouldDisplayIncitationPmlBottomSheetAction>(
        middlewares._onSetShouldDisplayIncitationPmlBottomSheetAction,
      ).call,
    ];
  }

  Future<void> _onFetchFirstConnexionOnboardingDataAction(
    Store<EnsState> store,
    FetchFirstConnexionOnboardingDataAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final String patientId = UserSelectors.getPatientId(store.state);
    final result = await onboardingRepository.fetchOnboardingData(patientId);

    store.dispatch(ProcessFetchedConsentementsUrgenceAction(result.consentementsUrgence));
    result.documentConfidentiality.onSuccess((defaultConfidentiality) {
      store.dispatch(
        ProcessFetchDefaultConfidentialitySuccessAction(
          defaultConfidentiality: defaultConfidentiality,
          patientId: patientId,
        ),
      );
    }).onError((_) {
      store.dispatch(ProcessFetchDefaultConfidentialityErrorAction());
    });
  }

  Future<void> _onFetchShouldDisplayIncitationPmlBottomSheetAction(
    Store<EnsState> store,
    FetchShouldDisplayIncitationPmlBottomSheetAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final secureStorageInfoOfIncitationPml =
        await secureStorageRepository.readShouldDisplayIncitationPmlBottomSheet(patientId);
    final isPmlNotCompleted =
        IncitationPmlSelectors.getIncitationPmlStatus(store.state) == IncitationPmlStatus.INCITER_COMPLETER_PML;

    final shouldDisplayIncitationPmlBottomSheet =
        action.isFirstConnexionOnboardingDone && secureStorageInfoOfIncitationPml != false && isPmlNotCompleted;
    store.dispatch(_ProcessFetchShouldDisplayIncitationPmlBottomSheetAction(shouldDisplayIncitationPmlBottomSheet));
  }

  Future<void> _onSetShouldDisplayIncitationPmlBottomSheetAction(
    Store<EnsState> store,
    SetShouldDisplayIncitationPmlBottomSheetAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final String patientId = UserSelectors.getPatientId(store.state);
    final shouldDisplayIncitationPmlBottomSheet = action.shouldDisplayIncitationPmlBottomSheet;
    await secureStorageRepository.writeShouldDisplayIncitationPmlBottomSheet(
      patientId,
      shouldDisplayIncitationPmlBottomSheet,
    );
    if (!shouldDisplayIncitationPmlBottomSheet) {
      store.dispatch(_ProcessIncitationPmlBottomSheetDoneAction());
    }
  }
}
