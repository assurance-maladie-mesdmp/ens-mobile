/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_type.dart';

class TagMesures {
  static EnsTag? getTagMesureDetails(EnsMesureType mesureType) {
    String name;
    switch (mesureType) {
      case EnsMesureType.PERIMETRE_CRANIEN:
        name = 'mesures_historique_perimetre_cranien';
      case EnsMesureType.POIDS:
        name = 'mesures_historique_poids';
      case EnsMesureType.TAILLE:
        name = 'mesures_historique_taille';
      case EnsMesureType.IMC:
        name = 'mesure_historique_imc';
      case EnsMesureType.TOUR_DE_TAILLE:
        name = 'mesures_historique_tour_de_taille';
      case EnsMesureType.TEMPERATURE:
        name = 'mesures_historique_temperature';
      case EnsMesureType.GLYCEMIE:
        name = 'mesures_historique_glycemie';
      case EnsMesureType.TENSION_ARTERIELLE:
        name = 'mesures_historique_tension';
      case EnsMesureType.NIVEAU_DE_DOULEUR:
        name = 'mesures_historique_douleur';
      case EnsMesureType.FREQUENCE_CARDIAQUE:
        name = 'mesures_historique_frequence_cardiaque';
      case EnsMesureType.GLUCOSE_INTERSTITIEL:
        name = 'mesures_historique_taux_glucose';
      case EnsMesureType.HEMOGLOBINE_GLYQUEE:
        name = 'mesures_historique_igg';
      case EnsMesureType.HEMOGLOBINE_GLYQUEE_INDEX:
        name = 'mesures_historique_hba1c';
      default:
        name = '';
    }
    if (name != '') {
      return EnsTag(
        name: name,
        category: EnsAnalyticsCategory.PAGE,
        level1: 'profil_medical',
        level2: 'mesures',
        level3: mesureType.tagHistoriqueLevel3,
      );
    } else {
      return null;
    }
  }

  static EnsTag? getTagAjoutMesureClick(EnsMesureType mesureType) {
    String name;
    switch (mesureType) {
      case EnsMesureType.POIDS:
        name = 'button_ajout_poids';
      case EnsMesureType.TAILLE:
        name = 'button_ajout_taille';
      case EnsMesureType.PERIMETRE_CRANIEN:
        name = 'button_ajout_perimetre_cranien';
      case EnsMesureType.TOUR_DE_TAILLE:
        name = 'button_ajout_tour_de_taille';
      case EnsMesureType.TEMPERATURE:
        name = 'button_ajout_temperature';
      case EnsMesureType.GLYCEMIE:
        name = 'button_ajout_glycemie';
      case EnsMesureType.TENSION_ARTERIELLE:
        name = 'button_ajout_tension_arterielle';
      case EnsMesureType.NIVEAU_DE_DOULEUR:
        name = 'button_ajout_niveau_de_douleur';
      case EnsMesureType.FREQUENCE_CARDIAQUE:
        name = 'button_ajout_frequence_cardiaque';
      case EnsMesureType.GLUCOSE_INTERSTITIEL:
        name = 'button_ajout_taux_glucose';
      case EnsMesureType.HEMOGLOBINE_GLYQUEE:
        name = 'button_ajout_hba1c';
      case EnsMesureType.HEMOGLOBINE_GLYQUEE_INDEX:
        name = 'button_ajout_igg';
      default:
        name = '';
    }
    if (name != '') {
      return EnsTag(
        name: name,
        category: EnsAnalyticsCategory.CLICK,
        level1: 'profil_medical',
        level2: 'mesures',
      );
    } else {
      return null;
    }
  }

  static EnsTag? getTagInfoClick(EnsMesureType mesureType) {
    ({String tag, String name, String level3})? tagInfo;
    switch (mesureType) {
      case EnsMesureType.POIDS:
        tagInfo = (tag: '2617', name: 'button_info_poids', level3: 'historique_poids');
      case EnsMesureType.TAILLE:
        tagInfo = (tag: '2616', name: 'button_info_taille', level3: 'historique_taille');
      case EnsMesureType.PERIMETRE_CRANIEN:
        tagInfo = (tag: '2618', name: 'button_info_perimetre_cranien', level3: 'historique_perimetre_cranien');
      case EnsMesureType.TOUR_DE_TAILLE:
        tagInfo = (tag: '2615', name: 'button_info_tour_de_taille', level3: 'historique_tour_de_taille');
      default:
        tagInfo = null;
    }
    if (tagInfo != null) {
      return EnsTag(
        name: tagInfo.name,
        category: EnsAnalyticsCategory.CLICK,
        level1: 'profil_medical',
        level2: 'mesures',
        level3: tagInfo.level3,
      );
    } else {
      return null;
    }
  }

  static EnsTag tagButtonVoirDocumentLie(EnsMesureType mesureType) {
    return EnsTag(
      name: 'button_voir_document_lie',
      category: EnsAnalyticsCategory.CLICK,
      level1: 'profil_medical',
      level2: 'mesures',
      level3: mesureType.tagHistoriqueLevel3,
    );
  }

  static EnsTag? tagModifierValeurClick(EnsMesureType mesureType) {
    final String level3 = mesureType.tagHistoriqueLevel3;

    if (level3 != '') {
      return EnsTag(
        name: 'button_modifier_une_valeur',
        category: EnsAnalyticsCategory.CLICK,
        level1: 'profil_medical',
        level2: 'mesures',
        level3: level3,
      );
    } else {
      return null;
    }
  }

  static EnsTag? tagSupprimerValeurClick(EnsMesureType mesureType) {
    final String level3 = mesureType.tagHistoriqueLevel3;

    if (level3 != '') {
      return EnsTag(
        name: 'button_supprimer_une_valeur',
        category: EnsAnalyticsCategory.CLICK,
        level1: 'profil_medical',
        level2: 'mesures',
        level3: level3,
      );
    } else {
      return null;
    }
  }

  static const EnsTag tagMesures = EnsTag(
    name: 'mesures',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'profil_medical',
    level2: 'mesures',
  );

  static const EnsTag tag_button_ajout_objectif = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_ajout_objectif',
    level1: 'profil_medical',
    level2: 'mesures',
    level3: 'historique_hba1c',
  );

  static const EnsTag tag_button_modifier_objectif = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_modifier_objectif',
    level1: 'profil_medical',
    level2: 'mesures',
    level3: 'historique_hba1c',
  );

  static const EnsTag tag_button_supprimer_objectif = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_supprimer_objectif',
    level1: 'profil_medical',
    level2: 'mesures',
    level3: 'historique_hba1c',
  );

  static EnsTag tagButtonSupprimerUneValeur(String level3) {
    return EnsTag(
      name: 'button_supprimer_une_valeur',
      category: EnsAnalyticsCategory.CLICK,
      level1: 'profil_medical',
      level2: 'mesures',
      level3: level3,
    );
  }
}
