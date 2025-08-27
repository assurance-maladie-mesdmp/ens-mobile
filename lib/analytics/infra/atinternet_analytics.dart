/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:ens_plugin/analytics/at_internet_bridge.dart';
import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';

class AtInternetAnalytics extends IEnsAnalytics {
  final AtInternetTracker _atInternetTracker;

  AtInternetAnalytics(this._atInternetTracker);

  @override
  void sendTag(EnsTag tag) {
    switch (tag.category) {
      case EnsAnalyticsCategory.CLICK:
        _atInternetTracker.tagClick(tag.name, chapter1: tag.level1, chapter2: tag.level2, chapter3: tag.level3);
      case EnsAnalyticsCategory.PAGE:
        _atInternetTracker.tagScreen(tag.name, chapter1: tag.level1, chapter2: tag.level2, chapter3: tag.level3);
    }
  }
}
