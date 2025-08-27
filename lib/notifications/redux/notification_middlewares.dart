/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:fr_cnamts_ens/dechiffrement/data/dechiffrement_repository.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/notifications/data/notification_repository.dart';
import 'package:fr_cnamts_ens/notifications/redux/firebase_messaging_wrapper.dart';
import 'package:fr_cnamts_ens/notifications/redux/notification_actions.dart';
import 'package:logger/logger.dart';
import 'package:redux/redux.dart';

class NotificationMiddlewares {
  final IFirebaseMessagingWrapper firebaseMessaging;
  final INotificationRepository notificationRepository;
  final IDechiffrementRepository dechiffrementRepository;
  bool _needSetup = true;

  final Logger _log = Logger(
    printer: PrettyPrinter(
      methodCount: 0,
    ),
  );

  NotificationMiddlewares._({
    required this.firebaseMessaging,
    required this.dechiffrementRepository,
    required this.notificationRepository,
  });

  static List<Middleware<EnsState>> create(
    INotificationRepository notificationRepository,
    IDechiffrementRepository dechiffrementRepository,
    IFirebaseMessagingWrapper firebaseMessagingwrapper,
  ) {
    final middlewares = NotificationMiddlewares._(
      dechiffrementRepository: dechiffrementRepository,
      firebaseMessaging: firebaseMessagingwrapper,
      notificationRepository: notificationRepository,
    );

    return [
      TypedMiddleware<EnsState, InitPushNotificationAction>(middlewares._onInitPushNotificationAction).call,
      TypedMiddleware<EnsState, SetupNotificationAction>(middlewares._onSetupNotificationAction).call,
      TypedMiddleware<EnsState, DecryptAction>(middlewares._onDecryptAction).call,
      TypedMiddleware<EnsState, SaveNotificationTokenAction>(middlewares._onSaveNotificationTokenAction).call,
      TypedMiddleware<EnsState, DeleteNotificationBackTokenAction>(middlewares._onDeleteNotificationBackTokenAction)
          .call,
    ];
  }

  Future<void> _onInitPushNotificationAction(
    Store<EnsState> store,
    InitPushNotificationAction action,
    NextDispatcher next,
  ) async {
    next(action);
    store.dispatch(SetupNotificationAction());
  }

  Future<void> _onSetupNotificationAction(
    Store<EnsState> store,
    SetupNotificationAction action,
    NextDispatcher next,
  ) async {
    next(action);
    if (_needSetup) {
      _needSetup = false;
      final notificationSettings = await firebaseMessaging.requestPermission();
      final patientId = store.state.userState.connectedUserPatientId;
      if (notificationSettings.authorizationStatus == AuthorizationStatus.authorized) {
        _getFcmToken(store);
        await notificationRepository.configureForegroundNotification(store);
      } else {
        store.dispatch(DeleteNotificationBackTokenAction(patientId));
      }
    }
  }

  Future<void> _onDecryptAction(
    Store<EnsState> store,
    DecryptAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final result = await dechiffrementRepository.decrypt(action.encryptedPatientId);
    result.onSuccess((successResult) {
      store.dispatch(ProcessDecryptedAction(successResult));
    }).onError((_) {
      store.dispatch(ProcessDecryptedAction(store.state.userState.connectedUserPatientId));
    });
  }

  Future<void> _onSaveNotificationTokenAction(
    Store<EnsState> store,
    SaveNotificationTokenAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final fcmToken = action.fcmToken;
    _log.i('Token FCM :\n${action.fcmToken}');
    if (fcmToken != null) {
      await notificationRepository.saveNotificationToken(fcmToken);
    }
  }

  Future<void> _onDeleteNotificationBackTokenAction(
    Store<EnsState> store,
    DeleteNotificationBackTokenAction action,
    NextDispatcher next,
  ) async {
    next(action);
    await notificationRepository.deleteNotificationToken(action.patientId);
  }

  Future<void> _getFcmToken(Store<EnsState> store) async {
    firebaseMessaging.onTokenRefreshExecute((fcmToken) => store.dispatch(SaveNotificationTokenAction(fcmToken)));
    store.dispatch(SaveNotificationTokenAction(await firebaseMessaging.getToken()));
  }
}
