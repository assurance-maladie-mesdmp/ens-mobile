/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';

class TagsParametersEnrolledDevices {
  static const tag_671_connexion_appareils = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'connexion_appareils',
    level1: 'compte',
    level2: 'appareils_associés',
  );

  static const tag_672_link_aide_connexion_appareils = EnsTag(
    name: 'link_aide_connexion_appareils',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'compte',
    level2: 'appareils_associés',
  );

  static const tag_673_button_dissocier_appareils = EnsTag(
    name: 'button_dissocier_appareils',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'compte',
    level2: 'appareils_associés',
  );

  static const tag_674_popin_dissocier_appareils = EnsTag(
    name: 'popin_dissocier_appareils',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'compte',
    level2: 'appareils_associés',
  );

  static const tag_675_button_dissocier_validation = EnsTag(
    name: 'button_dissocier_validation',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'compte',
    level2: 'appareils_associés',
  );

  static const tag_676_button_dissocier_annuler = EnsTag(
    name: 'button_dissocier_annuler',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'compte',
    level2: 'appareils_associés',
  );
}
