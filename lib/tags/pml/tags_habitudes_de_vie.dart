/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';

class TagsHabitudesDeVie {
  static const tag_habitudes_de_vie = EnsTag(
    name: 'habitudes_de_vie',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'prevention',
    level2: 'habitudes_de_vie',
  );

  static EnsTag tagHabitudesDeVieCategory(String category) {
    return EnsTag(
      name: 'habitudes_de_vie_$category',
      category: EnsAnalyticsCategory.PAGE,
      level1: 'prevention',
      level2: 'habitudes_de_vie',
    );
  }

  static EnsTag tagHabitudesDeViePopinPage(String questionCode) {
    return EnsTag(
      name: 'popin_$questionCode',
      category: EnsAnalyticsCategory.PAGE,
      level1: 'prevention',
      level2: 'habitudes_de_vie',
    );
  }

  static EnsTag tagHabitudesDeVieButtonValider(String questionCode) {
    return EnsTag(
      name: 'button_${questionCode}_valider',
      category: EnsAnalyticsCategory.CLICK,
      level1: 'prevention',
      level2: 'habitudes_de_vie',
    );
  }

  static EnsTag tagHabitudesDeVieButtonAnnuler(String questionCode) {
    return EnsTag(
      name: 'button_${questionCode}_annuler',
      category: EnsAnalyticsCategory.CLICK,
      level1: 'prevention',
      level2: 'habitudes_de_vie',
    );
  }

  static EnsTag tagHabitudesDeVieButtonPlus(String questionCode) {
    return EnsTag(
      name: 'button_${questionCode}_plus',
      category: EnsAnalyticsCategory.CLICK,
      level1: 'prevention',
      level2: 'habitudes_de_vie',
    );
  }

  static EnsTag tagHabitudesDeVieButtonPlusModifier(String questionCode) {
    return EnsTag(
      name: 'button_${questionCode}_plus_modifier',
      category: EnsAnalyticsCategory.CLICK,
      level1: 'prevention',
      level2: 'habitudes_de_vie',
    );
  }

  static EnsTag tagHabitudesDeVieButtonPlusSupprimer(String questionCode) {
    return EnsTag(
      name: 'button_${questionCode}_plus_supprimer',
      category: EnsAnalyticsCategory.CLICK,
      level1: 'prevention',
      level2: 'habitudes_de_vie',
    );
  }

  static EnsTag tagHabitudesDeViePopinSelectionAction(String questionCode) {
    return EnsTag(
      name: 'popin_${questionCode}_selectionner_action',
      category: EnsAnalyticsCategory.PAGE,
      level1: 'prevention',
      level2: 'habitudes_de_vie',
    );
  }

  static const tag_1219_habitudes_de_vie_suppression_popin = EnsTag(
    name: 'popin_habitudes_de_vie_supprimer',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'prevention',
    level2: 'habitudes_de_vie',
  );

  static const tag_1220_habitudes_de_vie_suppression_popin_annuler = EnsTag(
    name: 'button_habitudes_de_vie_supprimer_annuler',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'prevention',
    level2: 'habitudes_de_vie',
  );

  static const tag_1221_habitudes_de_vie_suppression_popin_valider = EnsTag(
    name: 'button_habitudes_de_vie_supprimer_valider',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'prevention',
    level2: 'habitudes_de_vie',
  );

  //Tags dynamiques 2504-2519
  static EnsTag tagHabitudesDeViePopinModifierReponse(String reponseTag) => EnsTag(
        category: EnsAnalyticsCategory.PAGE,
        name: 'popin_${reponseTag}_modifier',
        level1: 'prevention',
        level2: 'habitudes_de_vie',
      );

  static const tag_2667_button_prevention_habitude_de_vie = EnsTag(
    name: 'button_prevention_habitude_de_vie',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'prevention',
  );
}
