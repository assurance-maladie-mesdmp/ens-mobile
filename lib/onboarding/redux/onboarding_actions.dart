/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'onboarding_redux.dart';

class FetchFirstConnexionOnboardingDataAction {}

class FetchShouldDisplayIncitationPmlBottomSheetAction {
  final bool isFirstConnexionOnboardingDone;

  const FetchShouldDisplayIncitationPmlBottomSheetAction({required this.isFirstConnexionOnboardingDone});
}

class _ProcessFetchShouldDisplayIncitationPmlBottomSheetAction {
  final bool shouldDisplayIncitationPmlBottomSheet;

  _ProcessFetchShouldDisplayIncitationPmlBottomSheetAction(this.shouldDisplayIncitationPmlBottomSheet);
}

class SetShouldDisplayIncitationPmlBottomSheetAction {
  final bool shouldDisplayIncitationPmlBottomSheet;

  SetShouldDisplayIncitationPmlBottomSheetAction(this.shouldDisplayIncitationPmlBottomSheet);
}

class _ProcessIncitationPmlBottomSheetDoneAction {}
