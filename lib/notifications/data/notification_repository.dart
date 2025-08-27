/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:convert';
import 'dart:io';

import 'package:ferry/ferry.dart' as ferry;
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_account_delete_notification_token.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_account_save_notification_token.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/notification_center/redux/notification_center_actions.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/utils/extensions/graphql_extensions.dart';
import 'package:redux/redux.dart';

abstract class INotificationRepository {
  Future<RequestResult<void>> saveNotificationToken(String notificationToken);

  Future<RequestResult<void>> deleteNotificationToken(String patientId);

  Future<void> configureForegroundNotification(Store<EnsState> store);
}

class NotificationRepository extends INotificationRepository {
  final ferry.Client ferryClient;
  final Crashlytics crashlytics;

  NotificationRepository(this.ferryClient, this.crashlytics);

  @override
  Future<RequestResult<void>> saveNotificationToken(String notificationToken) async {
    try {
      final mutation = Gsave_notification_tokenReq(
        (builder) => builder
          ..fetchPolicy = ferry.FetchPolicy.NetworkOnly
          ..vars.notificationToken = notificationToken
          ..vars.os = Platform.isAndroid ? GMobileOsEnum.ANDROID : GMobileOsEnum.IOS,
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data?.saveNotificationToken;
      if (result != null && result.success) {
        return RequestResultSuccess(null);
      }
      return RequestResultError.genericError();
    } catch (e) {
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<void>> deleteNotificationToken(String patientId) async {
    try {
      final mutation = Gdelete_notification_tokenReq(
        (builder) => builder
          ..fetchPolicy = ferry.FetchPolicy.NetworkOnly
          ..vars.patientId = patientId,
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data?.deleteNotificationToken;
      if (result != null && result.success) {
        return RequestResultSuccess(null);
      }
      return RequestResultError.genericError();
    } catch (e) {
      return RequestResultError.genericError();
    }
  }

  @override
  Future<void> configureForegroundNotification(Store<EnsState> store) async {
    const AndroidNotificationChannel channel = AndroidNotificationChannel(
      'high_importance_channel', // id
      'Général', // title
      importance: Importance.max,
    );

    final flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    final androidLocalNotification =
        flutterLocalNotificationsPlugin.resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>();

    if (androidLocalNotification == null) {
      return;
    }
    await androidLocalNotification.requestNotificationsPermission();
    await androidLocalNotification.createNotificationChannel(channel);

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      final notification = message.notification;
      final android = message.notification?.android;

      store.dispatch(RefreshUnreadNotificationCountAction());

      if (notification != null && android != null) {
        final notificationPayload = jsonEncode(message.data);
        flutterLocalNotificationsPlugin.show(
          android.tag.hashCode,
          notification.title,
          notification.body,
          NotificationDetails(
            android: AndroidNotificationDetails(
              channel.id,
              channel.name,
              icon: 'ic_logo_transparent',
              color: EnsColors.secondary,
              colorized: true,
              channelDescription: channel.description,
              tag: android.tag,
            ),
          ),
          payload: notificationPayload,
        );
      }
    });
  }
}
