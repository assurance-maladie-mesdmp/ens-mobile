/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/profil_medical/handicaps/widget/multiple_choice_form_dialog.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_error_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';

class EnsMultipleSelectorFormField<T> extends FormField<T?> {
  final ValueNotifier<T?> controller;
  final String? label;
  final String? description;
  final String hint;
  final BuildContext context;
  final BorderRadius borderRadius;
  final String Function(T) labelMapper;
  final List<T> preSelectedCategories;
  final List<T> selectableFilters;
  final void Function(List<T>) onSelected;

  EnsMultipleSelectorFormField({
    this.label,
    this.description,
    required this.hint,
    required this.controller,
    required this.context,
    required this.borderRadius,
    super.key,
    super.validator,
    void Function()? onTap,
    Color defaultBorderColor = Colors.black,
    required this.preSelectedCategories,
    required this.selectableFilters,
    required this.onSelected,
    required this.labelMapper,
  }) : super(
          initialValue: controller.value,
          builder: (FormFieldState<T?> state) {
            void onChange(T? value) {
              state.didChange(value);
              state.validate();
              controller.value = value;
            }

            return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                if (label != null)
                  Text(
                    label,
                    style: EnsTextStyle.text16_w600_title,
                  ),
                if (description != null)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(description, style: EnsTextStyle.text14_w400_normal_body),
                  ),
                if (state.hasError && state.errorText!.isNotEmpty)
                  EnsErrorText(
                    text: state.errorText!,
                    padding: const EdgeInsets.only(top: 8),
                  ),
                if (label != null && label.isNotEmpty) const SizedBox(height: 4),
                EnsInkWell(
                  color: EnsColors.light,
                  onTap: () {
                    if (onTap != null) onTap();
                    showGeneralDialog(
                      context: context,
                      barrierDismissible: false,
                      transitionDuration: const Duration(milliseconds: 350),
                      transitionBuilder: (_, anim1, __, child) {
                        return SlideTransition(
                          position: Tween(begin: const Offset(0, 1), end: Offset.zero).animate(anim1),
                          child: child,
                        );
                      },
                      pageBuilder: (context, _, __) => MultipleChoiceFormDialog<T>(
                        preSelectedCategories: preSelectedCategories,
                        selectableFilters: selectableFilters,
                        labelMapper: labelMapper,
                        onTypesSelected: (List<T> selectedfilters) {
                          onSelected(selectedfilters);
                          onChange(selectedfilters.firstOrNull);
                        },
                      ),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: borderRadius,
                      border:
                          state.hasError ? Border.all(color: EnsColors.error) : Border.all(color: defaultBorderColor),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Text(hint, style: EnsTextStyle.text14_w400_normal_body),
                        ),
                        const Icon(Icons.arrow_drop_down),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        );
}
