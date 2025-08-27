/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';

// ignore_for_file: dont_use_inkwell
class EnsInkWell extends StatelessWidget {
  final Color color;
  final ShapeBorder? shape;
  final BorderRadius? borderRadius;
  final String? semanticLabel;
  final String? semanticOnTapHint;
  final String? semanticHint;
  final bool semanticExplicitChildNodes;
  final bool excludeSemantics;
  final bool isLink;
  final bool isTextField;
  final bool isSelected;
  final Color highlightColor;
  final Color splashColor;
  final void Function()? onTap;
  final GestureTapDownCallback? onTapDown;
  final GestureTapUpCallback? onTapUp;
  final GestureTapCallback? onTapCancel;
  final ShapeBorder? customBorder;
  final Color? focusColor;
  final ValueChanged<bool>? onFocusChange;
  final Widget child;

  const EnsInkWell({
    this.color = Colors.transparent,
    this.shape,
    this.borderRadius,
    this.semanticLabel,
    this.semanticOnTapHint,
    this.semanticHint,
    this.semanticExplicitChildNodes = false,
    this.excludeSemantics = false,
    this.isLink = false,
    this.isTextField = false,
    this.isSelected = false,
    this.highlightColor = EnsColors.neutral200,
    this.splashColor = EnsColors.neutral200,
    this.onTap,
    this.onTapDown,
    this.onTapUp,
    this.onTapCancel,
    this.customBorder,
    this.focusColor,
    this.onFocusChange,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: semanticLabel,
      onTapHint: semanticOnTapHint,
      hint: semanticHint,
      button: onTap != null && !isLink && !isTextField,
      link: isLink,
      textField: isTextField,
      selected: isSelected,
      explicitChildNodes: semanticExplicitChildNodes,
      excludeSemantics: excludeSemantics,
      child: Material(
        color: color,
        borderRadius: shape == null ? borderRadius : null,
        shape: shape,
        child: InkWell(
          highlightColor: highlightColor,
          splashColor: splashColor,
          borderRadius: borderRadius,
          onTap: onTap,
          onTapDown: onTapDown,
          onTapUp: onTapUp,
          onTapCancel: onTapCancel,
          customBorder: customBorder,
          focusColor: focusColor,
          onFocusChange: onFocusChange,
          child: child,
        ),
      ),
    );
  }
}
