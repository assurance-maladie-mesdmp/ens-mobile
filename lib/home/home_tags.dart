/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';

class HomeTags {
  static const tag_11_item_accueil_nav_bar = EnsTag(
    name: 'nav_accueil',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'nav_bar',
  );

  static const tag_8_item_documents_nav_bar = EnsTag(
    name: 'nav_documents',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'nav_bar',
  );

  static const tag_11_item_messagerie_nav_bar = EnsTag(
    name: 'nav_messagerie',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'nav_bar',
  );

  static const tag_11_item_profil_medical_nav_bar = EnsTag(
    name: 'nav_profil_medical',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'nav_bar',
  );

  static const tag_11_item_plus_nav_bar = EnsTag(
    name: 'nav_plus',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'nav_bar',
  );

  static const tag_980_pop_plus_button_close_nav_bar = EnsTag(
    name: 'nav_plus_close',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'nav_bar',
  );

  static const tag_978_pop_plus_item_agenda_nav_bar = EnsTag(
    name: 'nav_agenda',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'nav_bar',
  );

  static const tag_979_pop_plus_item_catalogue_nav_bar = EnsTag(
    name: 'nav_catalogue',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'nav_bar',
  );

  static const tag_662_pop_plus_item_mes_nav_bar = EnsTag(
    name: 'nav_mes_bref',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'nav_bar',
  );

  static const tag_2360_nav_prevention = EnsTag(
    name: 'nav_prevention',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'nav_bar',
  );

  static const tag_2469_nav_vaccinations = EnsTag(
    name: 'nav_vaccinations',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'nav_bar',
  );
}
