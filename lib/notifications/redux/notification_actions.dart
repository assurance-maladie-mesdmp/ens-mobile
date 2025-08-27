/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

class InitPushNotificationAction {}

class SetupNotificationAction {}

class DeleteNotificationBackTokenAction {
  final String patientId;

  DeleteNotificationBackTokenAction(this.patientId);
}

class SaveNotificationTokenAction {
  final String? fcmToken;

  SaveNotificationTokenAction(this.fcmToken);
}

class DecryptAction {
  final String encryptedPatientId;

  DecryptAction(this.encryptedPatientId);
}

class ProcessDecryptedAction {
  final String decryptedPatientId;

  ProcessDecryptedAction(this.decryptedPatientId);
}
