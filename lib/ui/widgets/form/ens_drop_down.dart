/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_borders.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_error_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/utils/text_scale_utils.dart';

class EnsDropDown<T> extends FormField<T?> {
  final ValueNotifier<T?> controller;
  final String? label;
  final String? description;
  final String? hint;
  final BuildContext context;
  final BorderRadius borderRadius;

  EnsDropDown({
    this.label,
    this.description,
    this.hint,
    required this.controller,
    required this.context,
    required this.borderRadius,
    required List<T> items,
    required String Function(T? value) itemFormater,
    super.key,
    super.validator,
    void Function()? onTap,
    void Function()? onChanged,
    String? Function(T? value)? iconFormater,
    bool enabled = true,
    Color defaultBorderColor = Colors.black,
    Icon? icon,
  }) : super(
          initialValue: controller.value,
          builder: (FormFieldState<T?> state) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                if (label != null)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(child: Text(label, style: EnsTextStyle.text16_w600_title)),
                    ],
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
                if (label != null && label.isNotEmpty) SizedBox(height: description == null ? 8 : 4),
                Material(
                  color: Colors.white,
                  child: ButtonTheme(
                    alignedDropdown: true,
                    child: DropdownButtonFormField(
                      onTap: () {
                        FocusScope.of(context).unfocus();
                        onTap?.call();
                      },
                      icon: icon,
                      iconSize: enabled ? 24 : 0,
                      isExpanded: true,
                      isDense: TextScaleUtils.getTextScaleFactor(context, fontSize: 16) < 1.1,
                      iconEnabledColor: EnsColors.body,
                      decoration: InputDecoration(
                        enabled: enabled,
                        fillColor: enabled ? null : EnsColors.disabled100,
                        filled: !enabled,
                        border: EnsBorders.buildBorder(
                          color: state.hasError ? EnsColors.error : defaultBorderColor,
                          borderRadius: borderRadius,
                        ),
                        focusedBorder: EnsBorders.buildBorder(
                          width: 2,
                          color: state.hasError ? EnsColors.error : EnsColors.primary,
                          borderRadius: borderRadius,
                        ),
                        enabledBorder: EnsBorders.buildBorder(
                          color: state.hasError ? EnsColors.error : defaultBorderColor,
                          borderRadius: borderRadius,
                        ),
                        disabledBorder: EnsBorders.inputBorderDisabled,
                      ),
                      value: controller.value,
                      items: enabled
                          ? items
                              .map(
                                (item) => CustomDropDownMenuItem(
                                  value: item,
                                  text: itemFormater(item),
                                  icon: iconFormater != null && iconFormater(item) != null ? iconFormater(item)! : null,
                                ),
                              )
                              .toList()
                          : [
                              CustomDropDownMenuItem(
                                value: controller.value,
                                text: itemFormater(controller.value),
                              ),
                            ],
                      onChanged: enabled
                          ? (T? value) {
                              state.didChange(value);
                              state.validate();
                              controller.value = value;
                              onChanged?.call();
                            }
                          : null,
                      hint: hint != null
                          ? Text(
                              hint,
                              style: controller.value == null
                                  ? EnsTextStyle.text16_w600_body
                                  : EnsTextStyle.text16_w600_title,
                            )
                          : null,
                      selectedItemBuilder: (_) => enabled
                          ? items
                              .map(
                                (item) => CustomDropDownMenuItem(
                                  value: item,
                                  text: itemFormater(item),
                                  icon: iconFormater != null && iconFormater(item) != null ? iconFormater(item)! : null,
                                  textOverflow: TextOverflow.ellipsis,
                                ),
                              )
                              .toList()
                          : [
                              CustomDropDownMenuItem(
                                value: controller.value,
                                text: itemFormater(controller.value),
                              ),
                            ],
                    ),
                  ),
                ),
              ],
            );
          },
        );
}

class CustomDropDownMenuItem<T> extends DropdownMenuItem<T> {
  final String? icon;
  final String text;
  final TextOverflow textOverflow;

  CustomDropDownMenuItem({
    required super.value,
    required this.text,
    this.icon,
    this.textOverflow = TextOverflow.visible,
  }) : super(
          child: DropdownMenuItem(
            value: value,
            child: Row(
              children: [
                if (icon != null) ...[
                  EnsSvg(icon, height: 18, width: 18),
                  const SizedBox(width: 8),
                ],
                Expanded(
                  child: Text(
                    text,
                    style: EnsTextStyle.text16_w600_title,
                    overflow: textOverflow,
                  ),
                ),
              ],
            ),
          ),
        );
}
