/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/profil_medical/domain/models/ens_duration.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_error_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_drop_down.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_hospitalisation_duration_input.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_hospitalisation_duration_input_validator.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';

class EnsHospitalisationDurationInputField extends FormField<EnsHospitalisationDuration?> {
  EnsHospitalisationDurationInputField({
    required BuildContext context,
    required String label,
    required ValueNotifier<EnsHospitalisationDuration?> controller,
    super.initialValue,
  }) : super(
          validator: (_) {
            return EnsHospitalisationDurationInputValidator().validate(controller.value?.duration?.toString());
          },
          builder: (FormFieldState<EnsHospitalisationDuration?> state) {
            final ensDurationUnitController = ValueNotifier<EnsHospitalisationDurationUnit>(
              initialValue?.unit != null ? initialValue!.unit! : EnsHospitalisationDurationUnit.DAY,
            );
            ensDurationUnitController.addListener(() {
              final newDuration = EnsHospitalisationDuration(
                duration: state.value?.duration,
                unit: ensDurationUnitController.value,
              );
              controller.value = newDuration;
              state.didChange(newDuration);
              state.validate();
            });

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(label, style: EnsTextStyle.text16_w600_title),
                const SizedBox(height: 8),
                if (state.hasError && state.errorText!.isNotEmpty) ...[
                  EnsErrorText(
                    text: state.errorText!,
                    padding: const EdgeInsets.only(top: 4),
                  ),
                  const SizedBox(height: 8),
                ],
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EnsHospitalisationDurationInput(
                      controller: controller,
                      onChanged: (value) {
                        int? durationStringToInt;
                        try {
                          if (value.isNullOrEmpty()) {
                            durationStringToInt = null;
                          } else {
                            durationStringToInt = int.parse(value);
                          }
                        } catch (_) {
                          durationStringToInt = EnsHospitalisationDurationInputValidator.invalidDuration;
                        }
                        final newDuration = EnsHospitalisationDuration(
                          duration: durationStringToInt,
                          unit: state.value?.unit,
                        );
                        controller.value = newDuration;
                        state.didChange(newDuration);
                        state.validate();
                      },
                      onEditingComplete: () {
                        FocusScope.of(context).nextFocus();
                      },
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Semantics(
                        label: ensDurationUnitController.value.singularLabel,
                        child: EnsDropDown<EnsHospitalisationDurationUnit?>(
                          controller: ensDurationUnitController,
                          borderRadius: BorderRadius.circular(4),
                          context: context,
                          items: EnsHospitalisationDurationUnit.values
                              .where((durationUnit) => durationUnit != EnsHospitalisationDurationUnit.UNKNOWN)
                              .toList(),
                          itemFormater: (EnsHospitalisationDurationUnit? durationUnit) =>
                              durationUnit != null ? durationUnit.label : '',
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        );
}
