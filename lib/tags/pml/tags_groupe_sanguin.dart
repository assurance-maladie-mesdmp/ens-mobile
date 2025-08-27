/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';

class TagsGroupeSanguin {
  static const tag_2657_groupe_sanguin = EnsTag(
    name: 'groupe_sanguin',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'profil_medical',
    level2: 'caracteristiques_de_sante',
    level3: 'groupe_sanguin',
  );

  static const tag_2660_popin_ajouter_groupe_sanguin_page = EnsTag(
    name: 'popin_ajouter_groupe_sanguin',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'profil_medical',
    level2: 'caracteristiques_de_sante',
    level3: 'groupe_sanguin',
  );

  static const tag_2661_popin_ajouter_groupe_sanguin_valider = EnsTag(
    name: 'popin_ajouter_groupe_sanguin_valider',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'caracteristiques_de_sante',
    level3: 'groupe_sanguin',
  );

  static const tag_2659_popin_connaitre_groupe_sanguin = EnsTag(
    name: 'popin_connaitre_groupe_sanguin',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'profil_medical',
    level2: 'caracteristiques_de_sante',
    level3: 'groupe_sanguin',
  );

  static const tag_2662_popin_supprimer_groupe_sanguin = EnsTag(
    name: 'popin_supprimer_groupe_sanguin',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'profil_medical',
    level2: 'caracteristiques_de_sante',
    level3: 'groupe_sanguin',
  );

  static const tag_2663_button_supprimer_groupe_sanguin_supprimer = EnsTag(
    name: 'button_supprimer_groupe_sanguin_supprimer',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'caracteristiques_de_sante',
    level3: 'groupe_sanguin',
  );

  static const tag_2664_popin_modifier_groupe_sanguin = EnsTag(
    name: 'popin_modifier_groupe_sanguin',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'profil_medical',
    level2: 'caracteristiques_de_sante',
    level3: 'groupe_sanguin',
  );

  static const tag_2665_button_modifier_groupe_sanguin_valider = EnsTag(
    name: 'button_modifier_groupe_sanguin_valider',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'caracteristiques_de_sante',
    level3: 'groupe_sanguin',
  );
}
