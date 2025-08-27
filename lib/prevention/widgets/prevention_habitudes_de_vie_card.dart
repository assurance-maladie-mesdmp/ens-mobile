/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/screens/habitudes_de_vie_screen.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_habitudes_de_vie.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_card.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_link_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class PreventionHabitudesDeVieCard extends StatelessWidget {
  final String linkLabel;
  final String label;

  const PreventionHabitudesDeVieCard({
    this.linkLabel = 'Voir les habitudes de vie',
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return EnsCard(
      onTap: () {
        context.tagAction(TagsHabitudesDeVie.tag_2667_button_prevention_habitude_de_vie);
        Navigator.pushNamed(context, HabitudesDeVieScreen.routeName);
      },
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          const EnsSvg(EnsImages.bien_etre, height: 64, width: 64),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(label, style: EnsTextStyle.text14_w400_normal_body),
                EnsLinkText(
                  label: linkLabel,
                  textPadding: const EdgeInsets.only(top: 4),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
