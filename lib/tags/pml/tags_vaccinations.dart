/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';

class TagsVaccinations {
  static const tag_2489_button_valider_modification_vaccination = EnsTag(
    name: 'button_valider_modification_vaccination',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'vaccinations',
    level2: 'vaccination_modification',
  );

  static const tag_189_input_ajout_commentaire = EnsTag(
    name: 'input_ajout_commentaire',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'vaccinations',
    level3: 'vaccination_modification',
  );

  static const tag_266_button_ajout_vaccination = EnsTag(
    name: 'button_ajout_vaccination',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'vaccinations',
  );

  static const tag_268_button_carte_vaccination = EnsTag(
    name: 'button_carte_vaccination',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'vaccinations',
  );

  static const tag_276_popin_ajouter_vaccination_quitter = EnsTag(
    name: 'popin_ajouter_vaccination_quitter',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'vaccinations',
    level2: 'vaccination_ajout',
  );

  static const tag_277_button_ajouter_vaccination_quitter_valider = EnsTag(
    name: 'button_ajouter_vaccination_quitter_valider',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'vaccinations',
    level2: 'vaccination_ajout',
  );

  static const tag_278_button_ajouter_vaccination_quitter_annuler = EnsTag(
    name: 'button_ajouter_vaccination_quitter_annuler',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'vaccinations',
    level2: 'vaccination_ajout',
  );

  static const tag_282_input_nom_vaccinateur = EnsTag(
    name: 'input_nom_vaccinateur',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'vaccinations',
    level2: 'vaccination_modification',
  );

  static const tag_283_input_lot_vaccin = EnsTag(
    name: 'input_lot_vaccin',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'vaccinations',
    level2: 'vaccination_modification',
  );

  static const tag_284_input_date_vaccin = EnsTag(
    name: 'input_date_vaccin',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'vaccinations',
    level2: 'vaccination_modification',
  );

  static const tag_285_input_type_vaccin = EnsTag(
    name: 'input_type_vaccin',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'vaccinations',
    level2: 'vaccination_modification',
  );

  static const tag_286_input_nom_vaccin = EnsTag(
    name: 'input_nom_vaccin',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'vaccinations',
    level2: 'vaccination_modification',
  );

  static const tag_287_popin_supprimer_vaccination = EnsTag(
    name: 'popin_supprimer_vaccination',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'vaccinations',
    level2: 'vaccination_suppression',
  );

  static const tag_288_button_supprimer_vaccination_supprimer = EnsTag(
    name: 'button_supprimer_vaccination_supprimer',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'vaccinations',
    level2: 'vaccination_suppression',
  );

  static const tag_289_button_supprimer_vaccination_annuler = EnsTag(
    name: 'button_supprimer_vaccination_annuler',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'vaccinations',
    level2: 'vaccination_suppression',
  );

  static const tag_464_vaccinations_empty = EnsTag(
    name: 'vaccinations_empty',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'vaccinations',
  );

  static const tag_465_vaccinations = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'vaccinations',
    level1: 'vaccinations',
  );

  static const tag_466_button_voir_vaccinations_a_realiser = EnsTag(
    name: 'button_voir_vaccinations_a_realiser',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'vaccinations',
  );

  static const tag_467_popin_vaccination_ajout = EnsTag(
    name: 'popin_vaccination_ajout',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'vaccinations',
    level2: 'vaccination_ajout',
  );

  static const tag_468_button_valider_ajout_vaccination = EnsTag(
    name: 'button_valider_ajout_vaccination',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'vaccinations',
    level2: 'vaccination_ajout',
  );

  static const tag_469_popin_vaccination_modif = EnsTag(
    name: 'popin_vaccination_modif',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'vaccinations',
    level2: 'vaccination_modification',
  );

  static const tag_470_vaccination_detail = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'vaccination_detail',
    level1: 'vaccinations',
  );

  static const tag_472_vaccinations_a_realiser = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'vaccinations_a_realiser',
    level1: 'vaccinations',
    level2: 'vaccination_a_realiser',
  );

  static const tag_487_button_telecharger = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_telecharger_vaccination',
    level1: 'vaccinations',
  );

  static const tag_962_button_scanner_vaccin = EnsTag(
    name: 'button_scanner_vaccin',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'vaccinations',
    level2: 'vaccination_ajout',
  );

  static const tag_963_button_remplir_manuellement = EnsTag(
    name: 'button_remplir_manuellement',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'vaccinations',
    level2: 'vaccination_ajout',
  );

  static const tag_964_popin_choix_remplissage_scan_manuel = EnsTag(
    name: 'popin_choix_remplissage_scan_manuel',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'vaccinations',
    level2: 'vaccination_ajout',
  );

  static const tag_965_button_scanner_vaccin_formulaire = EnsTag(
    name: 'button_scanner_vaccin_formulaire',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'vaccinations',
    level2: 'vaccination_ajout',
  );

  static const tag_966_button_information_formulaire = EnsTag(
    name: 'button_information_formulaire',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'vaccinations',
    level2: 'vaccination_ajout',
  );

  static const tag_967_input_date_formulaire = EnsTag(
    name: 'popin_choix_remplissage_scan_manuel',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'vaccinations',
    level2: 'vaccination_ajout',
  );

  static const tag_971_button_fermer = EnsTag(
    name: 'button_fermer',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'vaccinations',
    level2: 'vaccination_ajout',
  );

  static const tag_270_button_modifier_vaccination = EnsTag(
    name: 'button_modifier_vaccination',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'vaccinations',
  );

  static const tag_271_button_supprimer_vaccination = EnsTag(
    name: 'button_supprimer_vaccination',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'vaccinations',
    level2: 'vaccination_ajout',
  );

  static const tag_279_button_vaccination_detail_action = EnsTag(
    name: 'button_vaccination_detail_action',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'vaccinations',
  );

  static const tag_98_button_attestation_vaccinale_details = EnsTag(
    name: 'button_attestation_vaccinale_details',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'attestation_vaccinale',
    level2: 'attestation_consult',
    level3: 'attestation_pdf',
  );

  static const tag_100_button_attestation_vaccinale_details_edit = EnsTag(
    name: 'button_attestation_vaccinale_details_edit',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'attestation_vaccinale',
    level2: 'attestation_consult',
    level3: 'attestation_details',
  );

  static const tag_2555_button_ps_liste_vaccin = EnsTag(
    name: 'button_ps_liste_vaccin',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'vaccinations',
    level2: 'vaccination_ajout',
  );
}
