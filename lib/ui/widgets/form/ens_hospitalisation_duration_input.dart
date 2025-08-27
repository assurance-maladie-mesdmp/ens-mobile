/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/profil_medical/domain/models/ens_duration.dart';
import 'package:fr_cnamts_ens/ui/ens_borders.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';

class EnsHospitalisationDurationInput extends StatelessWidget {
  final ValueNotifier<EnsHospitalisationDuration?> controller;
  final ValueChanged<String> onChanged;
  final void Function() onEditingComplete;

  const EnsHospitalisationDurationInput({
    required this.controller,
    required this.onChanged,
    required this.onEditingComplete,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: EnsColors.focus,
      initialValue: controller.value?.duration?.toStringAsFixed(0),
      maxLength: 3,
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        filled: true,
        fillColor: EnsColors.light,
        constraints: const BoxConstraints(maxHeight: 120, maxWidth: 100),
        counterText: '',
        contentPadding: const EdgeInsets.symmetric(vertical: 16),
        border: EnsBorders.inputBorder,
        focusedBorder: EnsBorders.inputBorderFocus,
        enabledBorder: EnsBorders.inputBorder,
        hintText: '-',
      ),
      style: EnsTextStyle.text16_w600_title,
      onChanged: onChanged,
      onEditingComplete: () => onEditingComplete,
    );
  }
}
