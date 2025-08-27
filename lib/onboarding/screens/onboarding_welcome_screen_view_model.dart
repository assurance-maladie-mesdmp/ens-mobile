/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/ayants_droits/ajout_ad/redux/ajout_ad_redux.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/onboarding/redux/onboarding_redux.dart';
import 'package:fr_cnamts_ens/parameters/consentements_urgence/redux/consentements_urgence_states.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:fr_cnamts_ens/utils/extensions/profil_extension.dart';
import 'package:redux/redux.dart';

class OnboardingWelcomeScreenViewModel extends Equatable {
  final String mainFirstName;
  final AllPurposesStatus status;
  final void Function() load;

  const OnboardingWelcomeScreenViewModel._({
    required this.mainFirstName,
    required this.status,
    required this.load,
  });

  factory OnboardingWelcomeScreenViewModel.from(Store<EnsState> store) {
    final mainFirstName = store.state.userState.currentProfile.mainFirstName;

    final consentementsUrgenceState = store.state.consentementsUrgenceState;
    final defaultConfidentialityState = store.state.documentsState.defaultConfidentialityState;
    final ajoutAdStateFinishLoaded = store.state.ajoutAdState.status.isFinishLoaded();

    return OnboardingWelcomeScreenViewModel._(
      mainFirstName: mainFirstName,
      status: _getStatus(consentementsUrgenceState, defaultConfidentialityState, ajoutAdStateFinishLoaded),
      load: () {
        store.dispatch(FetchFirstConnexionOnboardingDataAction());
        store.dispatch(FetchAjoutAdPossiblesAction());
      },
    );
  }

  @override
  List<Object?> get props => [mainFirstName, status];

  static AllPurposesStatus _getStatus(
    ConsentementsUrgenceState consentementsUrgenceState,
    DefaultConfidentialityState defaultConfidentialityState,
    bool ajoutAdStateFinishLoaded,
  ) {
    if (consentementsUrgenceState.status.isSuccess() &&
        defaultConfidentialityState.isSuccessWithData &&
        ajoutAdStateFinishLoaded) {
      return AllPurposesStatus.SUCCESS;
    } else if (consentementsUrgenceState.status.isError() || defaultConfidentialityState.isErrorOrSuccessWithoutData) {
      return AllPurposesStatus.ERROR;
    }
    return AllPurposesStatus.LOADING;
  }
}
