/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';

class TagsAllergies {
  static const tag_250_allergies = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'allergies',
    level1: 'profil_medical',
    level2: 'allergies',
  );

  static const tag_424_allergies_empty = EnsTag(
    name: 'allergies_empty',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'profil_medical',
    level2: 'allergies',
  );

  static const tag_426_allergies_aucun = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'allergies_aucun',
    level1: 'profil_medical',
    level2: 'allergies',
  );

  static const tag_251_button_ajout_allergies = EnsTag(
    name: 'button_ajout_allergies',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'allergies',
  );

  static const tag_253_button_modifier_allergies = EnsTag(
    name: 'button_modifier_allergies',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'allergies',
    level3: 'allergies_ajout',
  );

  static const tag_255_button_supprimer_allergies = EnsTag(
    name: 'button_supprimer_allergies',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'allergies',
    level3: 'allergies_modifications',
  );

  static const tag_260_button_allergie_actions = EnsTag(
    name: 'button_allergie_actions',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'allergies',
  );

  static const tag_263_popin_supprimer_allergie = EnsTag(
    name: 'popin_supprimer_allergie',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'profil_medical',
    level2: 'allergies',
    level3: 'allergie_suppression',
  );

  static const tag_264_button_supprimer_allergie_valider = EnsTag(
    name: 'button_supprimer_allergie_valider',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'allergies',
    level3: 'allergie_suppression',
  );

  static const tag_265_button_supprimer_allergie_annuler = EnsTag(
    name: 'button_supprimer_allergie_annuler',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'allergies',
    level3: 'allergie_suppression',
  );

  static const tag_popin_ajout_allergie = EnsTag(
    name: 'popin_ajout_allergie',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'profil_medical',
    level2: 'allergies',
    level3: 'allergie_ajout',
  );

  static const tag_popin_modif_allergie = EnsTag(
    name: 'popin_modif_allergie',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'profil_medical',
    level2: 'allergies',
    level3: 'allergie_modifications',
  );

  static const tag_button_valider_modification_allergie = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_valider_modification_allergie',
    level1: 'profil_medical',
    level2: 'allergies',
    level3: 'allergie_modifications',
  );

  static const tag_button_valider_ajout_allergie = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_valider_ajout_allergie',
    level1: 'profil_medical',
    level2: 'allergies',
    level3: 'allergie_ajout',
  );

  static const tag_252_input_ajout_commentaire = EnsTag(
    name: 'input_ajout_commentaire',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'allergies',
    level3: 'allergies_ajout',
  );

  static const tag_257_popin_ajouter_allergie_quitter = EnsTag(
    name: 'popin_ajouter_allergie_quitter',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'profil_medical',
    level2: 'allergies',
    level3: 'allergies_ajout',
  );

  static const tag_258_button_ajouter_allergie_quitter_valider = EnsTag(
    name: 'button_ajouter_allergie_quitter_valider',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'allergies',
    level3: 'allergies_ajout',
  );

  static const tag_259_button_ajouter_allergie_quitter_annuler = EnsTag(
    name: 'button_ajouter_allergie_quitter_annuler',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'allergies',
    level3: 'allergies_ajout',
  );

  static const tag_262_input_nom_allergie = EnsTag(
    name: 'input_nom_allergie',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'allergies',
    level3: 'allergies_modifications',
  );

  static const tag_486_button_telecharger_allergie = EnsTag(
    name: 'button_telecharger_allergie',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'allergies',
  );

  static const tag_popin_consulter_allergie_actions = EnsTag(
    name: 'popin_consulter_allergie_actions',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'profil_medical',
    level2: 'allergies',
  );

  static const tag_2477_button_voir_allergie_traitement = EnsTag(
    name: 'button_voir_allergie_traitement',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'profil_medical',
    level2: 'traitements',
  );
}
