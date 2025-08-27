/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';

class TagsTraitements {
  static const tag_718_popin_modif_traitement = EnsTag(
    name: 'popin_modif_traitement',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'profil_medical',
    level2: 'traitements',
    level3: 'traitement_modification',
  );

  static const tag_popin_ajout_traitement = EnsTag(
    name: 'popin_ajout_traitement',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'profil_medical',
    level2: 'traitements',
    level3: 'traitement_ajout',
  );

  static const tag_button_valider_modification_traitement = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_valider_modification_traitement',
    level1: 'profil_medical',
    level2: 'traitements',
    level3: 'traitement_modification',
  );

  static const tag_button_valider_ajout_traitement = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_valider_ajout_traitement',
    level1: 'profil_medical',
    level2: 'traitements',
    level3: 'traitement_ajout',
  );

  static const tag_traitements = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'traitements',
    level1: 'profil_medical',
    level2: 'traitements',
  );

  static const tag_215_traitement_empty = EnsTag(
    name: 'traitement_empty',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'profil_medical',
    level2: 'traitements',
  );

  static const tag_418_traitement_aucun = EnsTag(
    name: 'traitement_aucun',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'profil_medical',
    level2: 'traitements',
  );

  static const tag_717_maladie_traitement = EnsTag(
    name: 'maladie_traitement',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'profil_medical',
    level2: 'maladie_traitement',
  );

  static const tag_691_traitement_detail = EnsTag(
    name: 'traitement_detail',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'profil_medical',
    level2: 'traitements',
  );

  static const tag_225_popin_supprimer_traitement = EnsTag(
    name: 'popin_supprimer_traitement',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'profil_medical',
    level2: 'traitements',
    level3: 'traitement_supression',
  );

  static const tag_211_button_modifier_traitement = EnsTag(
    name: 'button_modifier_traitement',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'traitements',
    level3: 'traitement_ajout',
  );

  static const tag_226_button_supprimer_traitement_valider = EnsTag(
    name: 'button_supprimer_traitement_valider',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'traitements',
    level3: 'traitement_supression',
  );

  static const tag_227_button_supprimer_traitement_annuler = EnsTag(
    name: 'button_supprimer_traitement_annuler',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'traitements',
    level3: 'traitement_supression',
  );

  static const tag_214_button_supprimer_traitement = EnsTag(
    name: 'button_supprimer_traitement',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'traitements',
    level3: 'traitement_modification',
  );

  static const tag_689_button_retirer_maladie_traitement = EnsTag(
    name: 'button_retirer_maladie_traitement',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'maladies',
    level3: 'maladie_traitement',
  );

  static const tag_220_popin_consulter_traitement_actions = EnsTag(
    name: 'popin_consulter_traitement_actions',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'profil_medical',
    level2: 'traitements',
  );

  static const tag_2361_button_scanner_traitement = EnsTag(
    name: 'button_scanner_traitement',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'traitements',
    level3: 'traitement_ajout',
  );

  static const tag_2362_button_remplir_manuellement_traitement = EnsTag(
    name: 'button_remplir_manuellement_traitement',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'traitements',
    level3: 'traitement_ajout',
  );

  static const tag_2363_button_scanner_traitement_fermer = EnsTag(
    name: 'button_scanner_traitement_fermer',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'traitements',
    level3: 'traitement_ajout',
  );

  static const tag_2364_popin_choix_remplissage_scan_manuel_traitement = EnsTag(
    name: 'popin_choix_remplissage_scan_manuel_traitement',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'profil_medical',
    level2: 'traitements',
    level3: 'traitement_ajout',
  );

  static const tag_2365_button_scanner_traitement_formulaire = EnsTag(
    name: 'button_scanner_traitement_formulaire',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'traitements',
    level3: 'traitement_ajout',
  );

  static const tag_2366_button_information_traitement_formulaire = EnsTag(
    name: 'button_information_traitement_formulaire',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'traitements',
    level3: 'traitement_ajout',
  );

  static const tag_2367_input_date_traitement_formulaire = EnsTag(
    name: 'input_date_traitement_formulaire',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'traitements',
    level3: 'traitement_ajout',
  );

  static const tag_216_popin_ajouter_traitement_quitter = EnsTag(
    name: 'popin_ajouter_traitement_quitter',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'profil_medical',
    level2: 'traitements',
    level3: 'traitement_ajout',
  );

  static const tag_217_button_ajouter_traitement_quitter_valider = EnsTag(
    name: 'button_ajouter_traitement_quitter_valider',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'traitements',
    level3: 'traitement_ajout',
  );

  static const tag_218_button_ajouter_traitement_quitter_annuler = EnsTag(
    name: 'button_ajouter_traitement_quitter_annuler',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'traitements',
    level3: 'traitement_ajout',
  );

  static const tag_229_input_ajout_commentaire = EnsTag(
    name: 'input_ajout_commentaire',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'traitements',
    level3: 'traitement_modification',
  );

  static const tag_210_input_ajout_nom_posologie = EnsTag(
    name: 'input_ajout_nom_posologie',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'traitements',
    level3: 'traitement_modification',
  );

  static const tag_221_input_nom_traitement = EnsTag(
    name: 'input_nom_traitement',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'traitements',
    level3: 'traitement_modification',
  );

  static const tag_button_ajout_traitement = EnsTag(
    name: 'button_ajout_traitement',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'traitements',
  );

  static const tag_2477_button_voir_allergie_traitement = EnsTag(
    name: 'button_voir_allergie_traitement',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'traitements',
  );

  static const tag_2474_button_retirer_allergie_traitement_detail = EnsTag(
    name: 'button_retirer_allergie_traitement_detail',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'allergies',
  );

  static const tag_2231_popin_retirer_allergie_traitement = EnsTag(
    name: 'popin_retirer_allergie_traitement',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'allergies',
  );

  static const tag_2232_popin_allergie_associer_traitement = EnsTag(
    name: 'popin_allergie_associer_traitement',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'allergies',
    level3: 'allergie_ajout',
  );
}
