/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/enrolement/domain/type_contact_code_provisoire_enum.dart';
import 'package:fr_cnamts_ens/enrolement/domain/user_contact.dart';
import 'package:fr_cnamts_ens/enrolement/redux/enrolement_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:redux/redux.dart';

class CoordonneesScreenViewModel extends Equatable {
  final UserContact userContact;
  final AllPurposesEnrolementStatus sendCodeStatus;
  final void Function(TypeContactCodeProvisoire typeContact) sendCode;

  const CoordonneesScreenViewModel._({
    required this.userContact,
    required this.sendCodeStatus,
    required this.sendCode,
  });

  factory CoordonneesScreenViewModel(Store<EnsInitialState> store) {
    final enrolementState = store.state.enrolementState;
    return CoordonneesScreenViewModel._(
      userContact: enrolementState.userContact,
      sendCodeStatus: enrolementState.sendCodeProvisoireStatus,
      sendCode: (typeContact) {
        store.dispatch(SendCodeProvisoireAction(typeContactCodeProvisoire: typeContact));
      },
    );
  }

  @override
  List<Object?> get props => [userContact, sendCodeStatus];
}
