/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

extension FirebaseCrashlyticsExtension on FirebaseCrashlytics {
  void smartRecordError(
    dynamic exception,
    StackTrace? stack, {
    dynamic reason,
    Iterable<DiagnosticsNode> information = const [],
    bool? printDetails,
    bool fatal = false,
  }) {
    const bool localRecordErrorEmulationForDebugBuilds = kDebugMode;

    if (localRecordErrorEmulationForDebugBuilds) {
      final Logger log = Logger(
        printer: PrettyPrinter(
          methodCount: 0,
          excludeBox: {Level.debug: true},
        ),
      );
      final String information0 = information.isEmpty ? '' : (StringBuffer()..writeAll(information, '\n')).toString();
      log.e('---------------- Local CRASHLYTICS emulation for debug builds ----------------');
      if (reason != null) {
        log.e('The following exception was thrown $reason:');
      }
      log.e(exception);
      if (information0.isNotEmpty) log.e('\n$information0');
      if (stack != null) log.e('\n$stack');
      log.e('------------------------------------------------------------------------------');
    } else {
      recordError(
        exception,
        stack,
        reason: reason,
        information: information,
        printDetails: printDetails,
        fatal: fatal,
      );
    }
  }
}
