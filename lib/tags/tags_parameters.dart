/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';

class TagsParameters {
  static const tag_777_compte_resultat_accessible_matrice_habilitation = EnsTag(
    name: 'compte_resultat_accessible_matrice_habilitation',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'compte',
    level2: 'professionnels_de_santé',
  );

  static const tag_780_compte_resultat_non_accessible_matrice_habilitation = EnsTag(
    name: 'compte_resultat_non_accessible_matrice_habilitation',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'compte',
    level2: 'professionnels_de_santé',
  );

  static const tag_781_compte_aucun_resultat_accessible_matrice_habilitation = EnsTag(
    name: 'compte_aucun_resultat_accessible_matrice_habilitation',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'compte',
    level2: 'professionnels_de_santé',
  );

  static const tag_781_compte_aucun_resultat_non_accessible_matrice_habilitation = EnsTag(
    name: 'compte_aucun_resultat_non_accessible_matrice_habilitation',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'compte',
    level2: 'professionnels_de_santé',
  );

  static const tag_776_link_detail_droits_acces = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'link_detail_droits_acces',
    level1: 'compte',
    level2: 'professionnels_de_santé',
  );

  static const tag_1284_compte_profils_a_activer_empty = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'compte_profils_a_activer_empty',
    level1: 'compte',
    level2: 'profils_a_activer',
  );

  static const tag_1292_compte_profils_non_activables = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'compte_profils_non_activables',
    level1: 'compte',
    level2: 'profils_a_activer',
  );

  static const tag_1285_link_aide = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'link_aide',
    level1: 'compte',
    level2: 'profils_a_activer',
  );

  static const tag_840_compte_erreur_chargement_matrice_categorie_document = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'compte_erreur_chargement_matrice_categorie_document',
    level1: 'compte',
    level2: 'professionnels_de_santé',
  );

  static const tag_1272_partage_profil = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'partage_profil',
    level1: 'compte',
    level2: 'partage_profil',
  );

  static const tag_1273_partage_profil_form_button = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_partage_profil',
    level1: 'compte',
    level2: 'partage_profil',
  );

  static const tag_1274_partage_profil_success = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'success_partage',
    level1: 'compte',
    level2: 'partage_profil',
  );

  static const tag_1275_partage_profil_error = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'error_partage',
    level1: 'compte',
    level2: 'partage_profil',
  );

  static const tag_2584_button_scanner_sa_carte_vitale = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_scanner_sa_carte_vitale',
    level1: 'compte',
    level2: 'partage_profil',
  );

  static const tag_2586_button_remplir_manuellement = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'button_remplir_manuellement',
    level1: 'compte',
    level2: 'partage_profil',
  );

  static const tag_1277_button_compte_invitation_profil = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_compte_invitation_profil',
    level1: 'compte',
  );

  static const tag_1293_popin_compte_profils_demande_suppression = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'popin_compte_profils_demande_suppression',
    level1: 'compte',
    level2: 'profils_a_activer',
  );

  static const tag_1294_compte_profils_non_activables_confirmer = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'compte_profils_non_activables_confirmer',
    level1: 'compte',
    level2: 'profils_a_activer',
  );

  static const tag_1286_compte_profils_a_activer = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'compte_profils_a_activer',
    level1: 'compte',
    level2: 'profils_a_activer',
  );

  static const tag_1288_button_activer_choix_profil = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_activer_choix_profil',
    level1: 'compte',
    level2: 'profils_a_activer',
  );

  static const tag_1289_compte_confirmation_profils_actives = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'compte_confirmation_profils_actives',
    level1: 'compte',
    level2: 'profils_a_activer',
  );

  static const tag_1290_compte_confirmation_partielle_profils_actives = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'compte_confirmation_partielle_profils_actives',
    level1: 'compte',
    level2: 'profils_a_activer',
  );

  static const tag_1291_compte_error_partielle_profils_actives = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'compte_error_partielle_profils_actives',
    level1: 'compte',
    level2: 'profils_a_activer',
  );

  static const tag_1278_invitation_profil = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'invitation_profil',
    level1: 'compte',
    level2: 'invitation_profil',
  );

  static const tag_1279_button_accepter_invitation_profil = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_accepter_invitation_profil',
    level1: 'compte',
    level2: 'invitation_profil',
  );

  static const tag_1280_button_refuser_invitation_profil = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_refuser_invitation_profil',
    level1: 'compte',
    level2: 'invitation_profil',
  );

  static const tag_1281_popin_invitation_profil_ensavoirplus = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'popin_invitation_profil_ensavoirplus',
    level1: 'compte',
    level2: 'invitation_profil',
  );

  static const tag_1282_success_invitation_profil = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'success_invitation_profil',
    level1: 'compte',
    level2: 'invitation_profil',
  );

  static const tag_1283_refuser_invitation_profil = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'refuser_invitation_profil',
    level1: 'compte',
    level2: 'invitation_profil',
  );

  static const tag_1341_parametre_notifications = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'parametre_notifications',
    level1: 'compte',
    level2: 'parametre',
    level3: 'notifications',
  );

  static const tag_button_changement_email = EnsTag(
    name: 'button_changement_email',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'compte',
  );

  static const tag_button_changement_telephone = EnsTag(
    name: 'button_changement_telephone',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'compte',
  );

  static const tag_button_changement_mot_de_passe = EnsTag(
    name: 'button_changement_mot_de_passe',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'compte',
  );

  static const tag_button_repondre_questionnaire = EnsTag(
    name: 'button_repondre_questionnaire',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'compte',
  );

  static const tag_670_button_appareils = EnsTag(
    name: 'button_appareils',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'compte',
  );

  static const tag_444_compte_accueil = EnsTag(
    name: 'compte_accueil',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'compte',
  );

  static const tag_409_compte_cloturer_profil = EnsTag(
    name: 'compte_cloturer_profil',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'compte',
    level2: 'cloturer_profil',
  );

  static const tag_581_compte_cloturer_profil_lienexterne = EnsTag(
    name: 'compte_cloturer_profil_lienexterne',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'compte',
    level2: 'cloturer_profil',
  );

  static const tag_579_compte_historique_donnees_telecharger = EnsTag(
    name: 'compte_historique_donnees_telecharger',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'compte',
    level2: 'historique_donnees',
    level3: 'telecharger_donnees',
  );

  static const tag_580_compte_historique_donnees_telecharger_lienexterne = EnsTag(
    name: 'compte_historique_donnees_telecharger_lienexterne',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'compte',
    level2: 'historique_donnees',
    level3: 'telecharger_donnees',
  );

  static const tag_compte_acces_cas_urgence = EnsTag(
    name: 'compte_acces_cas_urgence',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'compte',
    level2: 'compte_acces_cas_urgence',
  );

  static const tag_compte_changement_email = EnsTag(
    name: 'compte_changement_email',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'compte',
    level2: 'changement_email',
  );

  static const tag_compte_changement_telephone = EnsTag(
    name: 'compte_changement_telephone',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'compte',
    level2: 'changement_telephone',
  );

  static const tag_2389_link_faq_mp_robuste = EnsTag(
    name: 'link_faq_mp_robuste',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'compte',
    level2: 'mes_informations',
  );

  static const tag_447_compte_acces_PS_donnees = EnsTag(
    name: 'compte_acces_PS_donnees',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'compte',
  );

  static const tag_445_compte_acces_autres_professionels_sante = EnsTag(
    name: 'compte_acces_autres_professionels_sante',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'compte',
    level2: 'acces_autres_professionels_sante',
  );

  static const tag_462_button_recherche_bloquer_professionnels_sante = EnsTag(
    name: 'button_recherche_bloquer_professionnels_sante',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'compte',
    level2: 'recheche_bloquer_professionnel',
  );
}
