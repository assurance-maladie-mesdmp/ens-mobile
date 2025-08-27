/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:collection';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:fr_cnamts_ens/utils/extensions/firebase_crashlytics_extension.dart';
import 'package:redux/redux.dart';

class CrashlyticsMiddleware extends MiddlewareClass<dynamic> {
  static const int _CAPACITY = 10;

  final Crashlytics crashlytics;
  final ListQueue<String> _actions = ListQueue(_CAPACITY);

  CrashlyticsMiddleware(this.crashlytics);

  @override
  void call(Store<dynamic> store, dynamic action, NextDispatcher next) {
    _actions.addFirst(action.runtimeType.toString());
    while (_actions.length > _CAPACITY) {
      _actions.removeLast();
    }
    crashlytics.setCustomKey('last_actions', _actions.join(','));
    next(action);
  }
}

abstract class Crashlytics {
  void setCustomKey(String key, String value);

  void recordError(
    dynamic exception,
    StackTrace? stack, {
    dynamic reason,
    Iterable<DiagnosticsNode> information = const [],
    bool? printDetails,
    bool fatal = false,
  });
}

class CrashlyticsWithFirebase implements Crashlytics {
  final FirebaseCrashlytics crashlytics;

  CrashlyticsWithFirebase(this.crashlytics);

  @override
  void setCustomKey(String key, String value) {
    crashlytics.setCustomKey(key, value);
  }

  @override
  void recordError(
    dynamic exception,
    StackTrace? stack, {
    dynamic reason,
    Iterable<DiagnosticsNode> information = const [],
    bool? printDetails,
    bool fatal = false,
  }) {
    crashlytics.smartRecordError(
      exception,
      stack,
      reason: reason,
      information: information,
      printDetails: printDetails,
      fatal: fatal,
    );
  }
}
