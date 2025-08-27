/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_checkbox.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';

class EnsCheckboxTitleButton extends StatelessWidget {
  final bool value;
  final bool error;
  final void Function(bool)? onChange;
  final double paddingBetweenBoxAndTitle;
  final String label;
  final String? _description;
  final TextStyle? _descriptionSelectedStyle;
  final TextStyle? _descriptionUnSelectedStyle;
  final EdgeInsets rowPadding;
  final TextStyle selectedStyle;
  final TextStyle unSelectedStyle;
  final TextStyle errorStyle;
  final Color backgroundColor;
  final CrossAxisAlignment checkboxAlignment;
  final Color borderCheckboxColor;
  final bool withCard;
  final EdgeInsets extraPadding;

  const EnsCheckboxTitleButton({
    required this.value,
    this.error = false,
    required this.label,
    this.onChange,
    this.paddingBetweenBoxAndTitle = 8,
    this.rowPadding = EdgeInsets.zero,
    this.selectedStyle = EnsTextStyle.text14_w600_normal_primary,
    this.unSelectedStyle = EnsTextStyle.text14_w600_normal_body,
    this.errorStyle = EnsTextStyle.text14_w600_normal_error,
    this.backgroundColor = Colors.transparent,
    this.checkboxAlignment = CrossAxisAlignment.center,
    this.borderCheckboxColor = EnsColors.primary,
    this.withCard = false,
    this.extraPadding = EdgeInsets.zero,
  })  : _description = null,
        _descriptionSelectedStyle = null,
        _descriptionUnSelectedStyle = null;

  const EnsCheckboxTitleButton.withCard({
    required this.value,
    this.error = false,
    required this.label,
    this.onChange,
    this.paddingBetweenBoxAndTitle = 8,
    this.rowPadding = const EdgeInsets.all(16),
    this.selectedStyle = EnsTextStyle.text14_w600_normal_primary,
    this.unSelectedStyle = EnsTextStyle.text14_w600_normal_body,
    this.errorStyle = EnsTextStyle.text16_w600_normal_error,
    this.backgroundColor = Colors.transparent,
    this.checkboxAlignment = CrossAxisAlignment.center,
    this.borderCheckboxColor = EnsColors.primary,
    this.withCard = true,
    this.extraPadding = EdgeInsets.zero,
  })  : _description = null,
        _descriptionSelectedStyle = null,
        _descriptionUnSelectedStyle = null;

  const EnsCheckboxTitleButton.withCardDescription({
    required this.value,
    this.error = false,
    required this.label,
    required String description,
    TextStyle descriptionSelectedStyle = EnsTextStyle.text12_w400_normal_primary,
    TextStyle descriptionUnSelectedStyle = EnsTextStyle.text12_w400_normal_body,
    this.onChange,
    this.paddingBetweenBoxAndTitle = 8,
    this.rowPadding = const EdgeInsets.fromLTRB(16, 16, 24, 16),
    this.selectedStyle = EnsTextStyle.text14_w600_normal_primary,
    this.unSelectedStyle = EnsTextStyle.text14_w600_normal_title,
    this.errorStyle = EnsTextStyle.text16_w600_normal_error,
    this.backgroundColor = Colors.transparent,
    this.checkboxAlignment = CrossAxisAlignment.center,
    this.borderCheckboxColor = EnsColors.primary,
    this.withCard = true,
    this.extraPadding = EdgeInsets.zero,
  })  : _description = description,
        _descriptionSelectedStyle = descriptionSelectedStyle,
        _descriptionUnSelectedStyle = descriptionUnSelectedStyle;

  @override
  Widget build(BuildContext context) {
    return MergeSemantics(
      child: DecoratedBox(
        decoration: withCard
            ? BoxDecoration(
                color: EnsColors.light,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  width: 2,
                  color: Colors.transparent,
                ),
                boxShadow: const [BoxShadow(color: EnsColors.neutral200, blurRadius: 16)],
              )
            : const BoxDecoration(),
        child: EnsInkWell(
          borderRadius: BorderRadius.circular(withCard ? 8 : 0),
          onTap: () {
            onChange?.call(!value);
          },
          child: Padding(
            padding: extraPadding,
            child: ColoredBox(
              color: backgroundColor,
              child: Padding(
                padding: rowPadding,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: checkboxAlignment,
                  children: [
                    EnsCheckbox(
                      value: value,
                      borderColor: borderCheckboxColor,
                      onChange: (value) {
                        if (value != null) onChange?.call(value);
                      },
                    ),
                    SizedBox(width: paddingBetweenBoxAndTitle),
                    Expanded(
                      child: IntrinsicHeight(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              label,
                              style: error
                                  ? errorStyle
                                  : value
                                      ? selectedStyle
                                      : unSelectedStyle,
                            ),
                            if (_description != null &&
                                _descriptionSelectedStyle != null &&
                                _descriptionUnSelectedStyle != null)
                              Text(
                                _description!,
                                style: error
                                    ? errorStyle
                                    : value
                                        ? _descriptionSelectedStyle!
                                        : _descriptionUnSelectedStyle!,
                              ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
