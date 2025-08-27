/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/screens/traitement_detail_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/screens/viewModels/traitements_screen_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/widgets/linked_allergie_section.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/widgets/linked_maladie_section.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/list/ens_list_item.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class TraitementItem extends StatelessWidget {
  final TraitementsItemDisplayModel displayModel;

  const TraitementItem({
    required this.displayModel,
  });

  @override
  Widget build(BuildContext context) {
    return EnsListItem(
      onTap: () {
        context.tagAction(
          const EnsTag(
            name: 'button_traitement_actions',
            category: EnsAnalyticsCategory.CLICK,
            level1: 'profil_medical',
            level2: 'traitements',
          ),
        );
        Navigator.pushNamed(
          context,
          TraitementDetailScreen.routeName,
          arguments: TraitementDetailScreenArgument(
            traitementId: displayModel.id,
          ),
        );
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(displayModel.name, style: EnsTextStyle.text16_w700_normal_title),
                const SizedBox(height: 8),
                Text(displayModel.dateInfo, style: EnsTextStyle.text14_w400_normal_body),
                if (displayModel.linkedMaladieNames.isNotEmpty)
                  LinkedMaladieSection(maladieNames: displayModel.linkedMaladieNames),
                if (displayModel.linkedAllergieNames.isNotEmpty)
                  LinkedAllergieSection(allergieNames: displayModel.linkedAllergieNames),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 24),
            child: EnsSvg(EnsImages.ic_chevron_right, color: EnsColors.title, height: 12, width: 8),
          ),
        ],
      ),
    );
  }
}
