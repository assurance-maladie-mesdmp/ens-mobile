/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fr_cnamts_ens/ui/ens_borders.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_error_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';

class EnsTextInput extends FormField<String?> {
  final String label;
  final String hint;
  final TextEditingController controller;
  final String deniedRegExp;
  final bool autofocus;
  final String? errorMsgToDisplay;
  final TextInputType? keyboardType;
  final bool withDeleteTextQuickActionButton;
  final int? maxLength;

  EnsTextInput({
    required this.label,
    required this.hint,
    required this.controller,
    this.autofocus = false,
    this.errorMsgToDisplay,
    this.keyboardType,
    super.key,
    this.deniedRegExp = '',
    super.validator,
    this.withDeleteTextQuickActionButton = false,
    this.maxLength,
  }) : super(
          initialValue: controller.text,
          builder: (FormFieldState<String?> state) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(label, style: EnsTextStyle.text16_w600_normal_title),
                const SizedBox(height: 4),
                Text(hint, style: EnsTextStyle.text16_w600_body),
                const SizedBox(height: 4),
                if (errorMsgToDisplay != null)
                  EnsErrorText(
                    text: errorMsgToDisplay,
                    padding: const EdgeInsets.symmetric(vertical: 4),
                  ),
                EnsInkWell(
                  color: state.hasError ? EnsColors.error100 : EnsColors.light,
                  focusColor: Colors.transparent,
                  onTap: () {},
                  child: TextFormField(
                    controller: controller,
                    style: EnsTextStyle.text16_w600_title,
                    autofocus: autofocus,
                    keyboardType: keyboardType,
                    maxLength: maxLength,
                    inputFormatters: [
                      FilteringTextInputFormatter.deny(RegExp(deniedRegExp)),
                    ],
                    onChanged: (value) {
                      state.didChange(value);
                    },
                    decoration: InputDecoration(
                      counterText: '',
                      filled: false,
                      border: state.hasError ? EnsBorders.inputBorderError : EnsBorders.inputBorder,
                      focusedBorder: state.hasError ? EnsBorders.inputBorderErrorThick : EnsBorders.inputBorderFocus,
                      enabledBorder: state.hasError ? EnsBorders.inputBorderError : EnsBorders.inputBorder,
                      suffixIcon: withDeleteTextQuickActionButton
                          ? IconButton(
                              icon: const Icon(Icons.clear_outlined),
                              color: Colors.grey,
                              onPressed: () {
                                controller.text = '';
                              },
                              splashRadius: 16,
                            )
                          : null,
                    ),
                  ),
                ),
                if (state.hasError)
                  EnsErrorText(
                    text: state.errorText!,
                    padding: const EdgeInsets.only(top: 8),
                  ),
              ],
            );
          },
        );
}
