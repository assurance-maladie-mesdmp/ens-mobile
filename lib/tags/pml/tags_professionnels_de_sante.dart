/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/type_of_ps_profession.dart';

class TagsProfessionnelsDeSante {
  static const tag_517_click_add_medecin_traitant = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'professionels_sante_ajout_medecin_traitant',
    level1: 'professionnels_sante',
    level2: 'professionnel_sante',
  );

  static const tag_360_page_professionels_de_sante = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'professionels_sante',
    level1: 'profil_medical',
  );

  static const tag_1029_link_voir_tous_suggestion = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'link_voir_tous_suggestion',
    level1: 'profil_medical',
    level2: 'professionnels_de_santé',
  );

  static const tag_1030_carousel_voir_tous_suggestion = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'carousel_voir_tous_suggestion',
    level1: 'profil_medical',
    level2: 'professionnels_de_santé',
  );

  static const tag_1033_popin_suggestion_mt = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'popin_suggestion_mt',
    level1: 'profil_medical',
    level2: 'professionnels_de_santé',
  );

  static const tag_1034_button_suggestion_mt = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_suggestion_mt',
    level1: 'profil_medical',
    level2: 'professionnels_de_santé',
  );

  static const tag_1035_button_suggestion_pas_mt = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_suggestion_pas_mt',
    level1: 'profil_medical',
    level2: 'professionnels_de_santé',
  );

  static const tag_365_button_delete_professionnel_de_sante = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_supprimer_professionnel_sante',
    level1: 'professionnels_sante',
    level2: 'listes_conversations',
    level3: 'ps_suppression',
  );

  static const tag_521_button_add_medecin_traitant_empty = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_ajout_medecin_traitant_empty',
    level1: 'professionnels_sante',
    level2: 'professionnel_sante',
  );

  static const tag_522_button_add_medecin_empty = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_ajout_medecin_empty',
    level1: 'professionnels_sante',
    level2: 'professionnel_sante',
  );

  static const tag_973_bottom_sheet_search_ps_es = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'popin_recherche_ps_es',
    level1: 'profil_medical',
  );

  static const tag_1031_suggestion_ps_page = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'suggestion_ps',
    level1: 'profil_medical',
    level2: 'professionnels_de_santé',
  );

  static const tag_1032_button_add_ps_suggestion = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_ajout_tous_suggestion',
    level1: 'profil_medical',
    level2: 'professionnels_de_santé',
  );

  static const tag_1257_popin_ps_hors_annuaire = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'popin_ps_hors_annuaire',
    level1: 'profil_medical',
    level2: 'professionnels_de_santé',
  );

  static const tag_1258_button_ps_hors_annuaire_ajouter = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_ps_hors_annuaire_ajouter',
    level1: 'profil_medical',
    level2: 'professionnels_de_santé',
  );

  static const tag_1259_button_ps_hors_annuaire_supprimer = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_ps_hors_annuaire_supprimer',
    level1: 'profil_medical',
    level2: 'professionnels_de_santé',
  );

  static const tag_1027_button_ps_acces_document = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_ps_acces_document',
    level1: 'profil_medical',
    level2: 'professionnel_sante_detail',
  );

  static const tag_1265_link_ps_acces_document_voirtout = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'link_ps_acces_document_voirtout',
    level1: 'profil_medical',
    level2: 'professionnel_sante_detail',
  );

  static const tag_1266_link_ps_acces_historique_activite_voirtout = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'link_ps_acces_historique_activite_voirtout',
    level1: 'profil_medical',
    level2: 'professionnel_sante_detail',
  );

  static const tag_2406_button_ps_opposition_acces = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_ps_opposition_acces',
    level1: 'profil_medical',
    level2: 'professionnel_sante',
    level3: 'professionnel_sante_detail',
  );

  static const tag_2403_link_ps_confidentialite = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'link_ps_confidentialite',
    level1: 'profil_medical',
    level2: 'professionnel_sante',
    level3: 'professionnel_sante_detail',
  );

  static const tag_2467_link_gerer_document = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'link_gerer_document',
    level1: 'profil_medical',
    level2: 'professionnel_sante',
    level3: 'professionnel_sante_detail',
  );

  static const tag_2407_popin_ps_bloquer_acces = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'popin_ps_bloquer_acces',
    level1: 'profil_medical',
    level2: 'professionnel_sante',
    level3: 'professionnel_sante_detail',
  );

  static const tag_2408_button_ps_bloquer_acces = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'button_ps_bloquer_acces',
    level1: 'profil_medical',
    level2: 'professionnel_sante',
    level3: 'professionnel_sante_detail',
  );

  static const tag_2409_popin_ps_debloquer_acces = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'popin_ps_debloquer_acces',
    level1: 'profil_medical',
    level2: 'professionnel_sante',
    level3: 'professionnel_sante_detail',
  );

  static const tag_2410_button_ps_debloquer_acces = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_ps_debloquer_acces',
    level1: 'profil_medical',
    level2: 'professionnel_sante',
    level3: 'professionnel_sante_detail',
  );

  static const tag_2468_button_ps_debloquer_acces = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_ps_debloquer_acces',
    level1: 'profil_medical',
    level2: 'professionnel_sante',
    level3: 'professionnel_sante_detail',
  );

  static const tag_2405_button_ps_comment_autoriser_acces = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_ps_comment_autoriser_acces',
    level1: 'profil_medical',
    level2: 'professionnel_sante',
    level3: 'professionnel_sante_detail',
  );

  static const tag_2404_link_ps_confidentialite_modifier_cas_urgence = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'link_ps_confidentialite_modifier_cas_urgence',
    level1: 'profil_medical',
    level2: 'professionnel_sante',
    level3: 'professionnel_sante_detail',
  );

  static const tag_2487_link_ps_sage_femme_referente_retirer_role = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'link_ps_sage_femme_referente_retirer_role',
    level1: 'profil_medical',
    level2: 'professionnel_sante',
  );

  static const tag_2488_link_ps_pharmacien_correspondant_retirer_role = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'link_ps_pharmacien_correspondant_retirer_role',
    level1: 'profil_medical',
    level2: 'professionnel_sante',
  );

  static const tag_2485_link_ps_sage_femme_referente_attribuer_role = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'link_ps_sage_femme_referente_attribuer_role',
    level1: 'profil_medical',
    level2: 'professionnel_sante',
  );

  static const tag_2486_link_ps_pharmacien_correspondant_attribuer_role = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'link_ps_pharmacien_correspondant_attribuer_role',
    level1: 'profil_medical',
    level2: 'professionnel_sante',
  );

  static EnsTag tag2481PopinAjoutRole(PsProfessionLinkToRole profession) {
    return EnsTag(
      category: EnsAnalyticsCategory.CLICK,
      name: 'popin_ajout_${profession.tagValue}',
      level1: 'profil_medical',
      level2: 'professionnel_sante',
    );
  }

  static EnsTag tag2482ButtonAjoutRoleConfirmation(PsProfessionLinkToRole profession) {
    return EnsTag(
      category: EnsAnalyticsCategory.CLICK,
      name: 'button_ajout_${profession.tagValue}_confirmation',
      level1: 'profil_medical',
      level2: 'professionnel_sante',
    );
  }

  static const tag_1036_professionels_sante_empty = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'professionels_sante_empty',
    level1: 'profil_medical',
    level2: 'professionnel_sante',
  );

  static const tag_1037_professionels_sante_empty_suggestion = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'professionels_sante_empty_suggestion',
    level1: 'profil_medical',
    level2: 'professionnel_sante',
  );

  static const tag_1038_button_ajout_suggestion = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_ajout_suggestion',
    level1: 'profil_medical',
    level2: 'professionnel_sante',
  );

  static const tag_2568_popin_signaler_acces_ps = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'popin_signaler_acces_ps',
    level1: 'profil_medical',
    level2: 'professionnel_sante',
    level3: 'professionnel_sante_detail',
  );

  static const tag_2569_formulaire_signaler_acces_ps = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'formulaire_signaler_acces_ps',
    level1: 'profil_medical',
    level2: 'professionnel_sante',
    level3: 'professionnel_sante_detail',
  );

  static const tag_2570_button_formulaire_signalement_acces_ps_envoyer = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_formulaire_signalement_acces_ps_envoyer',
    level1: 'profil_medical',
    level2: 'professionnel_sante',
    level3: 'professionnel_sante_detail',
  );

  static const tag_514_professionnels_sante_detail = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'professionnels_sante_detail',
    level1: 'professionnels_sante',
    level2: 'professionnel_sante_detail',
  );

  static const tag_976_button_ajouter_es = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'button_ajouter_es',
    level1: 'profil_medical',
    level2: 'professionnels_de_santé',
  );

  static const tag_etablissement_sante_adresse = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'etablissement_sante_adresse',
    level1: 'professionnels_sante',
    level2: 'professionnel_sante_detail',
  );

  static const tag_professionnel_sante_adresse = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'professionnel_sante_adresse',
    level1: 'professionnels_sante',
    level2: 'professionnel_sante_detail',
  );

  static const tag_etablissement_sante_tel = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'etablissement_sante_tel',
    level1: 'professionnels_sante',
    level2: 'professionnel_sante_detail',
  );

  static const tag_professionnel_sante_tel = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'professionnel_sante_tel',
    level1: 'professionnels_sante',
    level2: 'professionnel_sante_detail',
  );

  static const tag_361_page_formulaire_recherche_ps = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'pm_recherche_ps',
    level1: 'profil_medical',
    level2: 'professionnels_de_santé',
  );

  static const tag_362_bouton_ajouter_ps_formulaire_recherche_ps = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_ajouter_ps',
    level1: 'profil_medical',
    level2: 'professionnels_de_santé',
  );

  static const tag_974_bouton_rechercher_formulaire_recherche_ps = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_recherche_ps',
    level1: 'profil_medical',
    level2: 'professionnels_de_santé',
  );
}
