/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/viewmodels/mon_histoire_de_sante_episode_display_model.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/etablissement_de_sante_detail_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/professionnel_de_sante_detail_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/viewmodels/called_es_or_ps_detail_screen_from.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_histoire_sante.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_link_text.dart';

class Prescripteur extends StatelessWidget {
  final DisplayableActeurDeSante? prescripteur;

  const Prescripteur(this.prescripteur);

  @override
  Widget build(BuildContext context) {
    if (prescripteur == null) {
      return const SizedBox();
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          const Text('Prescrit par', style: EnsTextStyle.text14_w600_normal_title),
          const SizedBox(height: 4),
          EnsLinkText(
            textPadding: EdgeInsets.zero,
            onTap: () {
              if (prescripteur!.isPs) {
                context.tagAction(TagsMonMonHistoireDeSante.tag_2250_link_info_ps_es);
                Navigator.pushNamed(
                  context,
                  ProfessionnelDeSanteDetailScreen.routeName,
                  arguments: ProfessionnelDeSanteArgument(
                    prescripteur!.id,
                    CalledESorPSDetailScreenFrom.MON_HISTOIRE_SANTE_SCREEN,
                  ),
                );
              } else {
                context.tagAction(TagsMonMonHistoireDeSante.tag_2250_link_info_ps_es);
                Navigator.pushNamed(
                  context,
                  EtablissementDeSanteDetailScreen.routeName,
                  arguments: EtablissementDeSanteArgument(
                    prescripteur!.id,
                    CalledESorPSDetailScreenFrom.MON_HISTOIRE_SANTE_SCREEN,
                  ),
                );
              }
            },
            label: prescripteur!.nom,
          ),
          if (prescripteur!.professionLabel != null) ...[
            const SizedBox(height: 16),
            _Profession(prescripteur!.professionLabel!),
          ],
          if (prescripteur!.specialites != null) ...[
            const SizedBox(height: 16),
            _Specialities(prescripteur!.specialites!),
          ],
        ],
      );
    }
  }
}

class _Specialities extends StatelessWidget {
  final String specialites;

  const _Specialities(this.specialites);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text('Spécialité du prescripteur', style: EnsTextStyle.text14_w600_normal_title),
        const SizedBox(height: 4),
        Text(specialites, style: EnsTextStyle.text14_w400_normal_body),
      ],
    );
  }
}

class _Profession extends StatelessWidget {
  final String profession;

  const _Profession(this.profession);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text('Profession', style: EnsTextStyle.text14_w600_normal_title),
        const SizedBox(height: 4),
        Text(profession, style: EnsTextStyle.text14_w400_normal_body),
      ],
    );
  }
}
