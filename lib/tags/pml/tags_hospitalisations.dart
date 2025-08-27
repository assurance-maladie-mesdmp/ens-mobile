/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';

class TagsHospitalisations {
  static const tag_hospitalisations = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'hospitalisations',
    level1: 'profil_medical',
    level2: 'hospitalisations',
  );

  static const tag_421_hospitalisation_empty = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'hospitalisation_empty',
    level1: 'profil_medical',
    level2: 'hospitalisations',
  );

  static const tag_423_hospitalisation_aucun = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'hospitalisation_aucun',
    level1: 'profil_medical',
    level2: 'hospitalisations',
  );

  static const tag_228_button_ajout_hospitalisation = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_ajout_hospitalisation',
    level1: 'profil_medical',
    level2: 'hospitalisations',
  );

  static const tag_433_popin_supprimer_hospitalisation = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'popin_supprimer_hospitalisation',
    level1: 'profil_medical',
    level2: 'hospitalisations',
    level3: 'hospitalisation_supression',
  );

  static const tag_434_popin_supprimer_hospitalisation_valider = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_supprimer_hospitalisation_valider',
    level1: 'profil_medical',
    level2: 'hospitalisations',
    level3: 'hospitalisation_supression',
  );

  static const tag_435_button_supprimer_hospitalisation_annuler = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_supprimer_hospitalisation_annuler',
    level1: 'profil_medical',
    level2: 'hospitalisations',
    level3: 'hospitalisation_supression',
  );

  static const tag_230_button_modifier_hospitalisation = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_modifier_hospitalisation',
    level1: 'profil_medical',
    level2: 'hospitalisations',
    level3: 'hospitalisation_ajout',
  );

  static const tag_429_popin_ajout_hospitalisation = EnsTag(
    name: 'popin_ajout_hospitalisation',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'profil_medical',
    level2: 'hospitalisations',
    level3: 'hospitalisation_ajout',
  );

  static const tag_430_button_valider_ajout_hospitalisation = EnsTag(
    name: 'button_valider_ajout_hospitalisation',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'hospitalisations',
    level3: 'hospitalisation_ajout',
  );

  static const tag_431_popin_modif_hospitalisation = EnsTag(
    name: 'popin_modif_hospitalisation',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'profil_medical',
    level2: 'hospitalisations',
    level3: 'hospitalisation_modification',
  );

  static const tag_432_button_valider_modification_hospitalisation = EnsTag(
    name: 'button_valider_modification_hospitalisation',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'profil_medical',
    level2: 'hospitalisations',
    level3: 'hospitalisation_modification',
  );
}
