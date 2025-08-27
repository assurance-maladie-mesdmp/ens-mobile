/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';

class TagsCompte {
  static const tag_button_compte_deconnexion = EnsTag(
    name: 'button_compte_deconnexion',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'compte',
  );

  static const tag_popin_compte = EnsTag(
    name: 'popin_compte',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'compte',
  );

  static const tag_button_compte_parametres = EnsTag(
    name: 'button_compte_paramètres',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'compte',
  );

  static const tag_button_compte_affichageOD = EnsTag(
    name: 'button_compte_affichageOD',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'compte',
  );

  static const tag_button_compte_ajouter_un_profil = EnsTag(
    name: 'button_compte_ajouter_un_profil',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'compte',
  );

  static const tag_446_compte_confidentialite_rubriques = EnsTag(
    name: 'compte_confidentialite_rubriques',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'compte',
    level2: 'activités',
  );

  static const tag_677_link_changer_confidentialite_doc = EnsTag(
    name: 'link_changer_confidentialite_doc',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'compte',
    level2: 'confidentialite_information',
  );

  static const tag_783_compte_identite_nationale_sante = EnsTag(
    name: 'compte_identite_nationale_sante',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'compte',
    level2: 'identite_nationale_sante',
  );
}
