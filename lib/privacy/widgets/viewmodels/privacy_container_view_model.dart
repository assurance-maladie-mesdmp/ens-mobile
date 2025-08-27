/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:fr_cnamts_ens/privacy/redux/privacy_actions.dart';
import 'package:redux/redux.dart';

class PrivacyContainerViewModel extends Equatable {
  final bool showPrivacyBanner;
  final void Function() markPrivacyBannerShown;
  final void Function() acceptAll;
  final void Function() declineAll;
  final void Function() openPrivacyCenter;

  const PrivacyContainerViewModel._internal({
    required this.showPrivacyBanner,
    required this.markPrivacyBannerShown,
    required this.acceptAll,
    required this.declineAll,
    required this.openPrivacyCenter,
  });

  factory PrivacyContainerViewModel(Store<EnsInitialState> store) {
    return PrivacyContainerViewModel._internal(
      markPrivacyBannerShown: () {
        store.dispatch(PrivacyBannerShownAction());
      },
      showPrivacyBanner: !store.state.privacyBannerShown,
      acceptAll: () {
        store.dispatch(PrivacyAcceptAllAction());
      },
      declineAll: () {
        store.dispatch(PrivacyDeclineAllAction());
      },
      openPrivacyCenter: () {
        store.dispatch(PrivacyOpenParametersAction());
      },
    );
  }

  @override
  List<Object?> get props => [showPrivacyBanner];
}
