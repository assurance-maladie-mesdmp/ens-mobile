/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';
import 'package:fr_cnamts_ens/profil_medical/courbes_reference/redux/courbes_reference_states.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_type.dart';

class TagsCourbesReference {
  static EnsTag tagValiderAffichageButtonClick(EnsMesureType mesureType) {
    final label = _getMesureLabelForTagName(mesureType);
    return EnsTag(
      category: EnsAnalyticsCategory.CLICK,
      name: 'button_valider_affichage_graphique_mesure_$label',
      level1: 'profil_medical',
      level2: 'mesures',
      level3: mesureType.tagHistoriqueLevel3,
    );
  }

  static EnsTag tagOptionAffichageButtonClick(TypeOfChart typeOfChart, EnsMesureType mesureType) {
    String tagName = 'button_affichage_graphique_';
    tagName += typeOfChart == TypeOfChart.DYNAMIQUE ? 'standard_mesure_' : 'enfant_mesure_';
    tagName += _getMesureLabelForTagName(mesureType);

    return EnsTag(
      category: EnsAnalyticsCategory.CLICK,
      name: tagName,
      level1: 'profil_medical',
      level2: 'mesures',
      level3: mesureType.tagHistoriqueLevel3,
    );
  }

  static String _getMesureLabelForTagName(EnsMesureType mesureType) {
    switch (mesureType) {
      case EnsMesureType.POIDS:
        return 'poids';
      case EnsMesureType.TAILLE:
        return 'taille';
      case EnsMesureType.IMC:
        return 'IMC';
      case EnsMesureType.PERIMETRE_CRANIEN:
        return 'perimetre_cranien';
      default:
        return '';
    }
  }
}
