/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';

class TagsMaladies {
  static const tag_186_button_ajout_maladie = EnsTag(
    name: 'button_ajout_maladie',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'maladies',
  );

  static const tag_198_button_maladie_actions = EnsTag(
    name: 'button_maladie_actions',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'maladies',
  );

  static const tag_maladies = EnsTag(
    name: 'maladies',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'profil_medical',
  );

  static const tag_414_maladies_empty = EnsTag(
    name: 'maladies_empty',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'profil_medical',
    level2: 'maladies',
  );

  static const tag_416_maladies_aucune = EnsTag(
    name: 'maladies_aucune',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'profil_medical',
    level2: 'maladies',
  );

  static const tag_187_popin_supprimer_maladie = EnsTag(
    name: 'popin_supprimer_maladie',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'profil_medical',
    level2: 'maladies',
    level3: 'maladie_supression',
  );

  static const tag_206_button_supprimer_maladie_valider = EnsTag(
    name: 'button_supprimer_maladie_valider',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'maladies',
    level3: 'maladie_supression',
  );

  static const tag_207_button_supprimer_maladie_annuler = EnsTag(
    name: 'button_supprimer_maladie_annuler',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'maladies',
    level3: 'maladie_supression',
  );

  static const tag_719_maladie_detail = EnsTag(
    name: 'maladie_detail',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'profil_medical',
    level2: 'maladies',
  );

  static const tag_199_popin_consulter_maladie_actions = EnsTag(
    name: 'popin_consulter_maladie_actions',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'profil_medical',
    level2: 'maladies',
  );

  static const tag_190_button_modifier_maladie = EnsTag(
    name: 'button_modifier_maladie',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'maladies',
    level3: 'maladie_ajout',
  );

  static const tag_187_button_supprimer_maladie = EnsTag(
    name: 'button_supprimer_maladie',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
  );

  static const tag_686_button_ajout_maladie_traitement = EnsTag(
    name: 'button_ajout_maladie_traitement',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'maladies',
    level3: 'maladie_ajout',
  );

  static const tag_688_button_voir_traitement_maladie = EnsTag(
    name: 'button_voir_traitement_maladie',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'maladies',
    level3: 'maladies_liste',
  );

  static const tag_200_maladie_modification_maladie = EnsTag(
    name: 'maladie_modification_maladie',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'profil_medical',
    level2: 'maladies',
    level3: 'maladie_modification',
  );

  static const tag_194_maladies_ajout_maladie = EnsTag(
    name: 'maladies_ajout_maladie',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'profil_medical',
    level2: 'maladies',
    level3: 'maladie_ajout',
  );

  static const tag_195_popin_ajouter_une_maladie_quitter = EnsTag(
    name: 'popin_ajouter_une_maladie_quitter',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'profil_medical',
    level2: 'maladies',
    level3: 'maladie_ajout',
  );

  static const tag_196_button_ajouter_une_maladie_quitter_valider = EnsTag(
    name: 'button_ajouter_une_maladie_quitter_valider',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'maladies',
    level3: 'maladie_ajout',
  );

  static const tag_197_button_ajouter_une_maladie_quitter_annuler = EnsTag(
    name: 'button_ajouter_une_maladie_quitter_annuler',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'maladies',
    level3: 'maladie_ajout',
  );

  static const tag_button_valider_modification_maladie = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_valider_modification_maladie',
    level1: 'profil_medical',
    level2: 'maladies',
    level3: 'maladie_modification',
  );

  static const tag_button_valider_ajout_maladie = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_valider_ajout_maladie',
    level1: 'profil_medical',
    level2: 'maladies',
    level3: 'maladie_ajout',
  );

  static const tag_201_input_nom_maladie = EnsTag(
    name: 'input_nom_maladie',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'maladies',
    level3: 'maladie_modification',
  );

  static const tag_192_input_ajout_commentaire = EnsTag(
    name: 'input_ajout_commentaire',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'maladies',
    level3: 'maladie_ajout',
  );

  static const tag_689_button_retirer_maladie_traitement = EnsTag(
    name: 'button_retirer_maladie_traitement',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'maladies',
    level3: 'maladie_ajout',
  );

  static const tag_1333_popin_ajouter_traitement_maladie = EnsTag(
    name: 'popin_ajouter_traitement_maladie',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'profil_medical',
    level2: 'maladies',
    level3: 'maladie_ajout',
  );

  static const tag_1334_button_ajouter_nouveau_traitement = EnsTag(
    name: 'button_ajouter_nouveau_traitement',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'maladies',
    level3: 'maladie_ajout',
  );

  static const tag_1335_button_associer_traitement_renseigne = EnsTag(
    name: 'button_associer_traitement_renseigne',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'maladies',
    level3: 'maladie_ajout',
  );

  static const tag_1336_button_ajouter_traitement_fermer = EnsTag(
    name: 'button_ajouter_traitement_fermer',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'maladies',
    level3: 'maladie_ajout',
  );

  static const tag_1337_popin_associer_traitement_renseigne = EnsTag(
    name: 'popin_associer_traitement_renseigne',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'profil_medical',
    level2: 'maladies',
    level3: 'maladie_ajout',
  );

  static const tag_1340_button_associer_traitement_ajouter = EnsTag(
    name: 'button_associer_traitement_ajouter',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'maladies',
    level3: 'maladie_ajout',
  );

  static const tag_button_voir_maladie_traitement = EnsTag(
    name: 'button_voir_maladie_traitement',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'traitements',
    level3: 'traitements_liste',
  );
}
