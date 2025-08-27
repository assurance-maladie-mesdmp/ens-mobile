/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/screens/viewModels/recherche_ps_screen_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/screens/viewModels/recherche_ps_type.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/widgets/details_personnel_sante.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/widgets/ps_search_card_action_section.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_card.dart';

class PsSearchCard extends StatelessWidget {
  final ProfessionnelSanteDisplayModel ps;
  final void Function()? onTapCard;
  final void Function() onTapButton;
  final RecherchePSType recherchePSType;

  const PsSearchCard({
    required this.ps,
    this.onTapCard,
    required this.onTapButton,
    required this.recherchePSType,
  });

  @override
  Widget build(BuildContext context) {
    return EnsCard(
      onTap: onTapCard,
      padding: const EdgeInsets.all(16),
      withoutMergeSemantics: true,
      child: DetailsPersonnelSante(
        ps: ps,
        extraBuilder: () => PsSearchCardActionSection(
          onTapButton: onTapButton,
          recherchePSType: recherchePSType,
          isActive: ps.isActive,
        ),
      ),
    );
  }
}
