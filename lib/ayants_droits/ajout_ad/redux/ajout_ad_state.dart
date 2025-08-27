/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'ajout_ad_redux.dart';

class AjoutAdState extends Equatable {
  final AllPurposesStatus status;
  final List<AdToAdd> adsToAdd;
  final List<NonActivableAd> nonActivableAds;
  final ActivateAdsProfilsState activateAdsProfilsState;
  final ActivateAdsProfilsResultState activateAdsProfilsResultState;

  const AjoutAdState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.adsToAdd = const [],
    this.nonActivableAds = const [],
    this.activateAdsProfilsState = const ActivateAdsProfilsState(),
    this.activateAdsProfilsResultState = const ActivateAdsProfilsResultState(),
  });

  factory AjoutAdState.initial() => const AjoutAdState(
        status: AllPurposesStatus.LOADING,
        adsToAdd: [],
        nonActivableAds: [],
      );

  AjoutAdState clone({
    AllPurposesStatus? status,
    List<AdToAdd>? adsToAdd,
    List<NonActivableAd>? nonActivableAds,
    ActivateAdsProfilsState? activateAdsProfilsState,
    ActivateAdsProfilsResultState? activateAdsProfilsResultState,
  }) {
    return AjoutAdState(
      status: status ?? this.status,
      adsToAdd: adsToAdd ?? this.adsToAdd,
      nonActivableAds: nonActivableAds ?? this.nonActivableAds,
      activateAdsProfilsState: activateAdsProfilsState ?? this.activateAdsProfilsState,
      activateAdsProfilsResultState: activateAdsProfilsResultState ?? this.activateAdsProfilsResultState,
    );
  }

  @override
  List<Object?> get props => [
        status,
        adsToAdd,
        nonActivableAds,
        activateAdsProfilsState,
        activateAdsProfilsResultState,
      ];
}

class ActivateAdsProfilsState extends Equatable {
  final AllPurposesStatus status;
  final List<int> selectedAdsId;

  const ActivateAdsProfilsState({this.status = AllPurposesStatus.NOT_LOADED, this.selectedAdsId = const []});

  @override
  List<Object?> get props => [status, selectedAdsId];

  ActivateAdsProfilsState clone({
    AllPurposesStatus? status,
    List<int>? selectedAdsId,
  }) {
    return ActivateAdsProfilsState(
      status: status ?? this.status,
      selectedAdsId: selectedAdsId ?? this.selectedAdsId,
    );
  }
}

class ActivateAdsProfilsResultState extends Equatable {
  final AllPurposesStatus status;
  final List<ProfileActivationResult> adsActivatedProfiles;
  final List<ProfileActivationResult> adsNotActivatedProfiles;

  const ActivateAdsProfilsResultState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.adsActivatedProfiles = const [],
    this.adsNotActivatedProfiles = const [],
  });

  @override
  List<Object?> get props => [status, adsActivatedProfiles, adsNotActivatedProfiles];

  ActivateAdsProfilsResultState clone({
    AllPurposesStatus? status,
    List<ProfileActivationResult>? adsActivatedProfiles,
    List<ProfileActivationResult>? adsNotActivatedProfiles,
  }) {
    return ActivateAdsProfilsResultState(
      status: status ?? this.status,
      adsActivatedProfiles: adsActivatedProfiles ?? this.adsActivatedProfiles,
      adsNotActivatedProfiles: adsNotActivatedProfiles ?? this.adsNotActivatedProfiles,
    );
  }
}
