/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';

class TagsEntourageEtVolontes {
  static const tag_link_aide_entourage_et_volontes = EnsTag(
    name: 'link_aide_entourage_et_volontes',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'entourage_volonte',
  );

  static const tag_705_button_ajouter_entourage = EnsTag(
    name: 'button_ajouter_entourage',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'entourage_volonte',
  );

  static const tag_2651_entourage_empty = EnsTag(
    name: 'entourage_empty',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'profil_medical',
    level2: 'entourage_volonte',
  );

  static const tag_710_entourage = EnsTag(
    name: 'entourage',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'profil_medical',
    level2: 'entourage_volonte',
  );

  static const tag_button_ajout_don_organe = EnsTag(
    name: 'button_ajout_don_organe',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'entourage_volonte',
  );

  static const tag_popin_ajouter_entourage_volonte_valider = EnsTag(
    name: 'popin_ajouter_entourage_volonte_valider',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'entourage_volonte',
    level3: 'entourage_volonte_ajout',
  );

  static const tag_button_ajouter_entourage_volonte_quitter_annuler = EnsTag(
    name: 'button_ajouter_entourage_volonte_quitter_annuler',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'entourage_volonte',
    level3: 'entourage_volonte_ajout',
  );

  static const tag_popin_ajouter_entourage_volonte_quitter = EnsTag(
    name: 'popin_ajouter_entourage_volonte_quitter',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'profil_medical',
    level2: 'entourage_volonte',
    level3: 'entourage_volonte_ajout',
  );

  static const tag_button_valider_ajout_entourage_volonte = EnsTag(
    name: 'button_valider_ajout_entourage_volonte',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'entourage_volonte',
    level3: 'entourage_volonte_ajout',
  );
}
