/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';

class EnsCard extends StatelessWidget {
  final Widget child;
  final void Function()? onTap;
  final Color backgroundColor;
  final Color highlightColor;
  final Color splashColor;
  final bool hasBoxShadow;
  final Border? border;
  final double borderRadius;
  final ShapeBorder? shape;
  final Color boxShadowColor;
  final double boxShadowBlurRadius;
  final bool withoutMergeSemantics;
  final EdgeInsets padding;

  const EnsCard({
    super.key,
    required this.child,
    this.onTap,
    this.backgroundColor = EnsColors.light,
    this.highlightColor = EnsColors.neutral200,
    this.splashColor = EnsColors.neutral200,
    this.hasBoxShadow = true,
    this.border,
    this.borderRadius = 12,
    this.shape,
    this.boxShadowColor = EnsColors.neutral200,
    this.boxShadowBlurRadius = 16,
    this.withoutMergeSemantics = false,
    this.padding = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    final card = Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: hasBoxShadow
            ? [
                BoxShadow(color: boxShadowColor, blurRadius: boxShadowBlurRadius),
              ]
            : null,
        border: border,
      ),
      child: Semantics(
        button: onTap != null,
        child: EnsInkWell(
          color: backgroundColor,
          highlightColor: highlightColor,
          splashColor: splashColor,
          shape: shape,
          borderRadius: BorderRadius.circular(borderRadius),
          onTap: onTap,
          child: Padding(
            padding: padding,
            child: child,
          ),
        ),
      ),
    );
    if (withoutMergeSemantics) return card;
    return MergeSemantics(
      child: card,
    );
  }
}
