/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/count_bubble_indicator.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/webpage_utils.dart';

class MenuItem extends StatelessWidget {
  final String title;
  final String? subTitle;
  final int indicator;
  final String destinationPage;
  final Object? arguments;
  final bool isClickable;
  final bool isExternalLink;
  final void Function()? onTap;
  final String? icon;
  final TextStyle titleStyle;

  const MenuItem({
    required this.title,
    this.subTitle,
    this.indicator = 0,
    this.arguments,
    required this.destinationPage,
    this.isClickable = true,
    this.isExternalLink = false,
    this.onTap,
    this.icon,
    this.titleStyle = EnsTextStyle.text16_w700_normal_title,
  });

  Future<void> _onMenuItemClick(BuildContext context) async {
    onTap?.call();
    if (isExternalLink) {
      launchUrlOnBrowser(destinationPage);
    } else if (destinationPage != '') {
      Navigator.pushNamed(context, destinationPage, arguments: arguments);
    }
  }

  @override
  Widget build(BuildContext context) {
    return EnsInkWell(
      onTap: () => isClickable ? _onMenuItemClick(context) : null,
      child: Ink(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: Row(
          children: [
            if (icon != null)
              Row(
                children: [
                  EnsSvg(icon!),
                  const SizedBox(width: 18),
                ],
              ),
            Expanded(
              flex: 9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: titleStyle,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  if (subTitle != null)
                    Text(
                      subTitle!,
                      style: EnsTextStyle.text14_w400_normal_title,
                      overflow: TextOverflow.ellipsis,
                    ),
                ],
              ),
            ),
            if (indicator > 0) CountBubbleIndicator(count: indicator),
            if (isClickable)
              Expanded(
                child: isExternalLink
                    ? const EnsSvg(EnsImages.ic_external_link, height: 24, width: 24, color: EnsColors.body)
                    : const EnsSvg(EnsImages.ic_chevron_right, height: 12, width: 8, color: EnsColors.body),
              ),
          ],
        ),
      ),
    );
  }
}
