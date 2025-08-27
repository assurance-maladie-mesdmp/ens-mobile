/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/counted_text_input.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_telephone_input_validator.dart';

class EnsTelephoneInput extends StatelessWidget {
  final bool isRequired;
  final String label;
  final TextEditingController phoneController;

  const EnsTelephoneInput({
    this.isRequired = true,
    this.label = 'Téléphone',
    required this.phoneController,
  });

  @override
  Widget build(BuildContext context) {
    return CountedTextInput.withBorders(
      label: isRequired ? label : '$label (facultatif)',
      maxCharacters: 15,
      description: 'Ex. : 0603020302 ou +33603020302',
      controller: phoneController,
      validatorCallback: (value) => EnsTelephoneInputValidator(isRequired: isRequired).validate(value),
      keyboardType: TextInputType.phone,
    );
  }
}
