/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/etablissement_de_sante_detail_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/professionnel_de_sante_detail_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/viewmodels/called_es_or_ps_detail_screen_from.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_histoire_sante.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_link_text.dart';

class ActeurDeSanteWidget extends StatelessWidget {
  final String? name;
  final String? idNat;
  final bool isPs;

  const ActeurDeSanteWidget({
    super.key,
    required this.name,
    this.idNat,
    required this.isPs,
  });

  @override
  Widget build(BuildContext context) {
    return idNat != null && idNat!.isNotEmpty
        ? EnsLinkText(
            textPadding: EdgeInsets.zero,
            onTap: () {
              context.tagAction(TagsMonMonHistoireDeSante.tag_2250_link_info_ps_es);
              _navigateToActeurPage(context);
            },
            label: name ?? 'Professionnel de santé non renseigné',
          )
        : Text(
            name ?? 'Professionnel de santé non renseigné',
            style: EnsTextStyle.text14_w400_normal_body,
          );
  }

  void _navigateToActeurPage(BuildContext context) {
    if (isPs) {
      Navigator.pushNamed(
        context,
        ProfessionnelDeSanteDetailScreen.routeName,
        arguments: ProfessionnelDeSanteArgument(
          idNat!,
          CalledESorPSDetailScreenFrom.MON_HISTOIRE_SANTE_SCREEN,
        ),
      );
    } else {
      Navigator.pushNamed(
        context,
        EtablissementDeSanteDetailScreen.routeName,
        arguments: EtablissementDeSanteArgument(
          idNat!,
          CalledESorPSDetailScreenFrom.MON_HISTOIRE_SANTE_SCREEN,
        ),
      );
    }
  }
}
