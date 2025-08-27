/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fr_cnamts_ens/profil_medical/domain/models/ens_date.dart';
import 'package:fr_cnamts_ens/ui/ens_borders.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_error_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_date_input_fields_validator.dart';

class EnsDateInputFields extends FormField<EnsDate?> {
  EnsDateInputFields({
    required String label,
    FormFieldValidator<EnsDate?>? validator,
    String? description,
    required ValueNotifier<EnsDate?> controller,
    super.initialValue,
    bool enabled = true,
    TextStyle disabledTextStyle = EnsTextStyle.text16_w600_body,
    String? customErrorText,
    void Function()? resetCustomErrorText,
    void Function()? onTap,
  }) : super(
          builder: (FormFieldState<EnsDate?> state) => _DateInputFieldsWidget(
            label: label,
            description: description,
            state: state,
            controller: controller,
            enabled: enabled,
            disabledTextStyle: disabledTextStyle,
            customErrorText: customErrorText,
            resetCustomErrorText: resetCustomErrorText,
            onTap: onTap,
          ),
          validator: validator ?? (value) => EnsDateInputFieldsValidator().validate(value),
        );
}

class _DateInputFieldsWidget extends StatelessWidget {
  final String label;
  final String? description;
  final ValueNotifier<EnsDate?> controller;
  final FormFieldState<EnsDate?> state;
  final void Function()? onTap;
  final bool enabled;
  final TextStyle disabledTextStyle;
  final String? customErrorText;
  final void Function()? resetCustomErrorText;

  const _DateInputFieldsWidget({
    required this.label,
    this.description,
    required this.controller,
    required this.state,
    this.onTap,
    this.enabled = true,
    this.disabledTextStyle = EnsTextStyle.text16_w600_body,
    this.customErrorText,
    this.resetCustomErrorText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: EnsTextStyle.text16_w600_normal_title),
        const SizedBox(height: 8),
        if (description != null) ...[
          Text(description!, style: EnsTextStyle.text14_w400_normal_body),
          const SizedBox(height: 8),
        ],
        if (customErrorText != null)
          EnsErrorText(text: customErrorText!, padding: const EdgeInsets.only(bottom: 8))
        else if (state.hasError && state.errorText!.isNotEmpty)
          EnsErrorText(text: state.errorText!, padding: const EdgeInsets.only(bottom: 8)),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            _DateInputItem(
              title: 'Jour - JJ',
              semanticTitle: 'Jour - saisir deux chiffres',
              width: 78,
              isSpecificErrorOrNotAfter: _isDaySpecificErrorOrNotAfter(state),
              enabled: enabled,
              disabledTextStyle: disabledTextStyle,
              maxLength: 2,
              initialValue: controller.value?.day,
              onChanged: (value) {
                resetCustomErrorText?.call();
                _changeFocus(context, value);
                final EnsDate newDate = EnsDate(
                  day: value == '' ? null : value,
                  month: state.value?.month,
                  year: state.value?.year,
                );
                state.didChange(newDate);
                controller.value = newDate;
                if ((value.isEmpty || value.length == 2) && controller.value?.year?.length == 4) {
                  state.validate();
                }
              },
            ),
            const SizedBox(width: 8),
            _DateInputItem(
              title: 'Mois - MM',
              semanticTitle: 'Mois - saisir deux chiffres',
              width: 78,
              isSpecificErrorOrNotAfter: _isMonthSpecificErrorOrNotAfter(state),
              enabled: enabled,
              disabledTextStyle: disabledTextStyle,
              maxLength: 2,
              initialValue: controller.value?.month,
              onChanged: (value) {
                resetCustomErrorText?.call();
                _changeFocus(context, value);
                final EnsDate newDate = EnsDate(
                  day: state.value?.day,
                  month: value == '' ? null : value,
                  year: state.value?.year,
                );
                state.didChange(newDate);
                controller.value = newDate;
                if ((value.isEmpty || value.length == 2) && controller.value?.year?.length == 4) {
                  state.validate();
                }
              },
            ),
            const SizedBox(width: 8),
            _DateInputItem(
              title: 'Année - AAAA',
              semanticTitle: 'Année - saisir quatre chiffres',
              width: 124,
              isSpecificErrorOrNotAfter: _isYearSpecificErrorOrNotAfter(state),
              enabled: enabled,
              disabledTextStyle: disabledTextStyle,
              maxLength: 4,
              initialValue: controller.value?.year,
              onChanged: (value) {
                resetCustomErrorText?.call();
                onTap?.call();
                final EnsDate newDate = EnsDate(day: state.value?.day, month: state.value?.month, year: value);
                state.didChange(newDate);
                controller.value = newDate;
                if (value.isEmpty || value.length == 4) {
                  state.validate();
                }
              },
            ),
          ],
        ),
      ],
    );
  }

  static void _changeFocus(BuildContext context, String value) {
    if (value.length == 2) {
      FocusScope.of(context).nextFocus();
    }
  }

  /// Pour les 3 fonctions suivantes, le check sur EnsDateValidityStatus.VALID
  /// sert à mettre en erreur la date de fin si elle est antérieure à celle du début
  bool _isDaySpecificErrorOrNotAfter(FormFieldState<EnsDate?> state) {
    return state.hasError &&
        state.value != null &&
        _SPECIFIC_ERROR_DAY.contains(EnsDateInputFieldsValidator.determineValidityStatus(state.value!));
  }

  bool _isMonthSpecificErrorOrNotAfter(FormFieldState<EnsDate?> state) {
    return state.hasError &&
        state.value != null &&
        _SPECIFIC_ERROR_MONTH.contains(EnsDateInputFieldsValidator.determineValidityStatus(state.value!));
  }

  bool _isYearSpecificErrorOrNotAfter(FormFieldState<EnsDate?> state) {
    return state.hasError &&
        (state.value == null ||
            _SPECIFIC_ERROR_YEAR.contains(EnsDateInputFieldsValidator.determineValidityStatus(state.value!)));
  }

  static const _SPECIFIC_ERROR_DAY = [
    EnsDateValidityStatus.INCOMPLETE_DAY,
    EnsDateValidityStatus.INCORRECT_DAY,
    EnsDateValidityStatus.UNREAL_DAY,
    EnsDateValidityStatus.VALID,
  ];

  static const _SPECIFIC_ERROR_MONTH = [
    EnsDateValidityStatus.INCOMPLETE_MONTH,
    EnsDateValidityStatus.INCORRECT_MONTH,
    EnsDateValidityStatus.MISSING_MONTH,
    EnsDateValidityStatus.VALID,
  ];

  static const _SPECIFIC_ERROR_YEAR = [
    EnsDateValidityStatus.INCOMPLETE_YEAR,
    EnsDateValidityStatus.INCORRECT_YEAR,
    EnsDateValidityStatus.MISSING_YEAR,
    EnsDateValidityStatus.VALID,
  ];
}

class _DateInputItem extends StatelessWidget {
  final String title;
  final String semanticTitle;
  final double width;
  final bool isSpecificErrorOrNotAfter;
  final bool enabled;
  final TextStyle disabledTextStyle;
  final int maxLength;
  final ValueChanged<String> onChanged;
  final String? initialValue;

  const _DateInputItem({
    required this.title,
    required this.semanticTitle,
    required this.width,
    required this.isSpecificErrorOrNotAfter,
    required this.enabled,
    required this.disabledTextStyle,
    required this.maxLength,
    required this.onChanged,
    this.initialValue,
  });

  @override
  Widget build(BuildContext context) {
    return MergeSemantics(
      child: Column(
        children: [
          SizedBox(
            width: width,
            child: Text(
              title,
              semanticsLabel: semanticTitle,
              style: _headerTextStyle(isSpecificErrorOrNotAfter),
            ),
          ),
          const SizedBox(height: 8),
          SizedBox(
            width: width,
            child: TextFormField(
              enabled: enabled,
              cursorColor: EnsColors.focus,
              textAlign: TextAlign.center,
              inputFormatters: [FilteringTextInputFormatter.allow(RegExp('[0-9]'))],
              initialValue: initialValue,
              maxLength: maxLength,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                filled: true,
                fillColor: enabled ? EnsColors.light : EnsColors.disabled100,
                counterText: '',
                contentPadding: const EdgeInsets.only(top: 16, bottom: 16),
                border: isSpecificErrorOrNotAfter ? EnsBorders.inputBorderError : EnsBorders.inputBorder,
                focusedBorder:
                    isSpecificErrorOrNotAfter ? EnsBorders.inputBorderErrorThick : EnsBorders.inputBorderFocus,
                enabledBorder: isSpecificErrorOrNotAfter ? EnsBorders.inputBorderError : EnsBorders.inputBorder,
                disabledBorder: EnsBorders.inputBorderDisabled,
              ),
              style: enabled ? EnsTextStyle.text16_w600_normal_title : disabledTextStyle,
              onChanged: onChanged,
              onEditingComplete: () => _changeFocusOnFinished(context),
            ),
          ),
        ],
      ),
    );
  }

  static TextStyle _headerTextStyle(bool isError) {
    return isError ? EnsTextStyle.text14_w400_normal_error : EnsTextStyle.text14_w400_normal_body;
  }

  static void _changeFocusOnFinished(BuildContext context) {
    FocusScope.of(context).nextFocus();
  }
}
