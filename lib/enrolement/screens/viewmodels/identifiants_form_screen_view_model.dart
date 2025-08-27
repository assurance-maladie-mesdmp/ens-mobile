/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/enrolement/redux/enrolement_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:redux/redux.dart';

class IdentifiantsFormScreenViewModel extends Equatable {
  final String? numeroSecu;
  final AllPurposesEnrolementStatus createAccountStatus;
  final void Function({required String identifiant, required String motDePasse}) sendForm;

  const IdentifiantsFormScreenViewModel._({
    required this.sendForm,
    required this.createAccountStatus,
    required this.numeroSecu,
  });

  factory IdentifiantsFormScreenViewModel.from(Store<EnsInitialState> store) {
    final enrolementState = store.state.enrolementState;
    return IdentifiantsFormScreenViewModel._(
      numeroSecu: enrolementState.userIdentite.numeroSecu,
      createAccountStatus: enrolementState.createAccountStatus,
      sendForm: ({required identifiant, required motDePasse}) {
        store.dispatch(CreateAccountAction(identifiant: identifiant, motDeAPasse: motDePasse));
      },
    );
  }

  @override
  List<Object?> get props => [numeroSecu, createAccountStatus];
}
