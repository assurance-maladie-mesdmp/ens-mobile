/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/auth/domain/model/ens_auth.dart';
import 'package:fr_cnamts_ens/developpeur_outils/redux/developpeur_outils_redux.dart';
import 'package:fr_cnamts_ens/enrolement/redux/enrolement_redux.dart';
import 'package:fr_cnamts_ens/infra/receive_sharing/redux/receive_sharing_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_generic_state.dart';
import 'package:fr_cnamts_ens/interruption_services/redux/interruption_services_redux.dart';
import 'package:fr_cnamts_ens/messages_pannes/redux/messages_pannes_redux.dart';
import 'package:fr_cnamts_ens/snackbar/redux/snackbar_states.dart';
import 'package:optional/optional.dart';

class EnsInitialState extends EnsGenericState {
  final AuthState authState;
  final bool privacyBannerShown;
  final MessagePanneState loginScreenMessagePanneState;
  final String? deeplink;
  final String? username;
  final ReceiveSharingState receiveSharingState;
  final EnrolementState enrolementState;
  final DeveloppeurOutilsState developpeurOutilsState;
  final InterruptionServicesState interruptionServicesState;

  const EnsInitialState({
    required this.authState,
    required this.privacyBannerShown,
    required this.loginScreenMessagePanneState,
    this.deeplink,
    this.username,
    required this.receiveSharingState,
    required this.enrolementState,
    required super.snackbarContainerState,
    required this.developpeurOutilsState,
    required this.interruptionServicesState,
  });

  @override
  List<Object?> get props => [
        ...super.props,
        authState,
        privacyBannerShown,
        loginScreenMessagePanneState,
        deeplink,
        username,
        receiveSharingState,
        enrolementState,
        developpeurOutilsState,
        interruptionServicesState,
      ];

  EnsInitialState clone({
    AuthState? authState,
    bool? privacyBannerShown,
    MessagePanneState? loginScreenMessagePanneState,
    String? deeplink,
    Optional<String>? username,
    ReceiveSharingState? receiveSharingState,
    EnrolementState? enrolementState,
    SnackbarContainerState? snackbarContainerState,
    DeveloppeurOutilsState? developpeurOutilsState,
    InterruptionServicesState? interruptionServicesState,
  }) {
    return EnsInitialState(
      authState: authState ?? this.authState,
      privacyBannerShown: privacyBannerShown ?? this.privacyBannerShown,
      loginScreenMessagePanneState: loginScreenMessagePanneState ?? this.loginScreenMessagePanneState,
      deeplink: deeplink ?? this.deeplink,
      username: username != null ? username.orElseNullable(null) : this.username,
      receiveSharingState: receiveSharingState ?? this.receiveSharingState,
      enrolementState: enrolementState ?? this.enrolementState,
      snackbarContainerState: snackbarContainerState ?? this.snackbarContainerState,
      developpeurOutilsState: developpeurOutilsState ?? this.developpeurOutilsState,
      interruptionServicesState: interruptionServicesState ?? this.interruptionServicesState,
    );
  }

  EnsInitialState cloneWithResetDeeplink() {
    return EnsInitialState(
      authState: authState,
      privacyBannerShown: privacyBannerShown,
      loginScreenMessagePanneState: loginScreenMessagePanneState,
      deeplink: null,
      receiveSharingState: receiveSharingState,
      enrolementState: enrolementState,
      snackbarContainerState: snackbarContainerState,
      developpeurOutilsState: developpeurOutilsState,
      interruptionServicesState: interruptionServicesState,
    );
  }
}
