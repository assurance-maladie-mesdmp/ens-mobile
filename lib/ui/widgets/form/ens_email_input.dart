/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/counted_text_input.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_email_input_validator.dart';

class EnsEmailInput extends StatelessWidget {
  final bool isRequired;
  final TextEditingController emailController;

  const EnsEmailInput({
    this.isRequired = true,
    required this.emailController,
  });

  @override
  Widget build(BuildContext context) {
    return CountedTextInput.withBorders(
      label: isRequired ? 'Adresse e-mail' : 'Adresse e-mail (facultatif)',
      description: 'Ex : mon-adresse@email.com',
      controller: emailController,
      validatorCallback: (value) => EnsEmailInputValidator(isRequired: isRequired).validate(value),
      autofocus: isRequired,
      keyboardType: TextInputType.emailAddress,
      maxCharacters: -1,
    );
  }
}
