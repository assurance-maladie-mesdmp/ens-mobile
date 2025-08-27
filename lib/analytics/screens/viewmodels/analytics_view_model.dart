/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';
import 'package:fr_cnamts_ens/analytics/redux/analytics_actions.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/traces/domain/ens_send_trace.dart';
import 'package:fr_cnamts_ens/traces/redux/traces_redux.dart';
import 'package:redux/redux.dart';

class AnalyticsViewModel extends Equatable {
  final Store _store;

  const AnalyticsViewModel(this._store);

  void tagAction(EnsTag tag) {
    _store.dispatch(SendAnalyticsAction(tag));
  }

  void traceAction(EnsSendTrace trace) {
    debugPrint('⛷️ $trace');
    _store.dispatch(SendTraceAction(trace));
  }

  @override
  List<Object?> get props => [];
}

mixin AnalyticsMixin {
  void tagAction(EnsTag tag) {
    store.dispatch(SendAnalyticsAction(tag));
  }

  void traceAction(EnsSendTrace trace) {
    debugPrint('⛷️ ${trace.type}');
    store.dispatch(SendTraceAction(trace));
  }

  Store<EnsState> get store;
}

extension AnalyticsContext on BuildContext {
  void tagAction(EnsTag tag) {
    StoreProvider.of<EnsState>(this).dispatch(SendAnalyticsAction(tag));
  }

  void tagInitialAction(EnsTag tag) {
    StoreProvider.of<EnsInitialState>(this).dispatch(SendAnalyticsAction(tag));
  }

  void traceAction(EnsTraceType type, {Map<String, String>? params}) {
    final trace = EnsSendTrace(type, params: params);
    debugPrint('⛷️ $trace');
    StoreProvider.of<EnsState>(this).dispatch(SendTraceAction(trace));
  }
}
