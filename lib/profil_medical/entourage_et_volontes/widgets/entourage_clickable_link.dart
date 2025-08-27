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

class EntourageClickableLink extends StatelessWidget {
  final String text;
  final void Function() onTap;

  const EntourageClickableLink({
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return EnsInkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(top: 16, bottom: 16, right: 16),
        child: EnsRichText(
          text: TextSpan(
            children: [
              const WidgetSpan(
                alignment: PlaceholderAlignment.middle,
                child: EnsSvg(EnsImages.ic_plus, color: EnsColors.primary, width: 24, height: 24),
              ),
              const WidgetSpan(alignment: PlaceholderAlignment.middle, child: SizedBox(width: 4)),
              TextSpan(text: text, style: EnsTextStyle.text16_w600_primary),
            ],
          ),
        ),
      ),
    );
  }
}
