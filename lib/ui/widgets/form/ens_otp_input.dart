/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/counted_text_input.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_otp_input_validator.dart';

class EnsOtpInput extends StatelessWidget {
  final TextEditingController controller;
  final bool isError;
  final void Function(String)? onTextDidChange;

  const EnsOtpInput({required this.controller, required this.isError, this.onTextDidChange});

  @override
  Widget build(BuildContext context) {
    final validator = EnsOtpInputValidator();
    return CountedTextInput.withBorders(
      label: 'Code à usage unique',
      description: 'Ex. : 034567',
      controller: controller,
      validatorCallback: (value) {
        return validator.validate(value);
      },
      autofocus: true,
      keyboardType: TextInputType.number,
      maxCharacters: EnsOtpInputValidator.OTP_LENGTH,
      blockOnMaxCharacters: true,
      errorMsgToDisplay: isError ? validator.otpInvalideMessage : null,
      onTextDidChange: onTextDidChange,
      validateCondition: (value, state) {
        if (value.isNotEmpty) {
          state.reset();
        } else {
          state.validate();
        }
      },
    );
  }
}
