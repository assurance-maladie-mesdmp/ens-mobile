/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';

class TagsDirectivesAnticipees {
  static const tag_441_directives_anticipees_empty = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'directives-anticipees-empty',
    level1: 'profil_medical',
    level2: 'directives-anticipees',
  );

  static const tag_2652_directives_anticipees_empty = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'directives_anticipees_empty',
    level1: 'profil_medical',
    level2: 'directives_anticipees',
  );

  static const tag_442_directives_anticipees = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'directives-anticipees',
    level1: 'profil_medical',
    level2: 'directives-anticipees',
  );

  static const tag_708_button_ajouter_da = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_ajouter_da',
    level1: 'profil_medical',
    level2: 'entourage_volonte',
  );
}
