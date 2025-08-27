/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';

class TagsConsentementExtractionDonneesSante {
  static const tag_2439_consentement_cgu = EnsTag(
    name: 'consentement_cgu',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'mise_a_jour_des_cgu',
  );

  static const tag_2440_button_consentement_accepte = EnsTag(
    name: 'button_consentement_accepte',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'mise_a_jour_des_cgu',
  );

  static const tag_2441_button_consentement_oppose = EnsTag(
    name: 'button_consentement_oppose',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'mise_a_jour_des_cgu',
  );

  static const tag_2442_recuperation_automatique = EnsTag(
    name: 'recuperation_automatique',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'compte',
  );
}
