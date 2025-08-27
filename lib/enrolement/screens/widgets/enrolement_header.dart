/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_rich_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';

class EnrolementHeader extends StatelessWidget {
  final String title;
  final String subtitle;
  final String pictoPath;
  final String? subtitleMotGras;

  const EnrolementHeader({required this.title, required this.subtitle, required this.pictoPath, this.subtitleMotGras});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
      child: Row(
        children: [
          EnsSvg(pictoPath, width: 64, height: 64),
          const SizedBox(width: 16),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: EnsTextStyle.text20_w400_normal_title),
                const SizedBox(height: 4),
                EnsRichText(
                  text: TextSpan(
                    children: [
                      TextSpan(text: subtitle, style: EnsTextStyle.text14_w400_normal_body),
                      TextSpan(text: subtitleMotGras, style: EnsTextStyle.text14_w700_normal_body),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
