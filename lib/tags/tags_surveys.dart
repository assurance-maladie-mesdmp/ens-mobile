/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';
import 'package:fr_cnamts_ens/bottomsheet_recommander_app/redux/recommander_app_redux.dart';

class TagsSurveys {
  static const tag_app_rating_page = EnsTag(
    name: 'questionnaire_satisfaction',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'home_connecte',
  );

  static const tag_app_rating_yes_click = EnsTag(
    name: 'button_satisfait',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'home_connecte',
  );

  static const tag_app_rating_no_click = EnsTag(
    name: 'button_pas_satisfait',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'home_connecte',
  );

  static const tag_app_rating_close_click = EnsTag(
    name: 'button_quit_questionnaire_satisfaction',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'home_connecte',
  );

  static const tag_suggestion_page = EnsTag(
    name: 'questionnaire_satisfaction_suggestion',
    category: EnsAnalyticsCategory.PAGE,
    level1: 'home_connecte',
  );

  static const tag_suggestion_yes_click = EnsTag(
    name: 'button_questionnaire_satisfaction_suggestion_jefaisunesuggestion',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'home_connecte',
  );

  static const tag_suggestion_no_click = EnsTag(
    name: 'button_questionnaire_satisfaction_suggestion_plustard',
    category: EnsAnalyticsCategory.CLICK,
    level1: 'home_connecte',
  );

  static EnsTag tagPageRecommanderAppExamenReco(RecommanderAppActionTriggeredFrom typeOfTrigger) {
    return EnsTag(
      name: 'recommander_app_${typeOfTrigger.tagLabel()}',
      category: EnsAnalyticsCategory.PAGE,
      level1: 'Compte',
      level2: 'Recommendation',
    );
  }

  static EnsTag tagClickButtonInviterProche(RecommanderAppActionTriggeredFrom typeOfTrigger) {
    return EnsTag(
      name: 'button_inviter_proche_${typeOfTrigger.tagLabel()}',
      category: EnsAnalyticsCategory.CLICK,
      level1: 'Compte',
      level2: 'Recommendation',
    );
  }

  static EnsTag tagClickButtonRecommanderPlusTard(RecommanderAppActionTriggeredFrom typeOfTrigger) {
    return EnsTag(
      name: 'button_recommander_plus_tard_${typeOfTrigger.tagLabel()}',
      category: EnsAnalyticsCategory.CLICK,
      level1: 'Compte',
      level2: 'Recommendation',
    );
  }
}
