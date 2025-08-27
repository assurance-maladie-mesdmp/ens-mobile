/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_checkbox_title_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_error_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_link_text.dart';

enum EnsCheckboxFormFieldErrorType { ERROR_TEXT, HIGHLIGHT_ERROR, NONE }

class EnsCheckboxFormField extends FormField<bool?> {
  final bool? initValue;
  final String label;
  final EnsCheckboxFormFieldErrorType errorType;
  final String? textError;
  final void Function(bool?)? validatorCallback;
  final CrossAxisAlignment? positionLabel;
  final EdgeInsets extraPadding;
  final EnsLinkText? linkText;
  final void Function(bool?)? onChange;

  EnsCheckboxFormField({
    this.initValue = false,
    required this.label,
    required this.errorType,
    this.textError,
    super.key,
    this.validatorCallback,
    this.positionLabel = CrossAxisAlignment.start,
    this.extraPadding = EdgeInsets.zero,
    this.linkText,
    this.onChange,
  })  : assert(
          (errorType == EnsCheckboxFormFieldErrorType.ERROR_TEXT && textError != null) ||
              (errorType == EnsCheckboxFormFieldErrorType.HIGHLIGHT_ERROR && textError == null) ||
              (errorType == EnsCheckboxFormFieldErrorType.NONE && textError == null),
        ),
        super(
          validator: (isChecked) {
            validatorCallback?.call(isChecked);
            final currentChecked = isChecked ?? false;
            switch (errorType) {
              case EnsCheckboxFormFieldErrorType.ERROR_TEXT:
                if (!currentChecked) return textError ?? 'Une erreur est survenue';
                return null;
              case EnsCheckboxFormFieldErrorType.HIGHLIGHT_ERROR:
                if (!currentChecked) return '';
                return null;
              case EnsCheckboxFormFieldErrorType.NONE:
                return null;
            }
          },
          initialValue: initValue,
          builder: (field) {
            final isError = field.hasError && field.value == false;
            final isHighlightError = isError && errorType == EnsCheckboxFormFieldErrorType.HIGHLIGHT_ERROR;
            final isErrorText = isError && errorType == EnsCheckboxFormFieldErrorType.ERROR_TEXT;
            return Column(
              children: [
                EnsCheckboxTitleButton(
                  value: field.value ?? false,
                  checkboxAlignment: positionLabel!,
                  borderCheckboxColor: isError ? EnsColors.error : EnsColors.primary,
                  onChange: (checkValue) {
                    onChange?.call(checkValue);
                    field.didChange(checkValue);
                  },
                  label: label,
                  error: isHighlightError,
                  extraPadding: extraPadding,
                ),
                if (linkText != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 32),
                    child: linkText,
                  ),
                if (isErrorText)
                  EnsErrorText(
                    text: field.errorText ?? '',
                    padding: const EdgeInsets.only(left: 32, top: 4),
                  ),
              ],
            );
          },
        );
}
