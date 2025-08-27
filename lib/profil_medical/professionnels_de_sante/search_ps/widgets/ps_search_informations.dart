/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/professional_activities/screens/referentiel_professional_activities_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/commune.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';

class PsSearchInformations extends StatelessWidget {
  final String lastname;
  final String firstname;
  final Commune? cityResult;
  final ReferentielItemDisplayModel? professionalActivity;

  const PsSearchInformations({
    super.key,
    required this.lastname,
    required this.firstname,
    this.cityResult,
    this.professionalActivity,
  });

  String _buildResearchString() {
    String researchString = firstname;
    if (researchString.isNotEmpty && lastname.isNotEmpty) {
      researchString += ', ';
    }
    researchString += lastname;
    if (researchString.isNotEmpty && professionalActivity != null) {
      researchString += ', ';
    }
    researchString += professionalActivity != null ? professionalActivity!.label : '';
    if (researchString.isNotEmpty && cityResult != null) {
      researchString += ', ';
    }
    return researchString += cityResult != null ? cityResult.toString() : '';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 40),
        Text(
          'Résultat de la recherche "${_buildResearchString()}"',
          style: EnsTextStyle.text16_w400_normal_body,
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}
