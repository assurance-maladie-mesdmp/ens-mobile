/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/allergies/domain/models/ens_allergie.dart';
import 'package:fr_cnamts_ens/profil_medical/allergies/screens/allergie_detail_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/screens/widgets/linked_documents_indicator.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/screens/viewModels/traitement_link_display_from.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_allergies.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/list/ens_list_item.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class AllergieItem extends StatelessWidget {
  final EnsAllergie allergie;

  const AllergieItem({
    required this.allergie,
  });

  @override
  Widget build(BuildContext context) {
    return EnsListItem(
      onTap: () {
        context.tagAction(TagsAllergies.tag_260_button_allergie_actions);
        Navigator.pushNamed(
          context,
          AllergieDetailScreen.routeName,
          arguments:
              AllergieDetailScreenArgument(allergieId: allergie.id, displayFrom: TraitementLinkDisplayFrom.allergie),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(child: Text(allergie.name, style: EnsTextStyle.text16_w700_normal_title)),
              const SizedBox(width: 8),
              const EnsSvg(EnsImages.ic_chevron_right, color: EnsColors.title, height: 12, width: 8),
            ],
          ),
          if (allergie.linkedTraitementIds.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: LinkedEntitieIndicator(
                indicatorNumber: allergie.linkedTraitementIds.length,
                currentType: IndicatorType.TRAITEMENT,
              ),
            ),
        ],
      ),
    );
  }
}
