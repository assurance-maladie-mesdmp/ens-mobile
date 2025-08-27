/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';

class TagsAntecedents {
  static const tag_234_button_ajout_antecedent = EnsTag(
    name: 'button_ajout_antecedent',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'antecedents',
  );

  static const tag_236_button_modifier_antecedent = EnsTag(
    name: 'button_modifier_antecedent',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'antecedents',
    level3: 'antecedent_ajout',
  );

  static const tag_238_button_supprimer_antecedent = EnsTag(
    name: 'button_supprimer_antecedent',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'antecedents',
    level3: 'antecedent_modifications',
  );

  static const tag_243_button_antecedents_actions = EnsTag(
    name: 'button_antecedents_actions',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'antecedents',
  );

  static const tag_247_popin_supprimer_antecedent = EnsTag(
    name: 'popin_supprimer_antecedent',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'profil_medical',
    level2: 'antecedents',
    level3: 'antecedent_supression',
  );

  static const tag_248_button_supprimer_antecedent_valider = EnsTag(
    name: 'button_supprimer_antecedent_valider',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'antecedents',
    level3: 'antecedent_supression',
  );

  static const tag_249_button_supprimer_antecedent_annuler = EnsTag(
    name: 'button_supprimer_antecedent_annuler',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'antecedents',
    level3: 'antecedent_supression',
  );

  static const tag_antecedents = EnsTag(
    name: 'antecedents',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'profil_medical',
    level2: 'antecedents',
  );

  static const tag_427_antecedent_empty = EnsTag(
    name: 'antecedent_empty',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'profil_medical',
    level2: 'antecedents',
  );

  static const tag_429_antecedent_aucun = EnsTag(
    name: 'antecedent_aucun',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'profil_medical',
    level2: 'antecedents',
  );

  static const tag_popin_modif_antecedent = EnsTag(
    name: 'popin_modif_antecedent',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'profil_medical',
    level2: 'antecedents',
    level3: 'antecedent_modifications',
  );

  static const tag_popin_ajout_antecedent = EnsTag(
    name: 'popin_ajout_antecedent',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'profil_medical',
    level2: 'antecedents',
    level3: 'antecedent_ajout',
  );

  static const tag_button_valider_modification_antecedent = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_valider_modification_antecedent',
    level1: 'profil_medical',
    level2: 'antecedents',
    level3: 'antecedent_modifications',
  );

  static const tag_button_valider_ajout_antecedent = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_valider_ajout_antecedent',
    level1: 'profil_medical',
    level2: 'antecedents',
    level3: 'antecedent_ajout',
  );

  static const tag_237_input_ajout_commentaire = EnsTag(
    name: 'input_ajout_commentaire',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'antecedents',
    level3: 'antecedent_modifications',
  );

  static const tag_240_popin_ajouter_antecedent_quitter = EnsTag(
    name: 'popin_ajouter_antecedent_quitter',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'profil_medical',
    level2: 'antecedents',
    level3: 'antecedent_ajout',
  );

  static const tag_241_button_ajouter_antecedent_quitter_valider = EnsTag(
    name: 'button_ajouter_antecedent_quitter_valider',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'antecedents',
    level3: 'antecedent_ajout',
  );

  static const tag_242_button_ajouter_antecedent_quitter_annuler = EnsTag(
    name: 'button_ajouter_antecedent_quitter_annuler',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'antecedents',
    level3: 'antecedent_ajout',
  );

  static const tag_245_input_nom_antecedent = EnsTag(
    name: 'input_nom_antecedent',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'antecedents',
    level3: 'antecedent_modifications',
  );

  static const tag_246_input_lien_familial = EnsTag(
    name: 'input_lien_familial',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'antecedents',
    level3: 'antecedent_modifications',
  );

  static const tag_244_popin_consulter_antecedent_actions = EnsTag(
    name: 'popin_consulter_antecedent_actions',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'profil_medical',
    level2: 'antecedents',
  );
}
