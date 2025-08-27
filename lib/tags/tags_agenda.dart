/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';

class TagsAgenda {
  static const tag_popin_supprimer_rdv = EnsTag(
    name: 'popin_supprimer_rdv',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'agenda',
  );

  static const tag_button_supprimer_rdv_valider = EnsTag(
    name: 'button_supprimer_rdv_valider',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'agenda',
  );

  static const tag_599_agenda_accueil = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'agenda_accueil',
    level1: 'agenda',
  );

  static const tag_944_popin_supprimer_rappel = EnsTag(
    name: 'popin_supprimer_rappel',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'agenda',
    level2: 'evenement_suppression',
  );

  static const tag_945_button_supprimer_rappel_annuler = EnsTag(
    name: 'button_supprimer_rappel_annuler',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'agenda',
    level2: 'evenement_suppression',
  );

  static const tag_946_button_supprimer_rappel_valider = EnsTag(
    name: 'button_supprimer_rappel_valider',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'agenda',
    level2: 'evenement_suppression',
  );

  static const tag_button_supprimer_rdv_annuler = EnsTag(
    name: 'button_supprimer_rdv_annuler',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'agenda',
  );

  static const tag_600_button_ajouter_evenement = EnsTag(
    name: 'button_ajouter_evenement',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'agenda',
    level2: 'evenement_ajout',
  );

  static const tag_601_ajouter_rdv = EnsTag(
    name: 'ajouter_rdv',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'agenda',
    level2: 'evenement_ajout',
  );

  static const tag_602_button_rechercher_ps_rdv = EnsTag(
    name: 'button_rechercher_ps_rdv',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'agenda',
    level2: 'evenement_ajout',
  );

  static const tag_606_button_valider_ajouter_rdv = EnsTag(
    name: 'button_valider_ajouter_rdv',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'agenda',
    level2: 'evenement_ajout',
  );

  static const tag_607_detail_rdv = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'detail_rdv',
    level1: 'agenda',
  );

  static const tag_1042_detail_examen_medical = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'detail_examen_medical',
    level1: 'agenda',
    level2: 'detail_examen_medical',
  );

  static const tag_609_popin_actions_rdv = EnsTag(
    name: 'popin_actions_rdv',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'agenda',
  );

  static const tag_610_button_modifier_rdv = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_modifier_rdv',
    level1: 'agenda',
  );

  static const tag_608_button_actions_rdv = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_actions_rdv',
    level1: 'agenda',
  );

  static const tag_929_link_voir_tous_rappels = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'link_voir_tous_rappels',
    level1: 'agenda',
  );

  static const tag_930_carousel_voir_tous_rappels = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'carousel_voir_tous_rappels',
    level1: 'agenda',
  );

  static const tag_933_button_ajouter_rappel = EnsTag(
    name: 'button_ajouter_rappel',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'agenda',
    level2: 'evenement_ajout',
  );

  static const tag_934_button_ajouter_note_rdv = EnsTag(
    name: 'button_ajouter_note_rdv',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'agenda',
    level2: 'evenement_ajout',
  );

  static const tag_935_button_valider_note_rdv = EnsTag(
    name: 'button_valider_note_rdv',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'agenda',
    level2: 'evenement_ajout',
  );

  static const tag_938_agenda_info = EnsTag(
    name: 'agenda_info',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'agenda',
  );

  static const tag_942_popin_modif_rappel = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'popin_modif_rappel',
    level1: 'agenda',
    level2: 'evenement_modification',
  );

  static const tag_943_button_validation_modif_rappel = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_validation_modif_rappel',
    level1: 'agenda',
    level2: 'evenement_modification',
  );

  static const tag_947_ajouter_rappel = EnsTag(
    name: 'ajouter_rappel',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'agenda',
    level2: 'evenement_ajout',
  );

  static const tag_948_button_valider_ajouter_rappel = EnsTag(
    name: 'button_valider_ajouter_rappel',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'agenda',
    level2: 'evenement_ajout',
  );

  static const tag_949_mes_rappels_a_venir = EnsTag(
    name: 'mes_rappels_a_venir',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'agenda',
  );

  static const tag_950_detail_rappel = EnsTag(
    name: 'detail_rappel',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'agenda',
  );

  static const tag_951_button_modifier_rappel = EnsTag(
    name: 'button_modifier_rappel',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'agenda',
  );

  static const tag_952_button_supprimer_rappel = EnsTag(
    name: 'button_supprimer_rappel',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'agenda',
  );

  static const tag_953_button_actions_rappel = EnsTag(
    name: 'button_actions_rappel',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'agenda',
  );

  static const tag_1040_tab_vue_prochains_examens_medicaux = EnsTag(
    name: 'tab_vue_prochains_examens_medicaux',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'agenda',
  );

  static const tag_1041_tab_vue_tous_examens_medicaux = EnsTag(
    name: 'tab_vue_tous_examens_medicaux',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'agenda',
  );

  static const tag_954_ps_rdv = EnsTag(
    name: 'ps_rdv',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'agenda',
    level2: 'evenement_ajout',
  );

  static const tag_957_button_valider_ps_rdv = EnsTag(
    name: 'button_valider_ps_rdv',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'agenda',
    level2: 'evenement_ajout',
  );

  static const tag_958_info_mt_incorrect = EnsTag(
    name: 'info_mt_incorrect',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'professionnel_sante_detail',
  );

  static const tag_1039_examens_medicaux = EnsTag(
    name: 'examens_medicaux',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'agenda',
  );

  static const tag_937_tab_vue_rdv_passes = EnsTag(
    name: 'tab_vue_rdv_passes',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'agenda',
  );

  static const tag_932_button_ajouter_rdv = EnsTag(
    name: 'button_ajouter_rdv',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'agenda',
    level2: 'evenement_ajout',
  );

  static const tag_955_button_ps_liste_rdv = EnsTag(
    name: 'button_ps_liste_rdv',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'agenda',
    level2: 'evenement_ajout',
  );

  static const tag_956_button_saisie_libre_ps_rdv = EnsTag(
    name: 'button_saisie_libre_ps_rdv',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'agenda',
    level2: 'evenement_ajout',
  );

  static const tag_936_tab_vue_rdv_a_venir = EnsTag(
    name: 'tab_vue_rdv_a_venir',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'agenda',
  );

  static const tag_931_ajouter_evenement = EnsTag(
    name: 'ajouter_evenement',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'agenda',
    level2: 'evenement_ajout',
  );

  static const tag_1024_tab_vue_rappel_a_venir = EnsTag(
    name: 'tab_vue_rappel_a_venir',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'agenda',
  );

  static const tag_1025_tab_vue_rappel_passes = EnsTag(
    name: 'tab_vue_rappel_passes',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'agenda',
  );

  static const tag_1345_examen_avant_18_ans = EnsTag(
    name: 'examen_avant_18_ans',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'agenda',
  );

  static const tag_2416_button_examen_medical_statut = EnsTag(
    name: 'button_examen_medical_statut',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'agenda',
    level2: 'detail_examen_medical',
  );

  static const tag_2445_detail_vaccination = EnsTag(
    name: 'detail_vaccination',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'agenda',
    level2: 'detail_vaccination',
  );

  static const tag_2446_detail_bilan_prevention = EnsTag(
    name: 'detail_bilan_prevention',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'agenda',
    level2: 'detail_bilan_prevention',
  );

  static const tag_2552_popin_detail_vaccination_ajout_vaccination = EnsTag(
    name: 'popin_detail_vaccination_ajout_vaccination',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'agenda',
    level2: 'detail_vaccination',
  );

  static const tag_2557_examens_medicaux_filtrer_par_type_ou_statut = EnsTag(
    name: 'examens_medicaux_filtrer_par_type_ou_statut',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'agenda',
  );

  static const tag_2558_button_valider_filtrer_par_type_ou_statut = EnsTag(
    name: 'button_valider_filtrer_par_type_ou_statut',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'agenda',
  );

  static const tag_2559_examens_medicaux_filtrer_par_type = EnsTag(
    name: 'examens_medicaux_filtrer_par_type',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'agenda',
  );

  static const tag_2560_checkbox_unselect_type = EnsTag(
    name: 'checkbox_unselect_type',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'agenda',
  );

  static const tag_2561_checkbox_select_type = EnsTag(
    name: 'checkbox_select_type',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'agenda',
  );

  static const tag_2562_examens_medicaux_filtrer_par_statut = EnsTag(
    name: 'examens_medicaux_filtrer_par_statut',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'agenda',
  );

  static const tag_2563_checkbox_unselect_statut = EnsTag(
    name: 'checkbox_unselect_statut',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'agenda',
  );

  static const tag_2564_checkbox_select_statut = EnsTag(
    name: 'checkbox_select_statut',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'agenda',
  );

  static const tag_2565_button_filtres_modifier = EnsTag(
    name: 'button_filtres_modifier',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'agenda',
  );

  static const tag_2566_button_examens_medicaux_voir_examens = EnsTag(
    name: 'button_examens_médicaux_voir-examens',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'agenda',
  );

  static const tag_2578_popin_agenda_examen_date = EnsTag(
    name: 'popin_agenda_examen_date',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'agenda',
    level2: 'detail_agenda_examen',
  );

  static const tag_2579_input_agenda_examen_date = EnsTag(
    name: 'input_agenda_examen_date',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'agenda',
    level2: 'detail_agenda_examen',
  );

  static const tag_2580_button_valider_agenda_examen_date = EnsTag(
    name: 'button_valider_agenda_examen_date',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'agenda',
    level2: 'detail_agenda_examen',
  );

  static const tag_2581_button_ignorer_agenda_examen_date = EnsTag(
    name: 'button_ignorer_agenda_examen_date',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'agenda',
    level2: 'detail_agenda_examen',
  );

  static const tag_2582_link_modifier_date_agenda_examen = EnsTag(
    name: 'link_modifier_date_agenda_examen',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'agenda',
    level2: 'detail_agenda_examen',
  );
}
