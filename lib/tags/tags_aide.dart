/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';

class TagsAide {
  static const tag_2268_questions_frequentes = EnsTag(
    name: 'questions-frequentes',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'aide',
  );

  static const tag_2269_aide_nous_contacter = EnsTag(
    name: 'aide_nous_contacter',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'aide',
    level2: 'nous_contacter',
  );

  static const tag_2270_button_nouvelle_demande = EnsTag(
    name: 'button_nouvelle_demande',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'aide',
    level2: 'nous_contacter',
  );

  static const tag_2271_aide_nouvelle_demande = EnsTag(
    name: 'aide_nouvelle_demande',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'aide',
    level2: 'nous_contacter',
  );

  static const tag_2272_button_envoyer_nouvelle_demande = EnsTag(
    name: 'button_envoyer_nouvelle_demande',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'aide',
    level2: 'nous_contacter',
  );

  static const tag_2273_button_consulter_demande = EnsTag(
    name: 'button_consulter_demande',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'aide',
    level2: 'nous_contacter',
  );

  static const tag_2274_aide_consulter_demande = EnsTag(
    name: 'aide_consulter_demande',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'aide',
    level2: 'nous_contacter',
  );

  static EnsTag tag2275FaqQuestion(String questionId) => EnsTag(
        name: 'aide-$questionId',
        category: EnsAnalyticsCategory.PAGE,
        level1: 'aide',
        level2: 'nous_contacter',
      );
}
