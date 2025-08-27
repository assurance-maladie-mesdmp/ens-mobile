/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/domain/models/mon_histoire_de_sante_episode.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/viewmodels/mon_histoire_de_sante_episode_display_model.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/widgets/items_detail/acteur_de_sante_widget.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_divider.dart';
import 'package:fr_cnamts_ens/utils/ens_date_utils.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';

class ItemsDetailHospitalisation extends StatelessWidget {
  final MonHistoireDeSanteEpisodeHospitalisation episode;
  final DisplayableActeurDeSante? auteur;

  const ItemsDetailHospitalisation({required this.episode, required this.auteur});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(width: 1, color: EnsColors.neutral200),
          bottom: BorderSide(width: 1, color: EnsColors.neutral200),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('Professionnel de santé', style: EnsTextStyle.text14_w600_normal_title),
            ActeurDeSanteWidget(
              name: auteur?.nom,
              idNat: auteur?.id,
              isPs: auteur?.isPs ?? false,
            ),
            const EnsDivider(paddingTop: 16, paddingBottom: 16),
            const Text('Admission', style: EnsTextStyle.text14_w600_normal_title),
            Text(
              EnsDateUtils.formatdMMMMyyyy(episode.dateAdmission),
              style: EnsTextStyle.text14_w400_normal_body,
            ),
            const EnsDivider(paddingTop: 16, paddingBottom: 16),
            if (episode.dateSortie != null) ...[
              const Text('Date de sortie', style: EnsTextStyle.text14_w600_normal_title),
              Text(
                EnsDateUtils.formatdMMMMyyyy(episode.dateSortie!),
                style: EnsTextStyle.text14_w400_normal_body,
              ),
              const EnsDivider(paddingTop: 16, paddingBottom: 16),
            ],
            const Text('Nature du séjour', style: EnsTextStyle.text14_w600_normal_title),
            Text(episode.nature.capitalize(), style: EnsTextStyle.text14_w400_normal_body),
          ],
        ),
      ),
    );
  }
}
