/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fr_cnamts_ens/ui/ens_borders.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_error_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class EnsPasswordTextInput extends FormField<String?> {
  static const spaceCharacter = ' ';

  final String label;
  final TextEditingController controller;
  final bool autofocus;
  final bool isPasswordVisible;
  final void Function() onIconClicked;
  final Function(String)? onTextChanged;

  final String semanticsLabel;
  final bool isPasswordBottomSheetShown;

  EnsPasswordTextInput({
    required this.label,
    required this.controller,
    required this.isPasswordVisible,
    required this.onIconClicked,
    required this.semanticsLabel,
    this.isPasswordBottomSheetShown = false,
    this.onTextChanged,
    this.autofocus = false,
    super.key,
    super.validator,
    super.autovalidateMode = AutovalidateMode.onUserInteraction,
  }) : super(
          initialValue: controller.text,
          builder: (FormFieldState<String?> state) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: EnsTextStyle.text16_w600_normal_title,
                ),
                Visibility(visible: state.hasError && state.errorText!.isNotEmpty, child: const SizedBox(height: 4)),
                if (state.hasError && state.errorText!.isNotEmpty) EnsErrorText(text: state.errorText!),
                const SizedBox(height: 8),
                Semantics(
                  label: semanticsLabel,
                  child: TextFormField(
                    obscureText: !isPasswordVisible,
                    controller: controller,
                    style: EnsTextStyle.text16_w600_title,
                    autofocus: autofocus,
                    keyboardType: TextInputType.visiblePassword,
                    inputFormatters: [
                      FilteringTextInputFormatter.deny(RegExp(spaceCharacter)),
                    ],
                    onChanged: (value) {
                      if (onTextChanged != null) onTextChanged(value);
                      state.didChange(value);
                    },
                    decoration: InputDecoration(
                      suffixIcon: isPasswordVisible
                          ? IconButton(
                              icon: const EnsSvg(EnsImages.ic_hide, height: 24, width: 24),
                              onPressed: () => onIconClicked(),
                            )
                          : IconButton(
                              icon: const EnsSvg(EnsImages.ic_show, height: 24, width: 24),
                              onPressed: () => onIconClicked(),
                            ),
                      filled: true,
                      fillColor: Colors.white,
                      border: state.hasError ? EnsBorders.inputBorderError : EnsBorders.inputBorder,
                      focusedBorder: state.hasError ? EnsBorders.inputBorderErrorThick : EnsBorders.inputBorderFocus,
                      enabledBorder: state.hasError ? EnsBorders.inputBorderError : EnsBorders.inputBorder,
                    ),
                  ),
                ),
              ],
            );
          },
        );
}
