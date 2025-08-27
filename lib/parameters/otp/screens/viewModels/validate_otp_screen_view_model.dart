/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:fr_cnamts_ens/enrolement/redux/enrolement_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/user/domain/model/contact_change.dart';
import 'package:fr_cnamts_ens/user/domain/model/otp_validation.dart';
import 'package:fr_cnamts_ens/user/redux/user_actions.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:redux/redux.dart';

class ValidateOtpScreenViewModel extends Equatable {
  static const EMPTY_VALUE = '';

  final AllPurposesStatus validateOtpStatus;
  final String screenTitle;
  final String successMessage;
  final String instruction;
  final String instructionContact;
  final void Function(String) sendOtp;
  final VoidCallback finalizeChangeContact;
  final VoidCallback resetValidateOtpToChangeUserContactStatus;
  final ContactChangeType type;

  const ValidateOtpScreenViewModel._internal({
    required this.validateOtpStatus,
    required this.screenTitle,
    required this.successMessage,
    required this.instruction,
    required this.instructionContact,
    required this.sendOtp,
    required this.finalizeChangeContact,
    required this.resetValidateOtpToChangeUserContactStatus,
    required this.type,
  });

  factory ValidateOtpScreenViewModel.fromEnsState(Store<EnsState> store) {
    final changeContactState = store.state.userState.changeContactState;

    final isSuccess = changeContactState.isSuccessWithData;
    final contactChange = changeContactState.contactChange;
    return ValidateOtpScreenViewModel._internal(
      validateOtpStatus: store.state.userState.validateOtpStatus,
      screenTitle: isSuccess ? _getScreenTitle(contactChange!) : EMPTY_VALUE,
      successMessage: isSuccess ? _getSuccessMessage(contactChange!) : EMPTY_VALUE,
      instruction: isSuccess ? _getInstruction(contactChange!) : EMPTY_VALUE,
      instructionContact: isSuccess ? contactChange!.value : EMPTY_VALUE,
      sendOtp: (otp) {
        if (isSuccess) {
          store.dispatch(ValidateOtpAction(OtpValidation(contactChange: contactChange!, otp: otp)));
        }
      },
      finalizeChangeContact: () => store.dispatch(FinalizeChangeContactAction()),
      resetValidateOtpToChangeUserContactStatus: () {},
      type: isSuccess ? contactChange!.type : ContactChangeType.MAIL,
    );
  }

  factory ValidateOtpScreenViewModel.fromEnsInitialState(Store<EnsInitialState> store) {
    final userContactChangeState = store.state.enrolementState.userContactChangeState;

    final isSuccess = userContactChangeState.isSuccessWithData;
    final userContactChange = userContactChangeState.userContactChange;
    return ValidateOtpScreenViewModel._internal(
      validateOtpStatus: userContactChangeState.validateOtpToChangeUserContactStatus,
      screenTitle: isSuccess ? _getScreenTitle(userContactChange!) : EMPTY_VALUE,
      successMessage: isSuccess ? _getSuccessMessage(userContactChange!) : EMPTY_VALUE,
      instruction: isSuccess ? _getInstruction(userContactChange!) : EMPTY_VALUE,
      instructionContact: isSuccess ? userContactChange!.value : EMPTY_VALUE,
      sendOtp: (otp) {
        if (isSuccess) {
          store.dispatch(VerifyOtpToUpdateUserContactAction(type: userContactChange!.type, otp: otp));
        }
      },
      finalizeChangeContact: () => store.dispatch(FinalizeChangeToUserContactAction()),
      resetValidateOtpToChangeUserContactStatus: () =>
          store.dispatch(ResetValidateOtpToChangeUserContactStatusAction()),
      type: isSuccess ? userContactChange!.type : ContactChangeType.MAIL,
    );
  }

  static String _getScreenTitle(ContactChange contactChange) {
    switch (contactChange.type) {
      case ContactChangeType.MAIL:
        return 'Modifier mon adresse e-mail';
      case ContactChangeType.PHONE:
        return 'Modifier mon numéro de téléphone';
    }
  }

  static String _getSuccessMessage(ContactChange contactChange) {
    switch (contactChange.type) {
      case ContactChangeType.MAIL:
        return 'Adresse e-mail modifiée';
      case ContactChangeType.PHONE:
        return 'Numéro de téléphone modifié';
    }
  }

  static String _getInstruction(ContactChange contactChange) {
    switch (contactChange.type) {
      case ContactChangeType.MAIL:
        return 'Un code à usage unique vous a été envoyé à l\'adresse ';
      case ContactChangeType.PHONE:
        return 'Un code à usage unique vous a été envoyé au numéro de téléphone ';
    }
  }

  @override
  List<Object?> get props => [validateOtpStatus, screenTitle, successMessage, instruction, instructionContact, type];
}
