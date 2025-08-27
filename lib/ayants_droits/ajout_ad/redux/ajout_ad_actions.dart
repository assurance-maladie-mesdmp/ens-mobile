/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'ajout_ad_redux.dart';

class FetchAjoutAdPossiblesAction {
  final bool force;

  FetchAjoutAdPossiblesAction({this.force = false});
}

class ProcessFetchAdToAddSuccessAction {
  final List<AdToAdd> ads;

  ProcessFetchAdToAddSuccessAction(this.ads);
}

class _ProcessFetchNonActivableSuccessAction {
  final List<NonActivableAd> ads;

  _ProcessFetchNonActivableSuccessAction(this.ads);
}

class ProcessFetchAdToAddErrorAction {}

class ActivateAdsProfilsAction {
  List<int> adsIds;

  ActivateAdsProfilsAction({required this.adsIds});
}

class _ProcessActivateAdsProfilsSuccessAction {
  final List<int> selectedAdsId;

  _ProcessActivateAdsProfilsSuccessAction({required this.selectedAdsId});
}

class _ProcessActivateAdsProfilsErrorAction {}

class FetchActivateAdsProfilsResultAction {}

class _ProcessFetchActivateAdsProfilsResultSuccessAction {
  List<ProfileActivationResult> adsActivated;
  List<ProfileActivationResult> adsNotActivated;

  _ProcessFetchActivateAdsProfilsResultSuccessAction({
    required this.adsActivated,
    required this.adsNotActivated,
  });
}

class _ProcessFetchActivateAdsProfilsResultErrorAction {}

class ResetAjoutAdState {}

class ResetActivateAdsProfilsStates {}
