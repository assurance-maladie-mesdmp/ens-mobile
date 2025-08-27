/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/enrolement/domain/type_carte_vitale_enum.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/counted_text_input.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_numero_serie_input_validator.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/validate_field_info_text.dart';

class EnsNumeroSerieSansPhotoInput extends StatelessWidget {
  final TextEditingController controller;
  final bool isNumSerieFromScan;
  final void Function(String)? onTextDidChange;

  const EnsNumeroSerieSansPhotoInput({
    required this.controller,
    required this.isNumSerieFromScan,
    required this.onTextDidChange,
  });

  @override
  Widget build(BuildContext context) {
    return CountedTextInput.withBorders(
      label: 'Mon numéro de série (entre 8 et 13 caractères)',
      description: 'Ex. : 01024576124',
      controller: controller,
      validatorCallback: (value) => EnsNumeroSerieInputValidator(TypeCarteVitale.SANS_PHOTO).validate(value),
      maxCharacters: 13,
      displayCounter: false,
      blockOnMaxCharacters: true,
      keyboardType: TextInputType.number,
      descriptionWidget: isNumSerieFromScan ? ValidateFieldInfoText() : null,
      isSuccess: isNumSerieFromScan,
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
