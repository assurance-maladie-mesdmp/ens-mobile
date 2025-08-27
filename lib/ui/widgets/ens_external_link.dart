/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_rich_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/webpage_utils.dart';

class EnsExternalLink extends StatelessWidget {
  final String linkUrl;
  final String linkText;
  final TextStyle linkTextStyle;
  final TextAlign linkTextAlign;
  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisAlignment mainAxisAlignment;
  final Color backgroundColor;
  final Color iconColor;
  final EdgeInsetsGeometry extraPadding;
  final String? semanticsLabel;
  final BorderRadius? borderRadius;
  final void Function()? onTap;
  final bool shouldRedirect;

  const EnsExternalLink.withRedirection({
    required this.linkUrl,
    required this.linkText,
    this.linkTextStyle = EnsTextStyle.text14_w700_normal_primary_underline,
    this.linkTextAlign = TextAlign.start,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.backgroundColor = Colors.transparent,
    this.iconColor = EnsColors.primary,
    this.extraPadding = EdgeInsets.zero,
    this.semanticsLabel,
    this.borderRadius,
    this.onTap,
  }) : shouldRedirect = true;

  const EnsExternalLink.withoutRedirection({
    required this.linkText,
    this.linkTextStyle = EnsTextStyle.text14_w700_normal_primary_underline,
    this.linkTextAlign = TextAlign.start,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.backgroundColor = Colors.transparent,
    this.iconColor = EnsColors.primary,
    this.extraPadding = EdgeInsets.zero,
    this.semanticsLabel,
    this.borderRadius,
  })  : linkUrl = '',
        shouldRedirect = false,
        onTap = null;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Flexible(
          child: EnsInkWell(
            color: backgroundColor,
            isLink: true,
            borderRadius: borderRadius ?? BorderRadius.circular(4),
            onTap: shouldRedirect
                ? () {
                    onTap?.call();
                    launchUrlOnBrowser(linkUrl);
                  }
                : null,
            child: Padding(
              padding: extraPadding,
              child: Semantics(
                label: semanticsLabel ?? linkText,
                child: ExcludeSemantics(
                  child: EnsRichText(
                    textAlign: linkTextAlign,
                    text: TextSpan(
                      children: [
                        TextSpan(text: linkText, style: linkTextStyle),
                        const WidgetSpan(child: SizedBox(width: 4)),
                        WidgetSpan(
                          child: EnsSvg(
                            EnsImages.ic_external_link,
                            height: 16,
                            width: 16,
                            color: iconColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
