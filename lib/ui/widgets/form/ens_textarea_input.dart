/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_borders.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_error_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/validators.dart';

class EnsTextareaInput extends FormField<String?> {
  final TextEditingController controller;
  final bool autofocus;
  final int minLine;
  final int? maxLine;
  final String? hintText;
  final String? Function(String?)? validatorCallback;

  EnsTextareaInput({
    required this.controller,
    this.autofocus = false,
    super.key,
    this.validatorCallback,
    this.minLine = 5,
    this.maxLine = 100,
    this.hintText,
  }) : super(
          validator: (_) => validatorCallback?.call(controller.text) ?? noHtmlTagsValidator(controller.text),
          initialValue: controller.text,
          builder: (FormFieldState<String?> state) {
            return Column(
              children: [
                if (state.hasError)
                  EnsErrorText(
                    text: state.errorText!,
                    padding: const EdgeInsets.only(bottom: 8),
                  ),
                TextFormField(
                  textCapitalization: TextCapitalization.sentences,
                  minLines: minLine,
                  maxLines: maxLine,
                  controller: controller,
                  style: EnsTextStyle.text16_w600_title,
                  autofocus: autofocus,
                  keyboardType: TextInputType.multiline,
                  onChanged: (value) {
                    state.didChange(value);
                    state.validate();
                  },
                  cursorColor: EnsColors.primary,
                  decoration: InputDecoration(
                    hintText: hintText,
                    hintStyle: EnsTextStyle.text14_w400_normal_body,
                    counterText: '',
                    isDense: true,
                    contentPadding: EdgeInsets.zero,
                    filled: true,
                    fillColor: EnsColors.light,
                    border: EnsBorders.noBorder,
                  ),
                ),
              ],
            );
          },
        );
}
