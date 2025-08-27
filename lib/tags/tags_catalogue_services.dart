/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';

class TagsCatalogueServices {
  static EnsTag tag483CataloguePageApp(String appName, String appId) => EnsTag(
        name: 'catalogue_page_app',
        category: EnsAnalyticsCategory.PAGE,
        level1: 'catalogue',
        level2: appName,
        level3: appId,
      );

  static EnsTag tag484ButtonCatalogueTelechargerApp(String appName, String appId) => EnsTag(
        name: 'button_catalogue_telecharger_app',
        category: EnsAnalyticsCategory.CLICK,
        level1: 'catalogue',
        level2: appName,
        level3: appId,
      );

  static EnsTag tag485ButtonVisiterSiteApp(String appName, String appId) => EnsTag(
        name: 'button_visiter_site_app',
        category: EnsAnalyticsCategory.CLICK,
        level1: 'catalogue',
        level2: appName,
        level3: appId,
      );

  static const EnsTag tag_2330_button_catalogue_signaler_service = EnsTag(
    name: 'button_catalogue_signaler_service',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'catalogue',
  );

  static const EnsTag tag_2331_catalogue_signaler_service_info = EnsTag(
    name: 'catalogue_signaler_service_info',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'catalogue',
  );

  static const EnsTag tag_2333_catalogue_signaler_service_aide = EnsTag(
    name: 'catalogue_signaler_service_aide',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'catalogue',
  );

  static const EnsTag tag_2335_signaler_un_service = EnsTag(
    name: 'signaler_un_service',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'catalogue',
  );

  static const EnsTag tag_2336_button_envoyer_signaler_un_service = EnsTag(
    name: 'button_envoyer_signaler_un_service',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'catalogue',
  );

  static const EnsTag tag_595_catalogue_en_savoir_plus = EnsTag(
    name: 'catalogue_en_savoir_plus',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'catalogue',
    level2: 'en_savoir_plus',
  );

  static EnsTag tag694LinkCatalogueGererService(String appName, String appId) {
    return EnsTag(
      name: 'link_catalogue_gerer_service',
      category: EnsAnalyticsCategory.CLICK,
      level1: 'catalogue',
      level2: appName,
      level3: appId,
    );
  }

  static const tag_808_button_filtrer_par_regions_ou_thematiques = EnsTag(
    name: 'button_filtrer_par_regions_ou_thematiques',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'catalogue',
  );

  static const tag_809_checkbox_select_regions = EnsTag(
    name: 'checkbox_select_regions',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'catalogue',
  );

  static const tag_810_checkbox_unselect_regions = EnsTag(
    name: 'checkbox_unselect_regions',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'catalogue',
  );

  static const tag_811_button_valider_filtrer_par_regions_ou_thematiques = EnsTag(
    name: 'button_valider_filtrer_par_regions_ou_thematiques',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'catalogue',
  );

  static const tag_812_catalogue_filtrer_par_regions = EnsTag(
    name: 'catalogue_filtrer_par_regions',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'catalogue',
  );

  static const tag_813_button_voir_toutes_les_regions = EnsTag(
    name: 'button_voir_toutes_les_regions',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'catalogue',
  );

  static const tag_1295_catalogue_filtrer_par_regions_ou_thematiques = EnsTag(
    name: 'catalogue_filtrer_par_regions_ou_thematiques',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'catalogue',
  );

  static const tag_1296_button_filtrer_par_regions_ou_thematiques_valider = EnsTag(
    name: 'button_filtrer_par_regions_ou_thematiques_valider',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'catalogue',
  );

  static const tag_1297_catalogue_filtrer_par_thematiques = EnsTag(
    name: 'catalogue_filtrer_par_thematiques',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'catalogue',
  );

  static const tag_1298_checkbox_unselect_thematiques = EnsTag(
    name: 'checkbox_unselect_thematiques',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'catalogue',
  );

  static const tag_1299_checkbox_select_thematiques = EnsTag(
    name: 'checkbox_select_thematiques',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'catalogue',
  );

  static const tag_1300_button_filtres_modifier = EnsTag(
    name: 'button_filtres_modifier',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'catalogue',
  );

  static const tag_1301_button_catalogue_voir_services = EnsTag(
    name: 'button_catalogue_voir-services',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'catalogue',
  );

  static const tag_2326_button_gerer_autorisations = EnsTag(
    name: 'button_gerer_autorisations',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'catalogue',
  );

  static const tag_2327_popin_mise_a_jour_autorisation = EnsTag(
    name: 'popin_mise_a_jour_autorisation',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'catalogue',
    level2: 'services_synchronises',
  );

  static const tag_2328_button_acceder_autorisation = EnsTag(
    name: 'button_acceder_autorisation',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'catalogue',
    level2: 'services_synchronises',
  );

  static const tag_482_catalogue_accueil = EnsTag(
    name: 'catalogue_accueil',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'catalogue',
    level2: 'liste_service',
  );
}
