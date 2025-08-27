/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';

class TagsHandicaps {
  static const tag_527_handicap = EnsTag(
    name: 'handicap',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'profil_medical',
    level2: 'handicaps',
  );

  static const tag_585_link_absence_handicap = EnsTag(
    name: 'link_absence_handicap',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'handicaps',
  );

  static const tag_528_button_ajout_handicap = EnsTag(
    name: 'button_ajout_handicap',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'handicaps',
  );

  static const tag_529_button_voir_details_handicap = EnsTag(
    name: 'button_voir_details_handicap',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'handicaps',
  );

  static const tag_546_button_plus_informations_handicap = EnsTag(
    name: 'button_plus_informations_handicap',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'handicaps',
  );

  static const tag_543_popin_supprimer_handicap = EnsTag(
    name: 'popin_supprimer_handicap',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'profil_medical',
    level2: 'handicap',
  );

  static const tag_544_button_supprimer_handicap_annuler = EnsTag(
    name: 'button_supprimer_handicap_annuler',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'handicap',
  );

  static const tag_545_button_supprimer_handicap_valider = EnsTag(
    name: 'button_supprimer_handicap_valider',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'handicap',
  );

  static const tag_535_handicap_detail = EnsTag(
    name: 'handicap_detail',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'profil_medical',
    level2: 'handicap',
  );

  static const tag_536_button_action_modifier_handicap = EnsTag(
    name: 'button_action_modifier_handicap',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'handicap',
  );

  static const tag_576_popin_modification_handicap = EnsTag(
    name: 'popin_modification_handicap',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'handicap',
  );

  static const tag_537_button_action_supprimer_handicap = EnsTag(
    name: 'button_action_supprimer_handicap',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'handicap',
  );
}
