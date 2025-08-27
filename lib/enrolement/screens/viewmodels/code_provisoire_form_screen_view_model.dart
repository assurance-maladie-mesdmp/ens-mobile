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

class CodeProvisoireFormScreenViewModel extends Equatable {
  final CodeProvisoireStatus status;
  final TypeContactCodeProvisoire? typeContactCodeProvisoire;
  final UserContact userContact;
  final String description;
  final void Function(String codeProvisoire) sendForm;
  final bool isEnrolementAd;
  final bool isOdAccountActivated;

  const CodeProvisoireFormScreenViewModel._({
    required this.status,
    required this.typeContactCodeProvisoire,
    required this.userContact,
    required this.description,
    required this.sendForm,
    required this.isEnrolementAd,
    required this.isOdAccountActivated,
  });

  factory CodeProvisoireFormScreenViewModel(Store<EnsInitialState> store) {
    final enrolementState = store.state.enrolementState;
    return CodeProvisoireFormScreenViewModel._(
      typeContactCodeProvisoire: enrolementState.userContact.typeContactCodeProvisoire,
      userContact: enrolementState.userContact,
      status: enrolementState.validationCodeProvisoireStatus,
      description: _getDescriptionText(enrolementState.userContact),
      isEnrolementAd: enrolementState.userIdentite.isAd,
      sendForm: (codeProvisoire) {
        store.dispatch(ValidationCodeProvisoireAction(codeProvisoire: codeProvisoire));
      },
      isOdAccountActivated: store.state.enrolementState.isOdAccountActivated,
    );
  }

  @override
  List<Object?> get props => [
        status,
        typeContactCodeProvisoire,
        userContact,
        description,
        isEnrolementAd,
        isOdAccountActivated,
      ];
}

String _getDescriptionText(UserContact userContact) {
  return switch (userContact.typeContactCodeProvisoire) {
    TypeContactCodeProvisoire.COURRIER => 'Je renseigne ici le code provisoire que j\’ai reçu par courrier.',
    TypeContactCodeProvisoire.E_MAIL => 'Je saisis le code provisoire reçu à l’adresse e-mail ${userContact.email}.',
    TypeContactCodeProvisoire.TELEPHONE => 'Je saisis le code reçu par sms au ${userContact.telephone}.',
    _ => ''
  };
}
