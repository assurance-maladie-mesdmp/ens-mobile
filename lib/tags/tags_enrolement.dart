/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';

class TagsEnrolement {
  static const tag_2292_enrolement_identification_profil_jumeaux = EnsTag(
    name: 'enrolement_identification_profil_jumeaux',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'enrolement',
    level2: 'profil_ouvrant_droit',
  );

  static const tag_2295_enrolement_accueil = EnsTag(
    name: 'enrolement_accueil',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'enrolement',
    level2: 'accueil',
  );

  static const tag_2296_link_cloturer_opposer = EnsTag(
    name: 'link_cloturer_opposer',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'enrolement',
    level2: 'accueil',
    level3: 'activer',
  );

  static const tag_2297_enrolement_identification_carte_vitale = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'enrolement_identification_carte-vitale',
    level1: 'enrolement',
    level2: 'identification',
  );

  static const tag_2298_button_carte_vitale_sans_photo = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_carte_vitale_sans_photo',
    level1: 'enrolement',
    level2: 'identification',
  );

  static const tag_2299_button_carte_vitale_avec_photo = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_carte_vitale_avec_photo',
    level1: 'enrolement',
    level2: 'identification',
  );

  static const tag_2300_enrolement_identification = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'enrolement_identification',
    level1: 'enrolement',
    level2: 'identification',
  );

  static const tag_2301_button_trouver_numero_securite_sociale = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_trouver_numero_securite_sociale',
    level1: 'enrolement',
    level2: 'identification',
  );

  static const tag_2302_button_trouver_numero_carte_vitale = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_trouver_numero_carte_vitale',
    level1: 'enrolement',
    level2: 'identification',
  );

  static const tag_2304_enrolement_compte_existant = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'enrolement_compte_existant',
    level1: 'enrolement',
    level2: 'identification',
  );

  static const tag_2305_button_compte_existant_connexion = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_compte_existant_connexion',
    level1: 'enrolement',
    level2: 'identification',
  );

  static const tag_2306_button_compte_existant_accueil = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_compte_existant_accueil',
    level1: 'enrolement',
    level2: 'identification',
  );

  static const tag_2326_enrolement_dashboard_profil_decede = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'enrolement_dashboard_profil_decede',
    level1: 'enrolement',
    level2: 'identification',
  );

  static const tag_2307_enrolement_identification_choix_mode_reception = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'enrolement_identification_choix_mode_reception',
    level1: 'enrolement',
    level2: 'identification',
    level3: 'choix_mode_reception',
  );

  static const tag_2308_enrolement_dashboard_erreur_coordonnees = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'enrolement_dashboard_erreur_coordonnees',
    level1: 'enrolement',
    level2: 'identification',
  );

  static const tag_2309_button_erreur_coordonnees_retour_accueil = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_erreur_coordonnees_retour_accueil',
    level1: 'enrolement',
    level2: 'identification',
  );

  static const tag_2310_enrolement_dashboard_manque_coordonnees = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'enrolement_dashboard_manque_coordonnees',
    level1: 'enrolement',
    level2: 'identification',
  );

  static const tag_2311_enrolement_dashboard_erreur_code_utilise = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'enrolement_dashboard_erreur_code_utilise',
    level1: 'enrolement',
    level2: 'identification',
  );

  static const tag_2312_enrolement_dashboard_erreur_code_expire = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'enrolement_dashboard_erreur_code_expire',
    level1: 'enrolement',
    level2: 'identification',
  );

  static const tag_2313_enrolement_identification_code_provisoire_manque_coordonnees = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'enrolement_identification_code-provisoire_manque_coordonnees',
    level1: 'enrolement',
    level2: 'identification',
    level3: 'saisie_code',
  );

  static const tag_2314_enrolement_identification_saisie_code_provisoire = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'enrolement_identification_saisie_code-provisoire',
    level1: 'enrolement',
    level2: 'identification',
    level3: 'saisie_code',
  );

  static const tag_2315_enrolement_decision_acceptation = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'enrolement_decision_acceptation',
    level1: 'enrolement',
    level2: 'enrolement_decision',
  );

  static const tag_2316_button_conditions_generales_utilisation = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_conditions_generales_utilisation',
    level1: 'enrolement',
    level2: 'enrolement_decision',
  );

  static const tag_2317_button_politique_confidentialite = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_politique_confidentialite',
    level1: 'enrolement',
    level2: 'enrolement_decision',
  );

  static const tag_2293_enrolement_affichage_coordonnees = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'enrolement_affichage_coordonnees',
    level1: 'enrolement',
    level2: 'verification_coordonnees',
  );

  static const tag_2318_button_modifier_adresse_mail = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_modifier_adresse_mail',
    level1: 'enrolement',
    level2: 'verification_coordonnees',
  );

  static const tag_2319_button_modifier_numero_mobile = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_modifier_numero_mobile',
    level1: 'enrolement',
    level2: 'verification_coordonnees',
  );

  static const tag_2322_enrolement_confirmation_acceptation = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'enrolement_confirmation_acceptation',
    level1: 'enrolement',
    level2: 'confirmation_activation',
  );

  static const tag_2320_enrolement_choix_identifiants = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'enrolement_choix_identifiants',
    level1: 'enrolement',
    level2: 'enrolement_choix_identifiants',
  );

  static const tag_2321_link_informations_mp = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'link_informations_mp',
    level1: 'enrolement',
    level2: 'enrolement_choix_identifiants',
  );

  static const tag_verification_coordonnees_modification_email = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'verification_coordonnees_modification_email',
    level1: 'enrolement',
    level2: 'verification_coordonnees',
    level3: 'modification_email',
  );
  static const tag_verification_coordonnees_validation_email = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'verification_coordonnees_validation_email',
    level1: 'enrolement',
    level2: 'verification_coordonnees',
    level3: 'validation_email',
  );
  static const tag_verification_coordonnees_modification_telephone = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'verification_coordonnees_modification_telephone',
    level1: 'enrolement',
    level2: 'verification_coordonnees',
    level3: 'modification_telephone',
  );
  static const tag_verification_coordonnees_validation_telephone = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'verification_coordonnees_validation_telephone',
    level1: 'enrolement',
    level2: 'verification_coordonnees',
    level3: 'validation_telephone',
  );

  static const tag_2324_enrolement_dashboard_monprofil = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'enrolement_dashboard_monprofil',
    level1: 'enrolement',
    level2: 'profil_ouvrant_droit',
  );

  static const tag_2325_enrolement_dashboard_monprofil_erreur = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'enrolement_dashboard_monprofil_erreur',
    level1: 'enrolement',
    level2: 'profil_ouvrant_droit',
  );

  static const tag_2323_link_faq_mp_robuste = EnsTag(
    name: 'link_faq_mp_robuste',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'enrolement',
    level2: 'enrolement_choix_identifiants',
  );

  static const tag_2390_mp_robuste_ensavoirplus = EnsTag(
    name: 'mp_robuste_ensavoirplus',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'enrolement',
    level2: 'enrolement_choix_identifiants',
  );

  static const tag_2398_enrolement_identification_carte_vitale_scan = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'enrolement_identification_carte_vitale_scan',
    level1: 'enrolement',
    level2: 'identification',
  );

  static const tag_2399_button_scan_carte_vitale = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_scan_carte_vitale',
    level1: 'enrolement',
    level2: 'identification',
  );

  static const tag_2400_button_remplir_manuel_carte_vitale = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_remplir_manuel_carte_vitale',
    level1: 'enrolement',
    level2: 'identification',
  );

  static const tag_2401_enrolement_identification_carte_vitale_scan_info = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'enrolement_identification_carte-vitale_scan_info',
    level1: 'enrolement',
    level2: 'identification',
  );

  static const tag_2453_button_remplir_manuel_scan_carte_vitale = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_remplir_manuel_scan_carte_vitale',
    level1: 'enrolement',
    level2: 'identification',
  );

  static const tag_2454_scan_carte_vitale_sans_photo_validation = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'scan_carte_vitale_sans_photo_validation',
    level1: 'enrolement',
    level2: 'identification',
  );

  static const tag_2455_button_valider_scan_carte_vitale_sans_photo = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_valider_scan_carte_vitale_sans_photo',
    level1: 'enrolement',
    level2: 'identification',
  );

  static const tag_2456_button_annuler_scan_carte_vitale_sans_photo = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_annuler_scan_carte_vitale_sans_photo',
    level1: 'enrolement',
    level2: 'identification',
  );

  static const tag_2457_scan_carte_vitale_avec_photo_validation = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'scan_carte_vitale_avec_photo_validation',
    level1: 'enrolement',
    level2: 'identification',
  );

  static const tag_2458_button_valider_scan_carte_vitale_avec_photo = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_valider_scan_carte_vitale_avec_photo',
    level1: 'enrolement',
    level2: 'identification',
  );

  static const tag_2459_button_annuler_scan_carte_vitale_avec_photo = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_annuler_scan_carte_vitale_avec_photo',
    level1: 'enrolement',
    level2: 'identification',
  );

  static const tag_2460_button_scan_carte_vitale_formulaire = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_scan_carte_vitale_formulaire',
    level1: 'enrolement',
    level2: 'identification',
  );

  static const tag_2420_link_enrolement_info_france_connect_plus = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'link_enrolement_info_france_connect_plus ',
    level1: 'enrolement',
    level2: 'accueil',
  );

  static const tag_2421_button_enrolement_france_connect_plus = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_enrolement_france_connect_plus',
    level1: 'enrolement',
    level2: 'accueil',
  );

  static const tag_2402_enrolement_cookies = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'enrolement_cookies',
    level1: 'enrolement',
  );

  static const tag_2653_button_suggestion_identifiant = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_suggestion_identifiant',
    level1: 'enrolement',
    level2: 'enrolement_choix_identifiants',
  );

  static const tag_2654_button_choisir_identifiant = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_choisir_identifiant',
    level1: 'enrolement',
    level2: 'enrolement_choix_identifiants',
  );
}
