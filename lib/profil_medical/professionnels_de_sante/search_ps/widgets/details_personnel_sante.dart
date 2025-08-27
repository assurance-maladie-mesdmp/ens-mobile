/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/professionnel_de_sante.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/screens/viewModels/recherche_ps_screen_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/widgets/ps_address_line.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';

class DetailsPersonnelSante extends StatelessWidget {
  final ProfessionnelSanteDisplayModel ps;
  final Widget Function() extraBuilder;

  const DetailsPersonnelSante({required this.ps, required this.extraBuilder});

  static const _maxAddressesToDisplay = 2;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${ps.firstName} ${ps.lastName}',
          style: EnsTextStyle.text16_w700_normal_title,
          textAlign: TextAlign.start,
        ),
        const SizedBox(height: 8),
        if (ps.profession != null)
          Text(
            ps.profession!,
            style: EnsTextStyle.text16_w600_body,
            textAlign: TextAlign.start,
          ),
        if (ps.speciality != null)
          Text(
            ps.speciality!,
            style: EnsTextStyle.text16_w600_body,
            textAlign: TextAlign.start,
          ),
        const SizedBox(height: 8),
        for (int i = 0; i < _maxAddressesToDisplay && i < ps.addresses.length; i++)
          Column(
            children: [
              PsAddressLine(adresse: ActeurDeSanteAdresse.formattedCityAndZipcode(ps.addresses[i])),
              const SizedBox(height: 4),
            ],
          ),
        if (ps.addresses.length > _maxAddressesToDisplay) const PsAddressLine(adresse: '...'),
        const SizedBox(height: 16),
        extraBuilder(),
      ],
    );
  }
}
