/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';

class TagsNotifications {
  static const tag_631_button_notification = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_notification',
    level1: 'notifications',
  );

  static const tag_638_page_notifications = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'page_notifications',
    level1: 'notifications',
  );

  static const tag_632_button_notification_autre_profil = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_notification_autre_profil',
    level1: 'notifications',
  );

  static const tag_634_link_notification_documents = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'link_notification_documents',
    level1: 'notifications',
  );

  static const tag_633_link_notification_messagerie = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'link_notification_messagerie',
    level1: 'notifications',
  );

  static const tag_926_link_notification_vaccinations = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'link_notification_vaccinations',
    level1: 'notifications',
  );

  static const tag_639_button_notification_tout_lu = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_notification_tout_lu',
    level1: 'notifications',
  );

  static const tag_2576_link_notifications_profil_enfant_activer = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'link_notifications_profil_enfant_activer',
    level1: 'notifications',
  );

  static const tag_2577_bouton_fermer_notifications_profil_enfant_activer = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'bouton_fermer_notifications_profil_enfant_activer',
    level1: 'notifications',
  );

  static const tag_2606_button_notification_decouverte_mes_enfant = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_notification_decouverte_mes_enfant',
    level1: 'notifications',
  );

  static EnsTag tagPopinButtonDecouverteMesEnfantEtape(int etape) => EnsTag(
        category: EnsAnalyticsCategory.PAGE,
        name: 'popin_decouverte_mes_enfant_etape$etape',
        level1: 'home_connecte',
      );

  static EnsTag tagButtonPrecedentDecouverteMesEnfantEtape(int etape) => EnsTag(
        category: EnsAnalyticsCategory.CLICK,
        name: 'button_precedent_decouverte_mes_enfant_etape$etape',
        level1: 'home_connecte',
      );

  static EnsTag tagButtonContinuerDecouverteMesEnfantEtape(int etape) => EnsTag(
        category: EnsAnalyticsCategory.CLICK,
        name: 'button_continuer_decouverte_mes_enfant_etape$etape',
        level1: 'home_connecte',
      );

  static const tag_2614_button_acces_mes_enfant_etape4 = EnsTag(
    category: EnsAnalyticsCategory.PAGE,
    name: 'button_acces_mes_enfant_etape4',
    level1: 'home_connecte',
  );

  static const tag_2627_button_croix_decouverte_mes_enfant = EnsTag(
    category: EnsAnalyticsCategory.CLICK,
    name: 'button_croix_decouverte_mes_enfant',
    level1: 'notifications',
  );
}
