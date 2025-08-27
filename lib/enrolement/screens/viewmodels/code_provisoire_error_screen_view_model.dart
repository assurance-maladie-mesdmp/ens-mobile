/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/enrolement/domain/type_contact_code_provisoire_enum.dart';
import 'package:fr_cnamts_ens/enrolement/redux/enrolement_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:redux/redux.dart';

class CodeProvisoireErrorScreenViewModel extends Equatable {
  final TypeError typeError;
  final Function() resetEnrolementState;

  const CodeProvisoireErrorScreenViewModel._({
    required this.typeError,
    required this.resetEnrolementState,
  });

  factory CodeProvisoireErrorScreenViewModel(Store<EnsInitialState> store) {
    final enrolementState = store.state.enrolementState;

    return CodeProvisoireErrorScreenViewModel._(
      typeError: _getTypeError(
        enrolementState.userContact.typeContactCodeProvisoire,
        enrolementState.validationCodeProvisoireStatus,
      ),
      resetEnrolementState: () {
        store.dispatch(ResetEnrolementAction());
      },
    );
  }

  @override
  List<Object?> get props => [typeError];
}

enum TypeError { CODE_EMAIL_OR_SMS_EXPIRED, CODE_COURRIER_EXPIRED, CODE_ALREADY_USED }

TypeError _getTypeError(TypeContactCodeProvisoire? typeContact, CodeProvisoireStatus codeProvisoireStatus) {
  if (codeProvisoireStatus == CodeProvisoireStatus.CODE_EXPIRED) {
    return typeContact == TypeContactCodeProvisoire.COURRIER
        ? TypeError.CODE_COURRIER_EXPIRED
        : TypeError.CODE_EMAIL_OR_SMS_EXPIRED;
  } else {
    return TypeError.CODE_ALREADY_USED;
  }
}
