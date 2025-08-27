/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/widgets.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_card.dart';

class HistoriqueActivitesListItem extends StatelessWidget {
  final String title;
  final String subtitle;

  const HistoriqueActivitesListItem(this.title, this.subtitle);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: EnsCard(
        padding: const EdgeInsets.all(16),
        hasBoxShadow: false,
        backgroundColor: EnsColors.neutral100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(title, style: EnsTextStyle.text16_w600_title),
            const SizedBox(height: 8),
            Text(subtitle, style: EnsTextStyle.text16_w400_normal_body),
          ],
        ),
      ),
    );
  }
}
