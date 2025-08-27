/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';

class TagsPrevention {
  static const tag_2357_prevention = EnsTag(
    name: 'prevention',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'prevention',
  );

  static const tag_2670_bouton_prevention_voir_plus_articles = EnsTag(
    name: 'prevention',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'prevention',
  );

  static const tag_2676_bibliotheque_articles_prevention = EnsTag(
    name: 'prevention',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'bibliotheque_articles',
  );

  static EnsTag tagBoutonPrevention(String labels) => EnsTag(
        category: EnsAnalyticsCategory.CLICK,
        name: 'button_${labels}_prevention',
        level1: 'prevention',
      );

  static EnsTag tagBoutonArticlesPrevention(String labels) => EnsTag(
        category: EnsAnalyticsCategory.CLICK,
        name: 'button_articles_${labels}_prevention',
        level1: 'prevention',
      );
}
