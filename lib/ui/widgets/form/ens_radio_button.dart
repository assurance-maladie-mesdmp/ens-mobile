/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/utils/opacity_utils.dart';

// ignore_for_file: dont_use_inkwell
class EnsRadioButton<T> extends StatelessWidget {
  final T value;
  final T groupValue;
  final String? semanticsLabel;
  final String label;
  final String? subLabel;
  final TextStyle defaultLabelStyle;
  final TextStyle? selectedLabelStyle;
  final void Function() onSelected;
  final bool enabled;
  final EdgeInsetsGeometry padding;
  final CrossAxisAlignment labelAlignment;
  final bool withCard;
  final bool listItem;
  final bool hasError;

  const EnsRadioButton({
    super.key,
    required this.value,
    required this.groupValue,
    required this.label,
    this.subLabel,
    this.defaultLabelStyle = EnsTextStyle.text16_w700_normal_title,
    this.selectedLabelStyle,
    required this.onSelected,
    this.enabled = true,
    this.padding = EdgeInsets.zero,
    this.labelAlignment = CrossAxisAlignment.center,
    this.withCard = false,
    this.listItem = false,
    this.hasError = false,
    this.semanticsLabel,
  });

  const EnsRadioButton.card({
    super.key,
    required this.value,
    required this.groupValue,
    required this.label,
    this.subLabel,
    this.defaultLabelStyle = EnsTextStyle.text16_w600_title,
    this.selectedLabelStyle,
    required this.onSelected,
    this.enabled = true,
    this.padding = const EdgeInsets.all(16),
    this.labelAlignment = CrossAxisAlignment.center,
    this.withCard = true,
    this.listItem = false,
    this.hasError = false,
    this.semanticsLabel,
  });

  const EnsRadioButton.listItem({
    super.key,
    required this.value,
    required this.groupValue,
    required this.label,
    this.subLabel,
    this.defaultLabelStyle = EnsTextStyle.text16_w600_title,
    this.selectedLabelStyle,
    required this.onSelected,
    this.enabled = true,
    this.padding = const EdgeInsets.all(16),
    this.labelAlignment = CrossAxisAlignment.start,
    this.withCard = true,
    this.listItem = true,
    this.hasError = false,
    this.semanticsLabel,
  });

  @override
  Widget build(BuildContext context) {
    return MergeSemantics(
      child: DecoratedBox(
        decoration: withCard
            ? BoxDecoration(
                color: enabled ? EnsColors.light : EnsColors.disabled100,
                borderRadius: BorderRadius.circular(listItem ? 0 : 8),
                border: Border.all(
                  width: 2,
                  color: enabled
                      ? (groupValue == value && !listItem)
                          ? EnsColors.primary
                          : Colors.transparent
                      : EnsColors.disabled500,
                ),
                boxShadow: [
                  BoxShadow(
                    color: EnsColors.neutral200,
                    blurRadius: listItem ? 0 : 16,
                    offset: const Offset(0, 8),
                  ),
                ],
              )
            : const BoxDecoration(),
        child: Material(
          borderRadius: BorderRadius.circular((withCard && !listItem) ? 8 : 0),
          color: Colors.transparent,
          child: Semantics(
            checked: value == groupValue,
            child: InkWell(
              highlightColor: withCard ? EnsColors.neutral200 : null,
              splashColor: withCard ? EnsColors.neutral200 : null,
              borderRadius: BorderRadius.circular((withCard && !listItem) ? 8 : 0),
              excludeFromSemantics: true,
              onTap: enabled ? onSelected : null,
              child: Padding(
                padding: padding,
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        _EnsRadio<T>(enabled: enabled, value: value, groupValue: groupValue, hasError: hasError),
                        const SizedBox(width: 16),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: labelAlignment,
                            children: [
                              Text(
                                semanticsLabel: semanticsLabel,
                                label,
                                style:
                                    value == groupValue ? (selectedLabelStyle ?? defaultLabelStyle) : defaultLabelStyle,
                              ),
                              if (subLabel != null) const SizedBox(height: 4),
                              if (subLabel != null) Text(subLabel!, style: EnsTextStyle.text14_w400_normal_body),
                            ],
                          ),
                        ),
                      ],
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

class _EnsRadio<T> extends StatelessWidget {
  final bool enabled;
  final bool hasError;
  final T value;
  final T groupValue;

  const _EnsRadio({required this.enabled, required this.value, required this.groupValue, required this.hasError});

  @override
  Widget build(BuildContext context) => Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: hasError
                  ? EnsColors.error
                  : enabled
                      ? null
                      : EnsColors.disabled,
              gradient: enabled && !hasError ? EnsColors.gradient01 : null,
              borderRadius: BorderRadius.circular(80),
            ),
            height: 20,
            width: 20,
          ),
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 250),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return ScaleTransition(scale: animation, child: child);
            },
            child: value == groupValue ? _SelectedRadio(enabled) : _UnselectedRadio(enabled),
          ),
        ],
      );
}

class _SelectedRadio extends StatelessWidget {
  final bool enabled;

  const _SelectedRadio(this.enabled);

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          color: enabled ? EnsColors.light : EnsColors.disabled100,
          borderRadius: BorderRadius.circular(80),
          boxShadow: enabled
              ? [
                  BoxShadow(
                    offset: const Offset(0, 2),
                    blurRadius: 2,
                    color: Colors.black.withAlpha(OpacityUtils.getAlpha(0.5)),
                  ),
                ]
              : null,
        ),
        height: 8,
        width: 8,
      );
}

class _UnselectedRadio extends StatelessWidget {
  final bool enabled;

  const _UnselectedRadio(this.enabled);

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          color: enabled ? EnsColors.light : EnsColors.disabled100,
          borderRadius: BorderRadius.circular(80),
        ),
        height: 16,
        width: 16,
      );
}
