/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class EnsNavigationObserver extends RouteObserver<ModalRoute<dynamic>> {
  final Logger _log = Logger(printer: PrettyPrinter(methodCount: 0));

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    if (route.settings.name != null) {
      _log.d('🐣 Push ${route.settings.name}');
    }
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    if (route.settings.name != null) {
      _log.d('🐣 Pop ${route.settings.name} ➡️ ${previousRoute?.settings.name}');
    }
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    if (route.settings.name != null) {
      _log.d('🐣 Remove ${route.settings.name}');
    }
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    if (newRoute?.settings.name != null) {
      _log.d('🐣 Replace ${oldRoute?.settings.name} ➡️ ${newRoute?.settings.name}');
    }
  }
}
