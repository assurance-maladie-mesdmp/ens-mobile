/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:redux/redux.dart';

class UpdateCoordonneesViewModel extends Equatable {
  final String? email;
  final String? telephone;

  const UpdateCoordonneesViewModel._({required this.email, required this.telephone});

  factory UpdateCoordonneesViewModel(Store<EnsInitialState> store) {
    final enrolementState = store.state.enrolementState;

    return UpdateCoordonneesViewModel._(
      email: enrolementState.userContact.unmaskedEmail,
      telephone: enrolementState.userContact.unmaskedTelephone,
    );
  }

  @override
  List<Object?> get props => [email, telephone];
}
