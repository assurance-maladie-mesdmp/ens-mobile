/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/auth/domain/model/ens_auth.dart';
import 'package:fr_cnamts_ens/auth/redux/auth_actions.dart';
import 'package:fr_cnamts_ens/enrolement/redux/enrolement_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:fr_cnamts_ens/interruption_services/domain/interruption_de_service_info.dart';
import 'package:fr_cnamts_ens/interruption_services/redux/interruption_selectors.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';
import 'package:redux/redux.dart';

class ProfilActiveScreenViewModel extends Equatable {
  final bool isAuthenticating;
  final bool shouldDisplayLoginScreen;
  final bool isEnrolementAd;
  final String? firstName;
  final Function() resetEnrolementState;
  final Function() enterAuthenticatedMode;
  final String? interruptionServiceSnackbarMessage;

  const ProfilActiveScreenViewModel._({
    required this.isAuthenticating,
    required this.shouldDisplayLoginScreen,
    required this.isEnrolementAd,
    required this.resetEnrolementState,
    required this.enterAuthenticatedMode,
    this.firstName,
    this.interruptionServiceSnackbarMessage,
  });

  factory ProfilActiveScreenViewModel.from(Store<EnsInitialState> store) {
    final authStatus = store.state.authState.status;
    final userIdentite = store.state.enrolementState.userIdentite;
    final interruptionServiceSnackbarMessage = InterruptionSelectors.getCurrentInterruptionInfosNonConnecte(
      state: store.state,
      domaine: DomaineInterruption.SYSTEME_AUTHENTIFICATION,
    )?.messageSnackbar;

    return ProfilActiveScreenViewModel._(
      isAuthenticating: authStatus == AuthStatus.LOGIN_IN_WITH_ANOTHER_ACCOUNT,
      shouldDisplayLoginScreen: [AuthStatus.LOGGED_IN, AuthStatus.NOT_LOGGED_IN, AuthStatus.ERROR].contains(authStatus),
      isEnrolementAd: userIdentite.isAd,
      firstName: userIdentite.firstName?.capitalizeName(),
      resetEnrolementState: () => store.dispatch(ResetEnrolementAction()),
      enterAuthenticatedMode: () => store.dispatch(EnterAuthenticatedModeAction(true)),
      interruptionServiceSnackbarMessage: interruptionServiceSnackbarMessage,
    );
  }

  @override
  List<Object?> get props => [
        isAuthenticating,
        shouldDisplayLoginScreen,
        isEnrolementAd,
        firstName,
        interruptionServiceSnackbarMessage,
      ];
}
