/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_card.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class IncitationPmlCard extends StatelessWidget {
  final String title;
  final String? subTitle;
  final String? asset;
  final Widget? assetWidget;
  final bool isCompleted;
  final void Function()? onTap;

  const IncitationPmlCard({
    super.key,
    required this.title,
    this.subTitle,
    this.asset,
    this.assetWidget,
    this.isCompleted = false,
    this.onTap,
  }) : assert((asset == null && assetWidget != null) || (asset != null && assetWidget == null));

  @override
  Widget build(BuildContext context) {
    return EnsCard(
      onTap: onTap,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          if (assetWidget != null) assetWidget!,
          if (asset != null) EnsSvg(asset!, height: 64, width: 64),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  title,
                  style: EnsTextStyle.text16_w700_normal_title,
                ),
                if (subTitle != null)
                  Text(
                    subTitle!,
                    style: EnsTextStyle.text14_w400_normal_body,
                  ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          if (isCompleted)
            const SizedBox(
              width: 24,
              height: 24,
              child: EnsSvg(EnsImages.ic_circle_check, color: EnsColors.success),
            )
          else
            const SizedBox(
              width: 20,
              height: 20,
              child: Center(
                child: EnsSvg(EnsImages.ic_chevron_right, width: 8, height: 12, color: EnsColors.title),
              ),
            ),
        ],
      ),
    );
  }
}
