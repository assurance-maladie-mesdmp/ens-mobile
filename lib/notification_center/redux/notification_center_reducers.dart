/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/notification_center/domain/notification_profile.dart';
import 'package:fr_cnamts_ens/notification_center/domain/notification_profile_details.dart';
import 'package:fr_cnamts_ens/notification_center/redux/notification_center_actions.dart';
import 'package:fr_cnamts_ens/notification_center/redux/notification_center_states.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:redux/redux.dart';

class NotificationCenterReducers {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, ProcessUnreadNotificationCountAction>(
          NotificationCenterReducers._onProcessUnreadNotificationCountAction,
        ).call,
        TypedReducer<EnsState, ProcessNotificationsAsReadAction>(
          NotificationCenterReducers._onProcessNotificationsAsReadAction,
        ).call,
        TypedReducer<EnsState, FetchNotificationsAction>(NotificationCenterReducers._onFetchNotificationsAction).call,
        TypedReducer<EnsState, ProcessFailedNotificationsCenterAction>(
          NotificationCenterReducers._onProcessFailedNotificationsCenterAction,
        ).call,
        TypedReducer<EnsState, ProcessFetchNotificationsCenterSuccessAction>(
          NotificationCenterReducers._onProcessFetchNotificationsCenterSuccessAction,
        ).call,
        TypedReducer<EnsState, ProcessReadNotificationSuccessAction>(
          NotificationCenterReducers._onProcessReadNotificationSuccessAction,
        ).call,
        TypedReducer<EnsState, ProcessUnreadNotificationSuccessAction>(
          NotificationCenterReducers._onProcessUnreadNotificationSuccessAction,
        ).call,
        TypedReducer<EnsState, ProcessDeleteNotificationSuccessAction>(
          NotificationCenterReducers._onProcessDeleteNotificationSuccessAction,
        ).call,
        TypedReducer<EnsState, ProcessMarkAllNotificationsAsReadAction>(
          NotificationCenterReducers._onProcessMarkAllNotificationsAsReadAction,
        ).call,
        TypedReducer<EnsState, SetCurrentNotificationAction>(
          NotificationCenterReducers._onSetCurrentNotificationAction,
        ).call,
      ];

  static EnsState _onProcessUnreadNotificationCountAction(EnsState state, ProcessUnreadNotificationCountAction action) {
    return state.clone(
      notificationCenterState: state.notificationCenterState.clone(
        unreadCount: action.unreadCount,
      ),
    );
  }

  static EnsState _onProcessFetchNotificationsCenterSuccessAction(
    EnsState state,
    ProcessFetchNotificationsCenterSuccessAction action,
  ) {
    return state.clone(
      notificationCenterState: state.notificationCenterState.clone(
        profiles: NotificationCenterProfilesState(status: AllPurposesStatus.SUCCESS, profiles: action.notifications),
      ),
    );
  }

  static EnsState _onProcessFailedNotificationsCenterAction(
    EnsState state,
    ProcessFailedNotificationsCenterAction action,
  ) {
    return state.clone(
      notificationCenterState: state.notificationCenterState.clone(
        profiles: const NotificationCenterProfilesState(status: AllPurposesStatus.ERROR),
      ),
    );
  }

  static EnsState _onFetchNotificationsAction(EnsState state, FetchNotificationsAction action) {
    return state.clone(
      notificationCenterState: state.notificationCenterState.clone(
        profiles: const NotificationCenterProfilesState(status: AllPurposesStatus.LOADING),
      ),
    );
  }

  static EnsState _onProcessReadNotificationSuccessAction(EnsState state, ProcessReadNotificationSuccessAction action) {
    final notificationCenterProfilesState = state.notificationCenterState.profiles;
    final newNotifications = notificationCenterProfilesState.profiles
        .firstWhere((profile) => profile.patientId == action.patientId)
        .notifications
        .map(
          (notification) => notification.id == action.notificationId ? notification.clone(isRead: true) : notification,
        )
        .toList();

    final newProfiles = notificationCenterProfilesState.profiles
        .map(
          (profile) => profile.patientId == action.patientId
              ? profile.clone(notifications: newNotifications, unreadCount: profile.unreadCount - 1)
              : profile,
        )
        .toList();

    return state.clone(
      notificationCenterState: state.notificationCenterState.clone(
        unreadCount: state.notificationCenterState.unreadCount - 1,
        profiles: NotificationCenterProfilesState(status: AllPurposesStatus.SUCCESS, profiles: newProfiles),
      ),
    );
  }

  static EnsState _onProcessUnreadNotificationSuccessAction(
    EnsState state,
    ProcessUnreadNotificationSuccessAction action,
  ) {
    final notificationCenterProfilesState = state.notificationCenterState.profiles;
    final newNotifications = notificationCenterProfilesState.profiles
        .firstWhere((profile) => profile.patientId == action.patientId)
        .notifications
        .map(
          (notification) => notification.id == action.notificationId ? notification.clone(isRead: false) : notification,
        )
        .toList();

    final newProfiles = notificationCenterProfilesState.profiles
        .map(
          (profile) => profile.patientId == action.patientId
              ? profile.clone(notifications: newNotifications, unreadCount: profile.unreadCount + 1)
              : profile,
        )
        .toList();

    return state.clone(
      notificationCenterState: state.notificationCenterState.clone(
        unreadCount: state.notificationCenterState.unreadCount + 1,
        profiles: NotificationCenterProfilesState(status: AllPurposesStatus.SUCCESS, profiles: newProfiles),
      ),
    );
  }

  static EnsState _onProcessDeleteNotificationSuccessAction(
    EnsState state,
    ProcessDeleteNotificationSuccessAction action,
  ) {
    final notificationCenterProfilesState = state.notificationCenterState.profiles;
    final List<NotificationProfile> newProfiles =
        _updateProfilesDeleteNotification(notificationCenterProfilesState, action);

    return state.clone(
      notificationCenterState: state.notificationCenterState.clone(
        profiles: NotificationCenterProfilesState(
          status: AllPurposesStatus.SUCCESS,
          profiles: newProfiles,
        ),
      ),
    );
  }

  static List<NotificationProfile> _updateProfilesDeleteNotification(
    NotificationCenterProfilesState notificationCenterProfilesState,
    ProcessDeleteNotificationSuccessAction action,
  ) {
    final newProfiles = notificationCenterProfilesState.profiles.map(
      (profile) {
        if (profile.patientId == action.patientId) {
          final notificationToRemove = profile.notifications.firstWhere(
            (notification) => notification.id == action.notificationId,
          );
          final newNotifications = List<NotificationDetails>.from(profile.notifications)..remove(notificationToRemove);
          final newUnreadCount = notificationToRemove.isRead == false ? profile.unreadCount - 1 : profile.unreadCount;

          return profile.clone(
            notifications: newNotifications,
            unreadCount: newUnreadCount,
          );
        }
        return profile;
      },
    ).toList();
    return newProfiles;
  }

  static EnsState _onProcessNotificationsAsReadAction(EnsState state, ProcessNotificationsAsReadAction action) {
    final notificationCenterProfilesState = state.notificationCenterState.profiles;
    if (notificationCenterProfilesState.status.isSuccess()) {
      final newNotifications = notificationCenterProfilesState.profiles
          .firstWhere((profile) => profile.patientId == action.patientId)
          .notifications
          .map(
            (notification) =>
                action.notificationsId.contains(notification.id) ? notification.clone(isRead: true) : notification,
          )
          .toList();

      final newProfiles = notificationCenterProfilesState.profiles
          .map(
            (profile) => profile.patientId == action.patientId
                ? profile.clone(
                    notifications: newNotifications,
                    unreadCount: profile.unreadCount - action.notificationsId.length,
                  )
                : profile,
          )
          .toList();

      return state.clone(
        notificationCenterState: state.notificationCenterState.clone(
          unreadCount: state.notificationCenterState.unreadCount - action.notificationsId.length,
          profiles: NotificationCenterProfilesState(status: AllPurposesStatus.SUCCESS, profiles: newProfiles),
        ),
      );
    }
    return state;
  }

  static EnsState _onProcessMarkAllNotificationsAsReadAction(
    EnsState state,
    ProcessMarkAllNotificationsAsReadAction action,
  ) {
    final notificationCenterProfilesState = state.notificationCenterState.profiles;
    if (notificationCenterProfilesState.status.isSuccess()) {
      final numberOfReadNotifications = notificationCenterProfilesState.profiles
          .firstWhere((profile) => profile.patientId == action.patientId)
          .unreadCount;
      final newNotifications = notificationCenterProfilesState.profiles
          .firstWhere((profile) => profile.patientId == action.patientId)
          .notifications
          .map(
            (notification) => notification.clone(isRead: true),
          )
          .toList();

      final newProfiles = notificationCenterProfilesState.profiles
          .map(
            (profile) => profile.patientId == action.patientId
                ? profile.clone(
                    notifications: newNotifications,
                    unreadCount: 0,
                  )
                : profile,
          )
          .toList();

      return state.clone(
        notificationCenterState: state.notificationCenterState.clone(
          unreadCount: state.notificationCenterState.unreadCount - numberOfReadNotifications,
          profiles: NotificationCenterProfilesState(status: AllPurposesStatus.SUCCESS, profiles: newProfiles),
        ),
      );
    }
    return state;
  }

  static EnsState _onSetCurrentNotificationAction(EnsState state, SetCurrentNotificationAction action) {
    return state.clone(
      notificationCenterState: state.notificationCenterState.clone(
        currentNotification: Notification(
          profileId: action.profileId,
          notificationId: action.notificationId,
        ),
      ),
    );
  }
}
