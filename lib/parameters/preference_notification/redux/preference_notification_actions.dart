/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'preference_notification_redux.dart';

class FetchPreferenceNotificationAction {}

class _ProcessFetchedPreferenceNotificationSuccessAction {
  final List<PreferenceNotification> preferencesNotifications;

  _ProcessFetchedPreferenceNotificationSuccessAction(this.preferencesNotifications);
}

class _ProcessFetchedPreferenceNotificationErrorAction {}

class SetPreferenceNotificationAction {
  final PreferenceNotification preferenceNotification;

  SetPreferenceNotificationAction(this.preferenceNotification);
}

class _ProcessSetPreferenceNotificationSuccessAction {
  final PreferenceNotification preferenceNotification;

  _ProcessSetPreferenceNotificationSuccessAction(this.preferenceNotification);
}

class _ProcessSetPreferenceNotificationErrorAction {
  final TypePreferenceNotification typePreferenceNotification;

  _ProcessSetPreferenceNotificationErrorAction(this.typePreferenceNotification);
}
