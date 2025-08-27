/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';
import 'package:fr_cnamts_ens/analytics/redux/analytics_actions.dart';
import 'package:fr_cnamts_ens/privacy/domain/ens_privacy.dart';
import 'package:redux/redux.dart';

class AnalyticsMiddlewares {
  static List<Middleware<E>> create<E>(
    IEnsAnalytics analytics,
    IEnsPrivacy privacy,
    IAnalyticsHook hook,
  ) {
    return [
      TypedMiddleware<E, SendAnalyticsAction>(_onSendAnalyticsAction(analytics, privacy, hook)).call,
    ];
  }

  static Middleware<E> _onSendAnalyticsAction<E>(
    IEnsAnalytics analytics,
    IEnsPrivacy privacy,
    IAnalyticsHook hook,
  ) {
    return (Store<E> store, action, NextDispatcher next) {
      final shouldCollectTag = privacy.getAnalyticsConsentment() == EnsPrivacyStatus.ACCEPTED;
      final SendAnalyticsAction sendAnalyticsAction = action as SendAnalyticsAction;
      final flag = shouldCollectTag ? '🟢' : '🔴';
      debugPrint('$flag 🎯 ${sendAnalyticsAction.tag}');
      if (shouldCollectTag) {
        analytics.sendTag(sendAnalyticsAction.tag);
      }
      hook.onSendTag(sendAnalyticsAction.tag);
      next(action);
    };
  }
}
