/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';
import 'package:fr_cnamts_ens/infra/redux/logging_middleware.dart';
import 'package:redux/redux.dart';

class InfraMiddlewares {
  static List<Middleware<dynamic>> create() => [
        CrashlyticsMiddleware(CrashlyticsWithFirebase(FirebaseCrashlytics.instance)).call,
        if (kDebugMode) LoggingMiddleware().call,
      ];
}
