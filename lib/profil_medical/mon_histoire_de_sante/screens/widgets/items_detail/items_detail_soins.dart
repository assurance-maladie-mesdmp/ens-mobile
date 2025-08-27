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
import 'package:fr_cnamts_ens/utils/ens_date_utils.dart';

class ItemsDetailSoins extends StatelessWidget {
  final MonHistoireDeSanteEpisodeSoins episode;
  final DisplayableActeurDeSante? auteur;

  const ItemsDetailSoins({required this.episode, required this.auteur});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: EnsColors.light,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 16, 24, 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('Professionnel de santé', style: EnsTextStyle.text14_w600_normal_title),
            const SizedBox(height: 4),
            ActeurDeSanteWidget(
              name: auteur?.nom,
              idNat: auteur?.id,
              isPs: auteur?.isPs ?? true,
            ),
            const EnsDivider(paddingTop: 16, paddingBottom: 16),
            if (auteur?.professionLabel != null) ...[
              _Profession(auteur!.professionLabel!),
              const EnsDivider(paddingTop: 16, paddingBottom: 16),
            ],
            if (auteur?.specialites != null) ...[
              _Speciality(auteur!.specialites!),
              const EnsDivider(paddingTop: 16, paddingBottom: 16),
            ],
            const Text('Date de consultation', style: EnsTextStyle.text14_w600_normal_title),
            const SizedBox(height: 4),
            Text(
              EnsDateUtils.formatdMMMMyyyy(episode.date),
              style: EnsTextStyle.text14_w400_normal_body,
            ),
            const EnsDivider(paddingTop: 16, paddingBottom: 16),
            Text(episode.items.getFormattedActeTitle(), style: EnsTextStyle.text14_w600_normal_title),
            const SizedBox(height: 4),
            for (final item in episode.items)
              if (episode.items.length == 1) Text(item.nom) else EnsBulletPoint(margin: 12, text: item.nom),
          ],
        ),
      ),
    );
  }
}

class _Speciality extends StatelessWidget {
  final String label;

  const _Speciality(this.label);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text('Spécialité du prescripteur', style: EnsTextStyle.text14_w600_normal_title),
        const SizedBox(height: 4),
        Text(label, style: EnsTextStyle.text14_w400_normal_body),
      ],
    );
  }
}

class _Profession extends StatelessWidget {
  final String label;

  const _Profession(this.label);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text('Profession', style: EnsTextStyle.text14_w600_normal_title),
        const SizedBox(height: 4),
        Text(label, style: EnsTextStyle.text14_w400_normal_body),
      ],
    );
  }
}
