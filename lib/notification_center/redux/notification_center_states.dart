/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/notification_center/domain/notification_profile.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';

class NotificationCenterState extends Equatable {
  final int unreadCount;
  final NotificationCenterProfilesState profiles;
  final Notification? currentNotification;

  const NotificationCenterState({
    this.unreadCount = 0,
    this.profiles = const NotificationCenterProfilesState(),
    this.currentNotification,
  });

  NotificationCenterState clone({
    int? unreadCount,
    NotificationCenterProfilesState? profiles,
    Notification? currentNotification,
  }) {
    return NotificationCenterState(
      unreadCount: unreadCount ?? this.unreadCount,
      profiles: profiles ?? this.profiles,
      currentNotification: currentNotification ?? this.currentNotification,
    );
  }

  @override
  List<Object?> get props => [unreadCount, profiles, currentNotification];
}

class NotificationCenterProfilesState extends Equatable {
  final AllPurposesStatus status;
  final List<NotificationProfile> profiles;

  const NotificationCenterProfilesState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.profiles = const [],
  });

  @override
  List<Object?> get props => [status, profiles];
}

class Notification extends Equatable {
  final String profileId;
  final String notificationId;

  const Notification({required this.profileId, required this.notificationId});

  @override
  List<Object?> get props => [profileId, notificationId];
}
