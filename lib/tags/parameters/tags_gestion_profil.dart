/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';

class TagsGestionProfil {
  static const tag_2668_button_gerer_profil = EnsTag(
    name: 'button_gerer_profil',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'compte',
  );

  static const tag_2667_gerer_profil = EnsTag(
    name: 'gerer_profil',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'compte',
  );
}
