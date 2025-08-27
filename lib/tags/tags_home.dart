/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';

class TagsHome {
  static const tag_onboarding_app = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'onboarding_app',
    level1: 'onboarding',
  );

  static const tag_onboarding_app_completerPM = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'onboarding_app_completerPM',
    level1: 'onboarding',
  );

  static const tag_653_home_connecte = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'home_connecte',
    level1: 'home_connecte',
  );

  static const tag_648_button_article_precedent = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_article_precedent',
    level1: 'home_connecte',
  );

  static const tag_649_button_article_suivant = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_article_suivant',
    level1: 'home_connecte',
  );

  static const tag_6_button_afficher_information = EnsTag(
    name: 'button_afficher_information',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'home_connecte',
  );

  static const tag_664_button_confidentialite = EnsTag(
    name: 'button_confidentialite',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'home_connecte',
    level2: 'mes_bref',
  );

  static const tag_665_button_protection = EnsTag(
    name: 'button_protection',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'home_connecte',
    level2: 'mes_bref',
  );

  static const tag_666_button_document = EnsTag(
    name: 'button_document',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'home_connecte',
    level2: 'mes_bref',
  );

  static const tag_667_button_profil_medical = EnsTag(
    name: 'button_profil_medical',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'home_connecte',
    level2: 'mes_bref',
  );

  static const tag_637_button_acceder_catalogue_service = EnsTag(
    name: 'button_acceder_catalogue_service',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'home_connecte',
  );

  static const tag_652_button_voir_mon_profil_medical = EnsTag(
    name: 'button_voir_mon_profil_medical',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'home_connecte',
  );

  static const tag_862_button_completer_onboarding_profil_od = EnsTag(
    name: 'button_completer_onboarding_profil_od',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'home_connecte',
  );

  static const tag_863_button_completer_onboarding_profil_ad = EnsTag(
    name: 'button_completer_onboarding_profil_ad',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'home_connecte',
  );

  static const tag_443_button_lire_larticle = EnsTag(
    name: 'button_lire_larticle',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'home_connecte',
  );

  static const tag_860_button_redirection_interne_actu_sante = EnsTag(
    name: 'button_redirection_interne_actu_sante',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'home_connecte',
  );

  static const tag_861_button_redirection_externe_actu_sante = EnsTag(
    name: 'button_redirection_externe_actu_sante',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'home_connecte',
  );

  static const tag_855_button_article_precedent_infos_pratiques = EnsTag(
    name: 'button_article_precedent_infos_pratiques',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'home_connecte',
  );

  static const tag_856_button_article_suivant_infos_pratiques = EnsTag(
    name: 'button_article_suivant_infos_pratiques',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'home_connecte',
  );

  static const tag_857_button_redirection_interne_infos_pratiques = EnsTag(
    name: 'button_redirection_interne_infos_pratiques',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'home_connecte',
  );

  static const tag_858_button_redirection_externe_infos_pratiques = EnsTag(
    name: 'button_redirection_externe_infos_pratiques',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'home_connecte',
  );

  static const tag_859_button_lire_larticle_infos_pratiques = EnsTag(
    name: 'button_lire_larticle_infos_pratiques',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'home_connecte',
  );

  static const tag_959_button_telecharger_mise_a_jour = EnsTag(
    name: 'button_telecharger_mise_a_jour',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'home_connecte',
  );

  static const tag_961_link_traitements_en_cours = EnsTag(
    name: 'link_traitements_en_cours',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'home_connecte',
  );

  static const tag_1342_link_examens_recommandes = EnsTag(
    name: 'link_examens_recommandes',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'home_connecte',
  );

  static EnsTag tagButtonRepondreQuestionnaire981(String ages) => EnsTag(
        name: 'button_repondre_questionnaire_$ages',
        category: EnsAnalyticsCategory.CLICK,
        level1: 'home_connecte',
      );

  static EnsTag tagButtonReprendreQuestionnaire982(String ages) => EnsTag(
        name: 'button_reprendre_questionnaire_$ages',
        category: EnsAnalyticsCategory.CLICK,
        level1: 'home_connecte',
      );

  static EnsTag tagButtonVoirQuestionnaire983(String ages) => EnsTag(
        name: 'button_voir_questionnaire_$ages',
        category: EnsAnalyticsCategory.CLICK,
        level1: 'home_connecte',
      );

  static EnsTag tagButtonVoirEtEnregistrerQuestionnaire984(String ages) => EnsTag(
        name: 'button_voir_et_enregistrer_questionnaire_$ages',
        category: EnsAnalyticsCategory.CLICK,
        level1: 'home_connecte',
      );

  static const tag_1332_popin_nouvelles_fonctionnalites = EnsTag(
    name: 'popin_nouvelles_fonctionnalites+',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'home_connecte',
  );

  static const tag_2348_button_voir_plus_articles = EnsTag(
    name: 'button_voir_plus_articles',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'home_connecte',
  );

  static const tag_1344_mes_bref = EnsTag(
    name: 'mes_bref',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'home_connecte',
    level2: 'mes_bref',
  );

  static const tag_640_button_voir_tous_mon_hd = EnsTag(
    name: 'button_voir_tous_mon_hd',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'home_connecte',
    level2: 'Mon_histoire_santé',
  );

  static const tag_443_button_lire_article = EnsTag(
    name: 'button_lire_article',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'home_connecte',
  );

  static const tag_article = EnsTag(
    name: 'article',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'home_connecte',
  );
}
