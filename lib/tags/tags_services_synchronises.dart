/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';

class TagsServicesSynchronises {
  static const tag_617_compte_service_synchronises_empty = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'compte_service_synchronises_empty',
    level1: 'compte',
    level2: 'services_synchronises',
  );

  static const tag_618_button_compte_service_synchronises_empty_catalogue = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_compte_service_synchronises_empty_catalogue',
    level1: 'compte',
    level2: 'compte',
  );

  static const tag_619_compte_service_synchronises_liste = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'compte_service_synchronises_liste',
    level1: 'compte',
    level2: 'services_synchronises',
  );

  static const tag_620_compte_service_synchronises_detail_app = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'compte_service_synchronises_detail_app',
    level1: 'compte',
    level2: 'services_synchronises',
    level3: 'services_synchronises_detail',
  );

  static const tag_621_button_compte_service_synchronises_desynchroniser = EnsTag(
    name: 'button_compte_service_synchronises_desynchroniser',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'compte',
    level2: 'catalogue_de_service',
    level3: 'services_synchronises_detail',
  );

  static const tag_623_button_compte_service_synchronises_desynchroniser_annuler = EnsTag(
    name: 'button_compte_service_synchronises_desynchroniser_annuler',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'compte',
    level2: 'catalogue_de_service',
    level3: 'services_synchronises_detail',
  );

  static const tag_624_button_compte_service_synchronises_desynchroniser_valider = EnsTag(
    name: 'button_compte_service_synchronises_desynchroniser_valider',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'compte',
    level2: 'catalogue_de_service',
    level3: 'services_synchronises_detail',
  );
}
