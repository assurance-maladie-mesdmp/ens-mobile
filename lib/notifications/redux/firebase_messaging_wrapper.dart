/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:firebase_messaging/firebase_messaging.dart';

abstract class IFirebaseMessagingWrapper {
  Future<NotificationSettings> requestPermission();

  void onTokenRefreshExecute(Function(String?) function);

  Future<String?> getToken({String? vapidKey});
}

class FirebaseMessagingWrapper extends IFirebaseMessagingWrapper {
  @override
  Future<NotificationSettings> requestPermission() {
    return FirebaseMessaging.instance.requestPermission();
  }

  @override
  void onTokenRefreshExecute(Function(String?) function) {
    FirebaseMessaging.instance.onTokenRefresh.listen((fcmToken) {
      function(fcmToken);
    });
  }

  @override
  Future<String?> getToken({String? vapidKey}) {
    return FirebaseMessaging.instance.getToken();
  }
}
