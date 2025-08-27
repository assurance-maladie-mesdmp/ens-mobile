/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';

class TagsLogin {
  static const tag_connexion_app = EnsTag(
    name: 'connexion_app',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'enrolement',
    level2: 'connexion_app',
  );

  static const tag_button_activer = EnsTag(
    name: 'button_activer',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'enrolement',
    level2: 'connexion_app',
  );

  static const tag_button_connexion = EnsTag(
    name: 'button_connexion',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'enrolement',
    level2: 'connexion_app',
  );

  static const tag_513_attestation_vaccinale_qrcode_offline = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'attestation_vaccinale_qrcode_offline',
    level1: 'attestation_vaccinale',
    level2: 'attestation_consult',
  );

  static const tag_91_button_attestation_vaccinale_qrcode_widget = EnsTag(
    name: 'button_attestation_vaccinale_qrcode_widget',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'attestation_vaccinale',
    level2: 'attestation_consult',
  );

  static const tag_90_attestation_vaccinale_qrcode_online = EnsTag(
    name: 'attestation_vaccinale_qrcode_online',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'attestation_vaccinale',
    level2: 'attestation_consult',
  );

  static const tag_popin_consulter_attestation_vaccinale_actions = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'popin_consulter_attestation_vaccinale_actions',
    level1: 'attestation_vaccinale',
    level2: 'attestation_consult',
  );
}
