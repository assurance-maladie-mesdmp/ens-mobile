/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/notification_center/data/notification_center_repository.dart';
import 'package:fr_cnamts_ens/notification_center/redux/notification_center_actions.dart';
import 'package:fr_cnamts_ens/snackbar/redux/snackbar_actions.dart';
import 'package:fr_cnamts_ens/utils/error_helper.dart';
import 'package:redux/redux.dart';

class NotificationCenterMiddlewares {
  final INotificationCenterRepository _repository;

  NotificationCenterMiddlewares(this._repository);

  static List<Middleware<EnsState>> create(INotificationCenterRepository repository) {
    final middlewares = NotificationCenterMiddlewares(repository);
    return [
      TypedMiddleware<EnsState, RefreshUnreadNotificationCountAction>(
        middlewares._onRefreshUnreadNotificationCountAction,
      ).call,
      TypedMiddleware<EnsState, FetchNotificationsAction>(middlewares._onFetchNotificationsAction).call,
      TypedMiddleware<EnsState, ReadNotificationAction>(middlewares._onReadNotificationAction).call,
      TypedMiddleware<EnsState, UnreadNotificationAction>(middlewares._onUnreadNotificationAction).call,
      TypedMiddleware<EnsState, DeleteNotificationAction>(middlewares._onDeleteNotificationAction).call,
      TypedMiddleware<EnsState, ReadAllDeletedDocsNotificationsAction>(
        middlewares._onReadAllDeletedDocsNotificationsAction,
      ).call,
      TypedMiddleware<EnsState, MarkAllNotificationsAsReadAction>(middlewares._onMarkAllNotificationsAsReadAction).call,
    ];
  }

  Future<void> _onRefreshUnreadNotificationCountAction(
    Store<EnsState> store,
    RefreshUnreadNotificationCountAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final result = await _repository.getUnreadCount();
    store.dispatch(ProcessUnreadNotificationCountAction(result));
  }

  Future<void> _onFetchNotificationsAction(
    Store<EnsState> store,
    FetchNotificationsAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final result = await _repository.loadNotificationsCenter();
    result.onSuccess((successResult) {
      store.dispatch(ProcessFetchNotificationsCenterSuccessAction(successResult));
      final currentProfilePatientId = store.state.userState.currentProfilePatientId;
      final notificationProfile =
          successResult.firstWhere((notificationProfile) => notificationProfile.patientId == currentProfilePatientId);
      for (final notification in notificationProfile.notifications) {
        if (notification.isSuppressionDocNotification() && !notification.isRead) {
          store.dispatch(
            ReadNotificationAction(
              notificationId: notification.id,
              patientId: currentProfilePatientId,
              isFromBottomSheetAction: false,
            ),
          );
        }
      }
    });
    result.onError((_) {
      store.dispatch(ProcessFailedNotificationsCenterAction());
    });
  }

  Future<void> _onReadNotificationAction(
    Store<EnsState> store,
    ReadNotificationAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final result = await _repository.markNotificationAsRead(action.notificationId, action.patientId);
    result.onSuccess((successResult) {
      store.dispatch(
        ProcessReadNotificationSuccessAction(notificationId: action.notificationId, patientId: action.patientId),
      );
      if (action.isFromBottomSheetAction) {
        store.dispatch(const DisplaySnackbarAction.success('Notification marquée comme lue'));
      }
    }).onError((_) {
      if (action.isFromBottomSheetAction) {
        store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
      }
    });
  }

  Future<void> _onUnreadNotificationAction(
    Store<EnsState> store,
    UnreadNotificationAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final result = await _repository.markNotificationAsUnread(action.notificationId, action.patientId);
    result.onSuccess((successResult) {
      store.dispatch(
        ProcessUnreadNotificationSuccessAction(
          notificationId: action.notificationId,
          patientId: action.patientId,
        ),
      );
      store.dispatch(const DisplaySnackbarAction.success('Notification marquée comme non lue'));
    }).onError((_) {
      store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
    });
  }

  Future<void> _onDeleteNotificationAction(
    Store<EnsState> store,
    DeleteNotificationAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final result = await _repository.deleteNotification(action.notificationId, action.patientId);
    result.onSuccess((successResult) {
      store.dispatch(
        ProcessDeleteNotificationSuccessAction(
          notificationId: action.notificationId,
          patientId: action.patientId,
        ),
      );
      store.dispatch(const DisplaySnackbarAction.success('Notification supprimée'));
    }).onError((_) {
      store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
    });
  }

  Future<void> _onReadAllDeletedDocsNotificationsAction(
    Store<EnsState> store,
    ReadAllDeletedDocsNotificationsAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final notificationCenterProfilesState = store.state.notificationCenterState.profiles;
    if (notificationCenterProfilesState.status.isSuccess()) {
      final notificationProfiles =
          notificationCenterProfilesState.profiles.firstWhere((profile) => profile.patientId == action.patientId);
      final notificationsToMarkAsRead = notificationProfiles.notifications
          .where((notification) => notification.isSuppressionDocNotification() && !notification.isRead);
      for (final notification in notificationsToMarkAsRead) {
        await _repository.markNotificationAsRead(notification.id, action.patientId);
      }
      store.dispatch(
        ProcessNotificationsAsReadAction(
          action.patientId,
          notificationsToMarkAsRead.map((notification) => notification.id).toList(),
        ),
      );
    }
  }

  Future<void> _onMarkAllNotificationsAsReadAction(
    Store<EnsState> store,
    MarkAllNotificationsAsReadAction action,
    NextDispatcher next,
  ) async {
    next(action);
    await _repository.markAllNotificationsAsRead(action.id);
    store.dispatch(ProcessMarkAllNotificationsAsReadAction(action.id));
  }
}
