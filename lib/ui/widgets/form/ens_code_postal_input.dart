/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/counted_text_input.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_code_postal_input_validator.dart';

class EnsCodePostalInput extends StatelessWidget {
  final TextEditingController controller;

  const EnsCodePostalInput({
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return CountedTextInput.withBorders(
      label: 'Code postal',
      controller: controller,
      maxCharacters: EnsCodePostalInputValidator.exactCharCount,
      keyboardType: TextInputType.number,
      autovalidation: false,
      validatorCallback: (value) => EnsCodePostalInputValidator().validate(value),
    );
  }
}
