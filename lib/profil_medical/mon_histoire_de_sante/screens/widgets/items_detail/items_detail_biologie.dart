/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/domain/models/mon_histoire_de_sante_episode.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/domain/models/mon_histoire_de_sante_item.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/viewmodels/mon_histoire_de_sante_episode_display_model.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/widgets/items_detail/acteur_de_sante_widget.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_bullet_point.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_divider.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/utils/ens_date_utils.dart';

class ItemsDetailBiologie extends StatelessWidget {
  final MonHistoireDeSanteEpisodeBiologie episode;
  final DisplayableActeurDeSante? auteur;

  const ItemsDetailBiologie({required this.episode, required this.auteur});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: EnsColors.light,
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: ScrollviewWithScrollbar(
          scrollDirection: Axis.vertical,
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Professionnel de santé', style: EnsTextStyle.text14_w600_normal_title),
              const SizedBox(height: 4),
              ActeurDeSanteWidget(
                name: auteur?.nom,
                idNat: auteur?.id,
                isPs: auteur?.isPs ?? true,
              ),
              const EnsDivider(paddingTop: 16, paddingBottom: 16),
              const Text('Date', style: EnsTextStyle.text14_w600_normal_title),
              const SizedBox(height: 4),
              Text(
                EnsDateUtils.formatDayPlainTextMonthAndYear(episode.date),
                style: EnsTextStyle.text14_w400_normal_body,
              ),
              const EnsDivider(paddingTop: 16, paddingBottom: 16),
              Text(episode.items.getFormattedActeTitle(), style: EnsTextStyle.text14_w600_normal_title),
              const SizedBox(height: 4),
              for (final item in episode.items)
                if (episode.items.length == 1)
                  Text(item.capitalizedNom)
                else
                  EnsBulletPoint(margin: 12, text: item.capitalizedNom),
            ],
          ),
        ),
      ),
    );
  }
}
