/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/counted_text_input.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_habitudes_de_vie_text_input_validator.dart';

class EnsHabitudesDeVieTextInput extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final int maxCharacters;
  final List<TextInputConstraints> constraints;
  final void Function(bool) errorCallback;
  final TextInputType keyboardType;

  const EnsHabitudesDeVieTextInput({
    required this.controller,
    required this.focusNode,
    required this.maxCharacters,
    required this.constraints,
    required this.errorCallback,
    required this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return CountedTextInput.withBorders(
      label: '',
      controller: controller,
      focusNode: focusNode,
      maxCharacters: maxCharacters,
      blockOnMaxCharacters: true,
      validatorCallback: (value) {
        final error = EnsHabitudesDeVieTextInputValidator().validate(value, constraints);
        errorCallback(error != null);
        return error;
      },
      keyboardType: keyboardType,
    );
  }
}
