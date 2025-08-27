/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';

class TagsPml {
  static const tag_profil_medical_liste = EnsTag(
    name: 'profil_medical_liste',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'profil_medical',
  );

  static const tag_178_button_profil_medical_liste_maladies = EnsTag(
    name: 'button_profil_medical_liste_maladies',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
  );

  static const tag_1026_button_ps_envoi_message = EnsTag(
    name: 'button_ps_envoi_message',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'professionnel_sante_detail',
  );

  static const tag_179_button_profil_medical_liste_traitements = EnsTag(
    name: 'button_profil_medical_liste_traitements',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
  );

  static const tag_180_button_profil_medical_liste_antecedents = EnsTag(
    name: 'button_profil_medical_liste_antecedents',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
  );

  static const tag_181_button_profil_medical_liste_allergies = EnsTag(
    name: 'button_profil_medical_liste_allergies',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
  );

  static const tag_523_button_profil_medical_liste_professionels_sante = EnsTag(
    name: 'button_profil_medical_liste_professionels_sante',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
  );

  static const tag_2648_button_profil_medical_liste_entourage = EnsTag(
    name: 'button_profil_medical_liste_entourage',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
  );

  static const tag_2649_button_profil_medical_liste_don_organe = EnsTag(
    name: 'button_profil_medical_liste_don_organe',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
  );

  static const tag_2650_button_profil_medical_liste_directive_anticipe = EnsTag(
    name: 'button_profil_medical_liste_directive_anticipe',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
  );

  static const tag_177_button_visualiser_synthese = EnsTag(
    name: 'button_visualiser_synthese',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
  );

  static const tag_864_button_completer_onboarding_profil_pml_od = EnsTag(
    name: 'button_completer_onboarding_profil_pml_od',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
  );

  static const tag_865_button_completer_onboarding_profil_pml_ad = EnsTag(
    name: 'button_completer_onboarding_profil_pml_ad',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
  );
}
