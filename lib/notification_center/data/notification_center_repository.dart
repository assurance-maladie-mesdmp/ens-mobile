/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:ferry/ferry.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_delete_notification.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_get_count_notification_center.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_get_notification_center.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mark_notification_as_read.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mark_notification_as_unread.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mark_notifications_as_read.query.req.gql.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';
import 'package:fr_cnamts_ens/notification_center/data/notification_center_repository_mapper.dart';
import 'package:fr_cnamts_ens/notification_center/domain/notification_profile.dart';
import 'package:fr_cnamts_ens/utils/extensions/graphql_extensions.dart';

abstract class INotificationCenterRepository {
  Future<int> getUnreadCount();

  Future<RequestResult<List<NotificationProfile>>> loadNotificationsCenter();

  Future<RequestResult<void>> markNotificationAsRead(String notificationId, String patientId);

  Future<RequestResult<void>> markNotificationAsUnread(String notificationId, String patientId);

  Future<RequestResult<void>> deleteNotification(String notificationId, String patientId);

  Future<RequestResult<void>> markAllNotificationsAsRead(String patientId);
}

class NotificationCenterRepository extends INotificationCenterRepository {
  final Client ferryClient;
  final Crashlytics crashlytics;

  NotificationCenterRepository(this.ferryClient, this.crashlytics);

  @override
  Future<int> getUnreadCount() async {
    try {
      final query = Gget_unread_notification_center_countReq(
        (builder) => builder..fetchPolicy = FetchPolicy.NetworkOnly,
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return 0;
      }
      return graphQLResponse.data?.fetchNotificationCenter?.unreadNotificationsCount ?? 0;
    } catch (e) {
      crashlytics.recordError(e, null);
      return 0;
    }
  }

  @override
  Future<RequestResult<List<NotificationProfile>>> loadNotificationsCenter() async {
    try {
      final query = Gget_notification_centerReq(
        (builder) => builder..fetchPolicy = FetchPolicy.NetworkOnly,
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }
      final result = graphQLResponse.data?.fetchNotificationCenter;
      if (result == null) {
        return RequestResultError.genericError();
      }
      final profiles =
          result.profiles.map((profile) => NotificationCenterRepositoryMapper.toNotificationProfile(profile)).toList();
      return RequestResultSuccess(profiles);
    } catch (e) {
      crashlytics.recordError(e, null);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<void>> markNotificationAsRead(String notificationId, String patientId) async {
    try {
      final mutation = Gmark_notification_as_readReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.notificationId = notificationId
          ..vars.patientId = patientId,
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }
      final result = graphQLResponse.data?.markNotificationAsRead;
      if (result != null && result.success) {
        return RequestResultSuccess(null);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<void>> markNotificationAsUnread(String notificationId, String patientId) async {
    try {
      final mutation = Gmark_notification_as_unreadReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.notificationId = notificationId
          ..vars.patientId = patientId,
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }
      final result = graphQLResponse.data?.markNotificationAsUnread;
      if (result != null && result.success) {
        return RequestResultSuccess(null);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<void>> deleteNotification(String notificationId, String patientId) async {
    try {
      final mutation = Gdelete_notificationReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.notificationId = notificationId
          ..vars.patientId = patientId,
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }
      final result = graphQLResponse.data?.deleteNotification;
      if (result != null && result.success) {
        return RequestResultSuccess(null);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<void>> markAllNotificationsAsRead(String patientId) async {
    try {
      final mutation = Gmark_all_notifications_as_readReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId,
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }
      if (graphQLResponse.data?.markAllNotificationsAsRead != null &&
          graphQLResponse.data!.markAllNotificationsAsRead.success) {
        return RequestResultSuccess(null);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }
}
