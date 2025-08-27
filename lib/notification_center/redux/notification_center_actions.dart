/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/notification_center/domain/notification_profile.dart';

class RefreshUnreadNotificationCountAction {}

class ProcessUnreadNotificationCountAction {
  final int unreadCount;

  ProcessUnreadNotificationCountAction(this.unreadCount);
}

class ProcessNotificationsAsReadAction {
  final String patientId;
  final List<String> notificationsId;

  ProcessNotificationsAsReadAction(this.patientId, this.notificationsId);
}

class FetchNotificationsAction {}

class MarkAllNotificationsAsReadAction {
  final String id;

  MarkAllNotificationsAsReadAction(this.id);
}

class ProcessFailedNotificationsCenterAction {}

class ProcessFetchNotificationsCenterSuccessAction {
  final List<NotificationProfile> notifications;

  ProcessFetchNotificationsCenterSuccessAction(this.notifications);
}

class ReadNotificationAction {
  final String notificationId;
  final String patientId;
  final bool isFromBottomSheetAction;

  ReadNotificationAction({
    required this.notificationId,
    required this.patientId,
    required this.isFromBottomSheetAction,
  });
}

class UnreadNotificationAction {
  final String notificationId;
  final String patientId;

  UnreadNotificationAction({
    required this.notificationId,
    required this.patientId,
  });
}

class DeleteNotificationAction {
  final String notificationId;
  final String patientId;

  DeleteNotificationAction({
    required this.notificationId,
    required this.patientId,
  });
}

class ProcessReadNotificationSuccessAction {
  final String notificationId;
  final String patientId;

  ProcessReadNotificationSuccessAction({
    required this.notificationId,
    required this.patientId,
  });
}

class ProcessUnreadNotificationSuccessAction {
  final String notificationId;
  final String patientId;

  ProcessUnreadNotificationSuccessAction({
    required this.notificationId,
    required this.patientId,
  });
}

class ProcessDeleteNotificationSuccessAction {
  final String notificationId;
  final String patientId;

  ProcessDeleteNotificationSuccessAction({
    required this.notificationId,
    required this.patientId,
  });
}

class ReadAllDeletedDocsNotificationsAction {
  final String patientId;

  ReadAllDeletedDocsNotificationsAction(this.patientId);
}

class ProcessMarkAllNotificationsAsReadAction {
  final String patientId;

  ProcessMarkAllNotificationsAsReadAction(this.patientId);
}

class SetCurrentNotificationAction {
  final String profileId;
  final String notificationId;

  SetCurrentNotificationAction(this.profileId, this.notificationId);
}
