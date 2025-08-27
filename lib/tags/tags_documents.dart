/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';

class TagsDocuments {
  static const tag_button_modifier = EnsTag(
    name: 'button_modifier',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'documents',
  );

  static const tag_button_telecharger = EnsTag(
    name: 'button_telecharger',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'documents',
  );

  static const tag_button_supprimer = EnsTag(
    name: 'button_supprimer',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'documents',
  );

  static const tag_button_voir_details = EnsTag(
    name: 'button_voir_details',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'documents',
  );

  static const tag_511_documents_accueil = EnsTag(
    name: 'documents_accueil',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'documents',
  );

  static const tag_162_documents_accueil_empty = EnsTag(
    name: 'documents_accueil_empty',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'documents',
  );

  static const tag_163_button_ajouter_un_document = EnsTag(
    name: 'button_ajouter_un_document',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'documents',
  );

  static const tag_164_button_consulter_un_document = EnsTag(
    name: 'button_consulter_un_document',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'documents',
  );

  static const tag_165_button_visualiser_le_document = EnsTag(
    name: 'button_visualiser_le_document',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'documents',
  );

  static const tag_505_popin_type_dajout = EnsTag(
    name: 'popin_type_dajout',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'documents',
    level2: 'documents_ajout',
  );

  static const tag_525_documents_filtres = EnsTag(
    name: 'documents_filtres',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'documents',
    level2: 'filtres',
  );

  static const tag_520_documents_filtres_empty = EnsTag(
    name: 'documents_filtres_empty',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'documents',
    level2: 'filtres',
  );

  static const tag_506_popin_ajouter_un_dossier = EnsTag(
    name: 'popin_ajouter_un_dossier',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'documents',
    level2: 'dossiers_ajout',
  );

  static const tag_829_consulter_un_document_chargement = EnsTag(
    name: 'consulter_un_document_chargement',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'documents',
    level2: 'documents_consult',
  );

  static const tag_attestation_vaccinale_pdf = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'attestation_vaccinale_pdf',
    level1: 'attestation_vaccinale',
    level2: 'attestation_consult',
    level3: 'attestation_pdf',
  );

  static const tag_consulter_un_document = EnsTag(
    name: 'consulter_un_document',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'documents',
    level2: 'documents_consult',
  );

  static const tag_832_consulter_un_document_apercu_indisponible = EnsTag(
    name: 'consulter_un_document_apercu_indisponible',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'documents',
    level2: 'documents_consult',
  );

  static const tag_button_attestation_vaccinale_telecharger = EnsTag(
    name: 'button_attestation_vaccinale_telecharger',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'attestation_vaccinale',
    level2: 'attestation_consult',
  );

  static const tag_button_consulter_un_document_telecharger = EnsTag(
    name: 'button_consulter_un_document_télécharger',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'documents',
    level2: 'documents_consult',
  );

  static const tag_98_button_attestation_vaccinale_details = EnsTag(
    name: 'button_attestation_vaccinale_details',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'attestation_vaccinale',
    level2: 'attestation_consult',
  );

  static const tag_button_consulter_un_document_voir_details = EnsTag(
    name: 'button_consulter_un_document_voir_details',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'documents',
    level2: 'documents_consult',
  );

  static const tag_button_consulter_un_document_supprimer = EnsTag(
    name: 'button_consulter_un_document_supprimer',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'documents',
    level2: 'documents_consult',
  );

  static const tag_button_attestation_vaccinale_actions = EnsTag(
    name: 'button_attestation_vaccinale_actions',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'attestation_vaccinale',
    level2: 'attestation_consult',
  );

  static const tag_button_consulter_un_document_actions = EnsTag(
    name: 'button_consulter_un_document_actions',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'documents',
    level2: 'documents_consult',
  );

  static const tag_732_button_actions_document = EnsTag(
    name: 'button_actions_document',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'documents',
  );

  static const tag_700_button_partager_un_document = EnsTag(
    name: 'button_partager_un_document',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'documents',
    level2: 'documents_consult',
  );

  static const tag_500_popin_consulter_un_document_actions = EnsTag(
    name: 'popin_consulter_un_document_actions',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'documents',
    level2: 'documents_consult',
  );

  static const tag_popin_consulter_attestation_vaccinale_actions = EnsTag(
    name: 'popin_consulter_attestation_vaccinale_actions',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'attestation_vaccinale',
    level2: 'attestation_consult',
  );

  static const tag_button_attestation_vaccinale_MAJ = EnsTag(
    name: 'button_attestation_vaccinale_MAJ',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'attestation_vaccinale',
    level2: 'attestation_consult',
  );

  static const tag_99_attestation_vaccinale_details = EnsTag(
    name: 'attestation_vaccinale_details',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'attestation_vaccinale',
    level2: 'attestation_consult',
    level3: 'attestation_details',
  );

  static const tag_831_document_details = EnsTag(
    name: 'document_details',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'documents',
    level2: 'documents_consult',
  );

  static const tag_499_consulter_un_dossier_empty = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'consulter_un_dossier_empty',
    level1: 'documents',
    level2: 'dossiers_consult',
  );

  static const tag_510_consulter_un_dossier = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'consulter_un_dossier',
    level1: 'documents',
    level2: 'dossiers_consult',
  );

  static const tag_503_popin_dossier_action = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'popin_dossier_action',
    level1: 'documents',
    level2: 'dossiers_consult',
  );

  static const tag_504_popin_supprimer_dossier = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'popin_supprimer_dossier',
    level1: 'documents',
    level2: 'dossier_delete',
  );

  static const tag_502_popin_renommer_dossier = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'popin_renommer_dossier',
    level1: 'documents',
    level2: 'dossier_rename',
  );

  static const tag_501_popin_deplacer_document = EnsTag(
    name: 'popin_déplacer_document',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'dossiers_consult',
  );

  static const tag_737_popin_modifier_confidentialite = EnsTag(
    name: 'popin_modifier_confidentialité',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'documents',
    level2: 'documents_modif',
  );

  static const tag_738_button_modifier_un_document_confidentialite_visible = EnsTag(
    name: 'button_modifier_un_document_confidentialité_visible',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'documents',
    level2: 'documents_modif',
  );

  static const tag_739_button_modifier_un_document_confidentialite_masquee = EnsTag(
    name: 'button_modifier_un_document_confidentialité_masquee',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'documents',
    level2: 'documents_modif',
  );

  static const tag_101_attestation_vaccinale_details_edit = EnsTag(
    name: 'attestation_vaccinale_details_edit',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'attestation_vaccinale',
    level2: 'attestation_consult',
    level3: 'attestation_details_edit',
  );

  static const tag_827_ajouter_un_document_chargement = EnsTag(
    name: 'ajouter_un_document_chargement',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'documents',
    level2: 'documents_ajout',
  );

  static const tag_655_button_trier_par = EnsTag(
    name: 'button_trier_par',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'documents',
  );

  static const tag_519_button_reinitialiser_filtre = EnsTag(
    name: 'button_reinitialiser_filtre',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'documents',
  );

  static const tag_167_button_filtrer_par = EnsTag(
    name: 'button_filtrer_par',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'documents',
  );

  static const tag_174_popin_document_action = EnsTag(
    name: 'popin_document_action',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'documents',
  );

  static const tag_733_button_partager_document_accueil = EnsTag(
    name: 'button_partager_document_accueil',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'documents',
  );

  static const tag_734_button_modifier_condidentialite = EnsTag(
    name: 'button_modifier_condidentialite',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'documents',
    level2: 'documents_consult',
  );

  static const tag_button_consulter_fiche_ps = EnsTag(
    name: 'button_consulter_fiche_ps',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'documents',
    level2: 'documents_consult',
  );

  static const tag_826_ajouter_un_document_formulaire = EnsTag(
    name: 'ajouter_un_document_formulaire',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'documents',
    level2: 'documents_ajout',
  );

  static const tag_170_popin_ajouter_un_document_quitter = EnsTag(
    name: 'popin_ajouter_un_document_quitter',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'documents',
    level2: 'documents_ajout',
  );

  static const tag_171_button_ajouter_un_document_quitter_valider = EnsTag(
    name: 'button_ajouter_un_document_quitter_valider',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'documents',
    level2: 'documents_ajout',
  );

  static const tag_172_button_ajouter_un_document_quitter_annuler = EnsTag(
    name: 'button_ajouter_un_document_quitter_annuler',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'documents',
    level2: 'documents_ajout',
  );

  static const tag_173_button_validation_ajout_document = EnsTag(
    name: 'button_validation_ajout_document',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'documents',
  );

  static const tag_724_button_supprimer_document_valider = EnsTag(
    name: 'button_supprimer_document_valider',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'documents',
  );

  static const tag_725_button_supprimer_document_annuler = EnsTag(
    name: 'button_supprimer_document_annuler',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'documents',
  );

  static const tag_726_popin_supprimer_document = EnsTag(
    name: 'popin_supprimer_document',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'documents',
  );

  static const tag_735_button_ajouter_un_document_confidentialite_visible = EnsTag(
    name: 'button_ajouter_un_document_confidentialité_visible',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'documents',
    level2: 'documents_ajout',
  );

  static const tag_736_button_ajouter_un_document_confidentialite_masquee = EnsTag(
    name: 'button_ajouter_un_document_confidentialité_masquee',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'documents',
    level2: 'documents_ajout',
  );

  static const tag_button_consulter_un_document_apercu_indisponible_ouvrir = EnsTag(
    name: 'button_consulter_un_document_apercu_indisponible_ouvrir',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'documents',
    level2: 'documents_consult',
  );

  static const tag_771_button_partagerdocument_exterieurapp_accueil = EnsTag(
    name: 'button_partagerdocument_exterieurapp_accueil',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'documents',
  );

  static const tag_772_button_partagerdocument_exterieurapp_visualisation = EnsTag(
    name: 'button_partagerdocument_exterieurapp_visualisation',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'documents',
    level2: 'documents_consult',
  );

  static const tag_814_documents_filtrer_par_categories = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'documents_filtrer_par_categories',
    level1: 'documents',
    level2: 'filtres',
  );

  static const tag_815_checkbox_select_categorie_documents = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'checkbox_select_categorie_documents',
    level1: 'documents',
    level2: 'filtres',
  );

  static const tag_816_checkbox_unselect_categorie_documents = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'checkbox_unselect_categorie_documents',
    level1: 'documents',
    level2: 'filtres',
  );

  static const tag_817_button_voir_tous_les_documents = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_voir_tous_les_documents',
    level1: 'documents',
    level2: 'filtres',
  );

  static const tag_818_button_valider_filtrer_par_categories_documents = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_valider_filtrer_par_categories_documents',
    level1: 'documents',
    level2: 'filtres',
  );

  static const tag_825_ajouter_un_document_carrousel_depuis_partagedoc = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'ajouter_un_document_carrousel_depuis_partagedoc',
    level1: 'documents',
    level2: 'documents_ajout',
  );

  static const tag_845_button_telecharger_sensibilisation = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_telecharger_sensibilisation',
    level1: 'documents',
  );

  static const tag_846_button_annuler_sensibilisation = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_annuler_sensibilisation',
    level1: 'documents',
  );

  static const tag_847_button_signaler_un_document = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_signaler_un_document',
    level1: 'documents',
  );

  static const tag_849_link_contacter_conseiller_signaler_un_document = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'link_contacter_conseiller_signaler_un_document',
    level1: 'documents',
  );

  static const tag_850_signaler_un_document = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'signaler_un_document',
    level1: 'documents',
  );

  static const tag_852_contacter_conseiller = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'contacter_conseiller',
    level1: 'documents',
    level2: 'documents_consult',
  );

  static const tag_851_button_envoyer_contact_conseiller = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_envoyer_contact_conseiller',
    level1: 'documents',
    level2: 'documents_consult',
  );

  static const tag_773_partager_document_warning = EnsTag(
    name: 'partagerdocument_exterieurapp_warning',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'documents',
  );

  static const tag_774_partager_document_ok = EnsTag(
    name: 'button_partagerdocument_exterieurapp_warning_partager',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'documents',
  );

  static const tag_775_partager_document_cancel = EnsTag(
    name: 'button_partagerdocument_exterieurapp_warning_annuler',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'documents',
  );

  static const tag_2478_tag_button_rassembler_aat_dossier_valider = EnsTag(
    name: 'button_rassembler_aat_dossier_valider',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'documents',
    level2: 'dossier_rassembler_aat',
  );

  static const tag_2479_popin_rassembler_aat_dossier = EnsTag(
    name: 'popin_rassembler_aat_dossier',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'documents',
    level2: 'dossiers_rassembler_aat',
  );

  static const tag_2462_button_action_documents_epingler = EnsTag(
    name: 'button_action_documents_epingler',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'documents',
  );
  static const tag_button_action_documents_retirer_epingle = EnsTag(
    name: 'button_action_documents_retirer_epingle',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'documents',
  );
  static const tag_2463_button_swipe_documents_epingler = EnsTag(
    name: 'button_swipe_documents_epingler',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'documents',
  );
  static const tag_2466_button_swipe_documents_retirer_epingle = EnsTag(
    name: 'button_swipe_documents_retirer_epingle',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'documents',
  );
  static const tag_2464_button_preview_doc_select_documents_epingler = EnsTag(
    name: 'button_preview_doc_select_documents_epingler',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'documents',
    level2: 'documents_consult',
  );
  static const tag_2465_button_preview_doc_select_retirer_epingle = EnsTag(
    name: 'button_preview_doc_select_retirer_epingle',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'documents',
    level2: 'documents_consult',
  );

  static const tag_2461_documents_epingles = EnsTag(
    name: 'documents_epingles',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'documents',
    level2: 'documents_epingles',
  );

  static const tag_2480_button_partager_aat_documents = EnsTag(
    name: 'button_partager_aat',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'documents',
  );

  static const tag_695_link_nouveau_dossier = EnsTag(
    name: 'link_nouveau_dossier',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'documents',
    level2: 'documents_deplacer',
  );

  static const tag_696_button_deplacer = EnsTag(
    name: 'button_deplacer',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'documents',
    level2: 'documents_deplacer',
  );

  static const tag_697_popin_deplacer_documents = EnsTag(
    name: 'popin_déplacer_documents',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'documents',
    level2: 'documents_deplacer',
  );

  static const tag_699_button_ajouter_un_dossier = EnsTag(
    name: 'button_ajouter_un_dossier',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'documents',
    level2: 'documents_deplacer',
  );

  static const tag_166_link_qui_a_consulte_mes_documents = EnsTag(
    name: 'link_qui_a_consulte_mes_documents',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'documents',
  );

  static const tag_784_ajouter_un_document_carrousel = EnsTag(
    name: 'ajouter_un_document_carrousel',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'documents',
    level2: 'documents_ajout',
    level3: 'camera',
  );

  static const tag_785_button_ajouter_un_document_carrousel_ajoutpage = EnsTag(
    name: 'button_ajouter_un_document_carrousel_ajoutpage',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'documents',
    level2: 'documents_ajout',
    level3: 'camera',
  );

  static const tag_popin_ajouter_document_mes = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'popin_ajouter_document_mes',
    level1: 'documents',
    level2: 'documents_ajout',
  );

  static const tag_button_mode_dajout_document_mes = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_mode_dajout_document_mes',
    level1: 'documents',
    level2: 'dossiers_consult',
  );

  static const tag_556_info_ps = EnsTag(
    name: 'info_ps',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'documents',
    level2: 'documents_consult',
  );

  static const tag_635_info_es = EnsTag(
    name: 'info_es',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'documents',
    level2: 'documents_consult',
  );

  static const tag_729_button_ajouter_es = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_ajouter_es',
    level1: 'documents',
    level2: 'documents_consult',
  );

  static const tag_731_button_valider_retirer_es = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_valider_retirer_es',
    level1: 'documents',
    level2: 'documents_consult',
    level3: 'es_suppression',
  );

  static const tag_645_etablissement_sante_adresse = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'etablissement_sante_adresse',
    level1: 'documents',
    level2: 'documents_consult',
  );

  static const tag_643_professionnel_sante_adresse = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'professionnel_sante_adresse',
    level1: 'documents',
    level2: 'documents_consult',
  );

  static const tag_646_etablissement_sante_tel = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'etablissement_sante_tel',
    level1: 'documents',
    level2: 'documents_consult',
  );

  static const tag_644_professionnel_sante_tel = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'professionnel_sante_tel',
    level1: 'documents',
    level2: 'documents_consult',
  );

  static const tag_586_button_ajouter_ps = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_ajouter_ps',
    level1: 'documents',
    level2: 'documents_consult',
  );

  static const tag_587_button_valider_retirer_ps = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_valider_retirer_ps',
    level1: 'documents',
    level2: 'documents_consult',
    level3: 'ps_suppression',
  );
}
