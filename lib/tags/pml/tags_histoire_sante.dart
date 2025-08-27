/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';

class TagsMonMonHistoireDeSante {
  const TagsMonMonHistoireDeSante._();

  static const tag_1260_button_historique_filtre = EnsTag(
    name: 'button_historique_filtre',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'historique_des_soins',
  );

  static const tag_820_histoire_de_soins_filtrer_par_categories = EnsTag(
    name: 'histoire_de_soins_filtrer_par_categories',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'profil_medical',
    level2: 'historique_des_soins',
  );

  static const tag_821_checkbox_select_categories_histoire = EnsTag(
    name: 'checkbox_select_categories_histoire',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'historique_des_soins',
  );

  static const tag_822_checkbox_unselect_categories_histoire = EnsTag(
    name: 'checkbox_unselect_categories_histoire',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'historique_des_soins',
  );

  static const tag_823_button_voir_toutes_les_categories_histoire = EnsTag(
    name: 'button_voir_toutes_les_categories_histoire',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'historique_des_soins',
  );

  static const tag_824_button_valider_filtrer_par_categories_histoire = EnsTag(
    name: 'button_valider_filtrer_par_categories_histoire',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'historique_des_soins',
  );

  static const tag_592_button_historique_ajout_traitement = EnsTag(
    name: 'button_historique_ajout_traitement ',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'historique_des_soins',
  );

  static const tag_2250_link_info_ps_es = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'link_info_ps_es',
    level1: 'profil_medical',
    level2: 'historique_des_soins',
  );

  static const tag_524_histoire_de_soins_detail = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'histoire_de_soins_detail',
    level1: 'profil_medical',
    level2: 'historique_des_soins',
  );

  static const tag_395_historique_des_soins = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'historique_des_soins',
    level1: 'profil_medical',
    level2: 'historique_des_soins',
  );

  static const tag_583_button_historique_des_soins_mois = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_historique_des_soins_mois',
    level1: 'profil_medical',
    level2: 'historique_des_soins',
  );

  static const tag_584_button_historique_des_soins_jour = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_historique_des_soins_jour',
    level1: 'profil_medical',
    level2: 'historique_des_soins',
  );

  static const tag_1302_button_historique_ajout_vaccination = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_historique_ajout_vaccination',
    level1: 'profil_medical',
    level2: 'historique_des_soins',
  );

  static const tag_184_button_profil_medical_liste_histoiredesante = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_profil_medical_liste_histoiredesante',
    level1: 'profil_medical',
  );

  static EnsTag tagTutoMonMonHistoireDeSante(int page) => EnsTag(
        category: EnsAnalyticsCategory.PAGE,
        name: 'tuto_mon_histoire_sante_p$page',
        level1: 'tutorial',
        level2: 'mon_histoire_de_sante',
      );

  static EnsTag tagButtonSuivantTutoMonMonHistoireDeSante(int page) => EnsTag(
        category: EnsAnalyticsCategory.CLICK,
        name: 'button_suivant_tuto_mon_histoire_sante_p$page',
        level1: 'tutorial',
        level2: 'mon_histoire_de_sante',
      );

  static EnsTag tagButtonPrecedentTutoMonMonHistoireDeSante(int page) => EnsTag(
        category: EnsAnalyticsCategory.CLICK,
        name: 'button_precedent_tuto_mon_histoire_sante_p$page',
        level1: 'tutorial',
        level2: 'mon_histoire_de_sante',
      );
}
