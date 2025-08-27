/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';

class TagsHistoriqueActivites {
  static const tag_410_compte_historique_activite = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'compte_historique_activite',
    level1: 'compte',
    level2: 'historique_activite',
  );

  static const tag_439_traces_ensavoirplus = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'traces_ensavoirplus',
    level1: 'compte',
    level2: 'traces',
  );

  static const tag_786_button_filtrer_par_auteur = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_filtrer_par_auteur',
    level1: 'compte',
    level2: 'historique_activite',
  );

  static const tag_787_tab_professionnels_de_sante = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'tab_professionnels_de_sante',
    level1: 'compte',
    level2: 'historique_activite',
  );

  static const tag_788_tab_services_synchronises = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'tab_services_synchronises',
    level1: 'compte',
    level2: 'historique_activite',
  );

  static const tag_789_tab_activites = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'tab_activites',
    level1: 'compte',
    level2: 'historique_activite',
  );

  static const tag_790_datepicker_appliquer_filtrer_date_debut = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'datepicker_appliquer_filtrer_date_debut',
    level1: 'compte',
    level2: 'historique_activite',
  );

  static const tag_791_datepicker_appliquer_filtrer_date_fin = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'datepicker_appliquer_filtrer_date_fin',
    level1: 'compte',
    level2: 'historique_activite',
  );

  static const tag_792_button_appliquer_filtrer_par = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_appliquer_filtrer_par',
    level1: 'compte',
    level2: 'historique_activite',
  );

  static const tag_793_button_reinitialiser_filtrer_par = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_reinitialiser_filtrer_par',
    level1: 'compte',
    level2: 'historique_activite',
  );

  static const tag_2666_button_afficher_plus = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_afficher_plus',
    level1: 'compte',
    level2: 'historique_activite',
  );
}
