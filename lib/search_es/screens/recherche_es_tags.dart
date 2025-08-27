/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';

class RechercheEsTags {
  static const tag_974_page_formulaire_recherche_es = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'pm_recherche_es',
    level1: 'profil_medical',
    level2: 'professionnels_de_santé',
  );

  static const tag_975_bouton_rechercher_formulaire_recherche_es = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_recherche_es',
    level1: 'profil_medical',
    level2: 'professionnels_de_santé',
  );

  static const tag_976_bouton_ajouter_formulaire_recherche_es = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_ajouter_es',
    level1: 'profil_medical',
    level2: 'professionnels_de_santé',
  );
}
