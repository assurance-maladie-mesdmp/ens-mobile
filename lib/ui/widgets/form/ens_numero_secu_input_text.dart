/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/counted_text_input.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_numero_secu_input_text_validator.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/validate_field_info_text.dart';
import 'package:fr_cnamts_ens/utils/mask_utils.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class EnsNumeroSecuInputText extends StatelessWidget {
  final TextEditingController controller;
  final void Function(String unmaskedText) onTextDidChange;
  final bool isInfosNumSecuFromScan;
  final String label;

  const EnsNumeroSecuInputText({
    required this.controller,
    required this.onTextDidChange,
    required this.isInfosNumSecuFromScan,
    this.label = 'Numéro de sécurité sociale',
  });

  @override
  Widget build(BuildContext context) {
    final MaskTextInputFormatter maskNumeroSecu = numeroSecuMaskFormatter(controller.text);

    return CountedTextInput.withBorders(
      label: label,
      description: 'Ex. : 1 55 12 55 555 555 55',
      validatorCallback: (value) => EnsNumeroSecuInputTextValidator().validate(maskNumeroSecu.getUnmaskedText()),
      controller: controller,
      keyboardType: TextInputType.visiblePassword,
      textCapitalization: TextCapitalization.characters,
      maxCharacters: 15,
      mask: maskNumeroSecu,
      descriptionWidget: isInfosNumSecuFromScan ? ValidateFieldInfoText() : null,
      isSuccess: isInfosNumSecuFromScan,
      onTextDidChange: (value) {
        onTextDidChange(numeroSecuMaskFormatter(value).getUnmaskedText());
      },
      validateCondition: (value, state) {
        if (value.isNotEmpty) {
          state.reset();
        } else {
          state.validate();
        }
      },
      mustCountWhiteSpaces: false,
    );
  }
}
