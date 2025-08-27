/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';

class TagsBilanDePrevention {
  static const tag_2368_bilan_de_prevention = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'bilan_de_prevention',
    level1: 'profil_medical',
  );

  static EnsTag tag2369to2372buttonRepondreBilanDePrevention(String ages) => EnsTag(
        category: EnsAnalyticsCategory.CLICK,
        name: 'button_repondre_bilan_de_prevention_$ages',
        level1: 'profil_medical',
        level2: 'bilan_de_prevention',
      );

  static const tag_2373_bilan_de_prevention_plus_reprendre = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_bilan_de_prevention_plus_reprendre',
    level1: 'profil_medical',
    level2: 'bilan_de_prevention',
  );

  static const tag_2374_popin_bilan_de_prevention_supprimer = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'popin_bilan_de_prevention_supprimer',
    level1: 'profil_medical',
    level2: 'bilan_de_prevention',
  );

  static const tag_2375_bilan_de_prevention_supprimer_annuler = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_bilan_de_prevention_supprimer_annuler',
    level1: 'profil_medical',
    level2: 'bilan_de_prevention',
  );

  static const tag_2376_bilan_de_prevention_supprimer_valider = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_bilan_de_prevention_supprimer_valider',
    level1: 'profil_medical',
    level2: 'bilan_de_prevention',
  );

  static const tag_2377_button_afficher_bilan_de_prevention_termine = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_afficher_bilan_de_prevention_termine',
    level1: 'profil_medical',
    level2: 'bilan_de_prevention',
  );

  static const tag_2378_button_synthese_questionnaire_retour = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_synthese_questionnaire_retour',
    level1: 'profil_medical',
    level2: 'bilan_de_prevention',
    level3: 'synthese_questionnaire',
  );

  static const tag_2379_link_bilan_de_prevention_empty_monbilanprevention = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'link_bilan_de_prevention_empty_monbilanprevention',
    level1: 'profil_medical',
    level2: 'bilan_de_prevention',
  );
}
