/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_card.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_rich_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class ConfidentialityInformationCard extends StatelessWidget {
  final bool isInformationMasked;
  final bool hasLinkButton;
  final String label;
  final Function()? onTap;

  const ConfidentialityInformationCard({
    super.key,
    required this.isInformationMasked,
    required this.label,
    this.hasLinkButton = true,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return EnsCard(
      onTap: onTap,
      backgroundColor: isInformationMasked ? EnsColors.body : EnsColors.success,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: EnsSvg(
              isInformationMasked ? EnsImages.ic_hide : EnsImages.ic_show,
              height: 16,
              width: 16,
              color: isInformationMasked ? EnsColors.info100 : EnsColors.light,
            ),
          ),
          Expanded(
            child: ColoredBox(
              color: isInformationMasked ? EnsColors.info100 : EnsColors.success100,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: EnsRichText(
                  text: TextSpan(
                    text: label,
                    style: EnsTextStyle.text14_w400_normal_body,
                    children: [
                      if (hasLinkButton)
                        const WidgetSpan(
                          child: Padding(
                            padding: EdgeInsets.only(top: 4),
                            child: Text(
                              'Modifier la confidentialité',
                              style: EnsTextStyle.text14_w700_normal_primary_underline,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
