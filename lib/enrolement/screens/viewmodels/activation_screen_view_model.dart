/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/enrolement/redux/enrolement_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';
import 'package:redux/redux.dart';

class ActivationScreenViewModel extends Equatable {
  final AllPurposesEnrolementStatus acceptCGUStatus;
  final void Function() sendCGUAcceptation;
  final bool isEnrolementAd;
  final String? firstName;
  final String fullName;
  final bool isOdAccountActivated;

  const ActivationScreenViewModel._({
    required this.acceptCGUStatus,
    required this.isEnrolementAd,
    required this.firstName,
    required this.fullName,
    required this.sendCGUAcceptation,
    required this.isOdAccountActivated,
  });

  factory ActivationScreenViewModel.from(Store<EnsInitialState> store) {
    final enrolementState = store.state.enrolementState;
    final firstName = store.state.enrolementState.userIdentite.firstName?.capitalizeName();
    final fullName = '$firstName ${store.state.enrolementState.userIdentite.lastName?.capitalizeName()}';
    final isOdAccountActivated = store.state.enrolementState.isOdAccountActivated;
    return ActivationScreenViewModel._(
      acceptCGUStatus: enrolementState.acceptCGUStatus,
      isEnrolementAd: enrolementState.userIdentite.isAd,
      firstName: firstName,
      fullName: fullName,
      sendCGUAcceptation: () {
        store.dispatch(AcceptCGUAction());
      },
      isOdAccountActivated: isOdAccountActivated,
    );
  }

  @override
  List<Object?> get props => [acceptCGUStatus, isEnrolementAd, firstName, fullName, isOdAccountActivated];
}
