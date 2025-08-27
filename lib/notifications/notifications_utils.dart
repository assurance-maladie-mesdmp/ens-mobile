/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:firebase_messaging/firebase_messaging.dart';

class Notifications {
  Notifications._();

  static RemoteMessage? _savedMessage;

  static bool skipFutureInitialMessage = false;

  // ignore: use_setters_to_change_properties
  static void save(RemoteMessage message) {
    skipFutureInitialMessage = true;
    _savedMessage = message;
  }

  static RemoteMessage? consume() {
    final toConsume = _savedMessage;
    if (toConsume != null) {
      _savedMessage = null;
    }
    return toConsume;
  }
}
