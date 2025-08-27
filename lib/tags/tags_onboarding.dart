/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';

class TagsOnboarding {
  static const tag_2287_bienvenue_on_boarding = EnsTag(
    name: 'bienvenue_on_boarding',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'on_boarding',
  );

  static const tag_2291_confidentialite_urgence = EnsTag(
    name: 'confidentialite_urgence',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'on_boarding',
  );

  static const tag_2288_confidentialite_ps_on_boarding = EnsTag(
    name: 'confidentialite_ps',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'on_boarding',
  );

  static const tag_2289_button_ajouter_confidentialite_visible = EnsTag(
    name: 'button_ajouter_confidentialite_visible',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'on_boarding',
  );

  static const tag_2290_button_ajouter_confidentialite_masquee = EnsTag(
    name: 'button_ajouter_confidentialite_masquee',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'on_boarding',
  );

  static const tag_2520_ajouter_ad = EnsTag(
    name: 'ajouter_ad',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'on_boarding',
  );

  static const tag_2521_button_ajouter_ad_ignorer = EnsTag(
    name: 'button_ajouter_ad_ignorer',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'on_boarding',
  );

  static const tag_2522_button_ajouter_ad_activer = EnsTag(
    name: 'button_ajouter_ad_activer',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'on_boarding',
  );

  static const tag_2523_succes_ajouter_ad = EnsTag(
    name: 'succes_ajouter_ad',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'on_boarding',
  );

  static const tag_2641_popin_gerer_carnet_vaccination_ad = EnsTag(
    name: 'popin_gerer_carnet_vaccination_ad',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'profil_medical',
    level2: 'onboarding',
  );

  static const tag_2642_button_consulter_la_rubrique_vaccination = EnsTag(
    name: 'button_consulter_la_rubrique_vaccination',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'onboarding',
  );
}
