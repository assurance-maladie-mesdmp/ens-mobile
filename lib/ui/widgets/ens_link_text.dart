/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';

class EnsLinkText extends StatelessWidget {
  final String label;
  final Function()? onTap;
  final String? semanticsHint;
  final TextStyle textStyle;
  final AlignmentDirectional? alignment;
  final TextAlign? textAlign;
  final EdgeInsets textPadding;
  final bool isLoading;
  final bool isDisabled;
  final Color splashColor;
  final Color highlightColor;
  final Color focusColor;
  final double borderRadius;
  final bool shouldExpanded;

  const EnsLinkText({
    super.key,
    required this.label,
    this.onTap,
    this.semanticsHint,
    this.textStyle = EnsTextStyle.text14_w700_normal_primary_underline,
    this.alignment = AlignmentDirectional.centerStart,
    this.textAlign,
    this.textPadding = const EdgeInsets.all(16),
    this.isLoading = false,
    this.isDisabled = false,
    this.splashColor = EnsColors.neutral200,
    this.highlightColor = EnsColors.neutral200,
    this.focusColor = EnsColors.neutral300,
    this.borderRadius = 4,
    this.shouldExpanded = false,
  });

  @override
  Widget build(BuildContext context) {
    final text = Text(
      label,
      style: isDisabled ? textStyle.copyWith(color: EnsColors.disabled) : textStyle,
      textAlign: textAlign,
    );
    final align = isLoading
        ? const Material(
            color: Colors.transparent,
            child: SizedBox(
              height: 52,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 16,
                    width: 16,
                    child: CircularProgressIndicator(color: EnsColors.primary, strokeWidth: 3),
                  ),
                ],
              ),
            ),
          )
        : EnsInkWell(
            splashColor: splashColor,
            highlightColor: highlightColor,
            focusColor: focusColor,
            borderRadius: BorderRadius.circular(borderRadius),
            onTap: isDisabled ? null : onTap,
            child: Padding(
              padding: textPadding,
              child: shouldExpanded ? Row(children: [Expanded(child: text)]) : text,
            ),
          );

    if (alignment != null) {
      return Align(alignment: alignment!, child: align);
    } else {
      return align;
    }
  }
}
