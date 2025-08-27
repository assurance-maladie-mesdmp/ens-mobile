/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';

class ParametersToggleItem extends StatelessWidget {
  final String titre;
  final String? description;
  final TextStyle labelTextStyle;
  final bool value;
  final bool disabled;
  final bool isLoading;
  final void Function(bool) onToggle;
  final double? internalVerticalPadding;
  final EdgeInsetsGeometry padding;
  final CrossAxisAlignment textAndSwitchRowAlignment;
  final double sizeSpaceItems;

  const ParametersToggleItem({
    super.key,
    required this.titre,
    required this.description,
    required this.value,
    this.disabled = false,
    this.isLoading = false,
    this.labelTextStyle = EnsTextStyle.text14_w600_normal_title,
    required this.onToggle,
    this.internalVerticalPadding,
    this.padding = const EdgeInsets.fromLTRB(24, 8, 24, 24),
    this.textAndSwitchRowAlignment = CrossAxisAlignment.center,
    this.sizeSpaceItems = 0,
  });

  @override
  Widget build(BuildContext context) {
    return MergeSemantics(
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 200),
        opacity: disabled ? 0.5 : 1.0,
        child: Container(
          color: Colors.white,
          padding: padding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: textAndSwitchRowAlignment,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      titre,
                      style: labelTextStyle,
                    ),
                  ),
                  SizedBox(width: sizeSpaceItems),
                  if (isLoading)
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
                      child: SkeletonBox(
                        height: 16,
                        width: 36,
                        radius: 10,
                      ),
                    )
                  else
                    Switch(
                      value: value,
                      onChanged: disabled ? (_) {} : onToggle,
                      activeTrackColor: EnsColors.success,
                      inactiveTrackColor: EnsColors.body,
                      activeColor: EnsColors.light,
                      trackOutlineColor: WidgetStateProperty.resolveWith<Color?>((Set<WidgetState> states) {
                        if (states.contains(WidgetState.selected)) return EnsColors.success;
                        return null;
                      }),
                      inactiveThumbColor: EnsColors.light,
                      thumbIcon: WidgetStateProperty.resolveWith<Icon?>((Set<WidgetState> states) {
                        return Icon(
                          states.contains(WidgetState.selected) ? Icons.check : Icons.radio_button_unchecked,
                          color: states.contains(WidgetState.selected) ? EnsColors.success : EnsColors.light,
                          size: 16,
                          semanticLabel: states.contains(WidgetState.selected) ? 'activé' : 'désactivé',
                        );
                      }),
                      splashRadius: 44,
                      materialTapTargetSize: MaterialTapTargetSize.padded,
                    ),
                ],
              ),
              if (internalVerticalPadding != null) SizedBox(height: internalVerticalPadding),
              if (description != null)
                Text(
                  description!,
                  style: EnsTextStyle.text14_w400_normal_body,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
