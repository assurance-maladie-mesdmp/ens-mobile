/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_error_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_input_date_mixin.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_input_date_validator.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/extensions/datetime_extension.dart';
import 'package:intl/intl.dart';

class EnsInputDate extends FormField<DateTime?> with EnsInputDateMixin {
  final ValueNotifier<DateTime?> controller;
  final String label;
  final String? description;
  final String? hint;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final bool startWithKeyboardInput;
  final void Function()? onTap;
  static final _dateFormat = DateFormat('dd/MM/yyyy');

  EnsInputDate({
    required this.label,
    this.description,
    this.hint,
    super.key,
    required this.controller,
    required BuildContext context,
    this.firstDate,
    this.lastDate,
    this.startWithKeyboardInput = false,
    String? Function(DateTime?)? validator,
    this.onTap,
    bool enabled = true,
  }) : super(
          builder: (FormFieldState<DateTime?> state) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(label, style: EnsTextStyle.text16_w600_title),
                          if (description != null) const SizedBox(height: 4),
                          if (description != null)
                            Text(
                              description,
                              style: EnsTextStyle.text14_w400_normal_body,
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                if (state.hasError && state.errorText!.isNotEmpty) EnsErrorText(text: state.errorText!),
                Row(
                  children: [
                    Expanded(
                      child: EnsInkWell(
                        isTextField: true,
                        onTap: enabled
                            ? () {
                                onTap?.call();
                                primaryFocus!.unfocus(disposition: UnfocusDisposition.scope);
                                EnsInputDateMixin.selectDate(
                                  context,
                                  controller,
                                  state,
                                  firstDate,
                                  lastDate,
                                  startWithKeyboardInput,
                                  initialValue: controller.value,
                                );
                              }
                            : null,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: enabled ? EnsColors.light : EnsColors.disabled100,
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                              color: state.hasError
                                  ? EnsColors.error
                                  : enabled
                                      ? Colors.black
                                      : Colors.grey,
                              width: 1,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(18),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  _formatSelectedDate(controller.value, hint) ?? '',
                                  semanticsLabel: _formatExplicitSelectedDate(controller.value, hint),
                                  style: !enabled || controller.value == null
                                      ? EnsTextStyle.text16_w600_body
                                      : EnsTextStyle.text16_w600_title,
                                ),
                                if (enabled)
                                  Semantics(
                                    excludeSemantics: true,
                                    child: const EnsSvg(EnsImages.ic_calendar, height: 20, width: 18),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
          validator: validator ?? (value) => EnsInputDateValidator().validate(value, isOptional: true),
        );

  static String? _formatSelectedDate(DateTime? selectedDate, String? hint) {
    if (selectedDate != null) {
      return _dateFormat.format(selectedDate);
    }
    return hint;
  }

  static String? _formatExplicitSelectedDate(DateTime? selectedDate, String? hint) {
    if (selectedDate != null) {
      return selectedDate.toExpliciteDateWithoutWeekDay();
    }
    return hint;
  }
}

class EnsInputTime extends FormField<TimeOfDay?> with EnsInputDateMixin {
  final ValueNotifier<TimeOfDay?> controller;
  final String label;
  final String hint;
  final void Function()? onTap;

  EnsInputTime({
    required this.label,
    required this.hint,
    super.key,
    required this.controller,
    required BuildContext context,
    super.validator,
    this.onTap,
    bool enabled = true,
  }) : super(
          builder: (FormFieldState<TimeOfDay?> state) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Text(label, style: EnsTextStyle.text16_w600_title),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                if (state.hasError && state.errorText!.isNotEmpty) EnsErrorText(text: state.errorText!),
                Row(
                  children: [
                    Expanded(
                      child: EnsInkWell(
                        isTextField: true,
                        onTap: enabled
                            ? () {
                                onTap?.call();
                                primaryFocus!.unfocus(disposition: UnfocusDisposition.scope);
                                EnsInputTimeMixin.selectTime(context, controller, state, controller.value);
                              }
                            : null,
                        child: Ink(
                          padding: const EdgeInsets.all(18),
                          decoration: BoxDecoration(
                            color: enabled ? EnsColors.light : EnsColors.disabled100,
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                              color: state.hasError
                                  ? EnsColors.error
                                  : enabled
                                      ? Colors.black
                                      : Colors.grey,
                              width: 1,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                _formatSelectedTime(controller, ''),
                                style: !enabled || controller.value == null
                                    ? EnsTextStyle.text16_w600_body
                                    : EnsTextStyle.text16_w600_title,
                              ),
                              const EnsSvg(EnsImages.ic_clock, height: 24, width: 24),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        );

  static String _formatSelectedTime(ValueNotifier<TimeOfDay?> controller, String hint) {
    final selectedDate = controller.value;
    if (selectedDate != null) {
      return '${selectedDate.hour.toString().padLeft(2, '0')}:${selectedDate.minute.toString().padLeft(2, '0')}';
    }
    return hint;
  }
}
