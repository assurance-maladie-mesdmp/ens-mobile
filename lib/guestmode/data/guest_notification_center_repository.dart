/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/auth/infra/openid_wrapper.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/notification_center/data/notification_center_repository.dart';
import 'package:fr_cnamts_ens/notification_center/domain/notification_profile.dart';
import 'package:fr_cnamts_ens/notification_center/domain/notification_profile_details.dart';

class GuestNotificationCenterRepository extends INotificationCenterRepository {
  final OpenidWrapper openidWrapper;
  late List<NotificationProfile> notificationsByProfile;

  GuestNotificationCenterRepository(this.openidWrapper) {
    notificationsByProfile = [
      NotificationProfile(
        patientId: openidWrapper.extractCurrentUserFromToken()?.idNat ?? '0',
        firstName: 'Gabrielle',
        lastName: 'Capanelli',
        isMainProfile: true,
        unreadCount: 2,
        notifications: const [
          NotificationDetails(
            id: 'id01',
            label: '<b>Une mesure d\'hémoglobine glyquée</b> a été ajoutée à votre profil médical',
            elapseTime: '24 min',
            type: NotificationType.AJOUT_HBA1C,
            resourceId: '0',
            isRead: false,
            authorName: null,
            redirectionLabel: 'voir la mesure',
            urn: URN(NamespaceIdentifier.MESURE, null),
          ),
          NotificationDetails(
            id: 'id02',
            label: '<b>Une mesure de taille</b> a été ajoutée à votre profil médical',
            elapseTime: '24 min',
            type: NotificationType.AJOUT_TAILLE,
            resourceId: '0',
            isRead: false,
            authorName: 'dr nana',
            redirectionLabel: 'voir la mesure',
            urn: URN(NamespaceIdentifier.MESURE, null),
          ),
          NotificationDetails(
            id: 'id03',
            label: 'Souhaitez-vous modifier <b>les autorisations accordées à vos services ?</b>',
            elapseTime: '24 min',
            type: NotificationType.REPONSE_SUPPORT,
            resourceId: null,
            isRead: true,
            authorName: 'dr nana',
            redirectionLabel: null,
            urn: null,
          ),
          NotificationDetails(
            id: 'id07',
            label: 'a supprimé le document <b>\"Certificat d\'arrêt de travail\"</b>',
            elapseTime: '4 min',
            type: NotificationType.DOCUMENT,
            resourceId: '0',
            isRead: false,
            authorName: 'Dr Alain Diprochain',
            redirectionLabel: null,
            urn: URN(NamespaceIdentifier.DOCUMENT, '0'),
          ),
          NotificationDetails(
            id: 'id08',
            label: 'a supprimé le document \"Certificat d\'arrêt de travail\"',
            elapseTime: '12 min',
            type: NotificationType.DOCUMENT,
            resourceId: '0',
            isRead: false,
            authorName: 'Dr Marie Chanteau',
            redirectionLabel: null,
            urn: URN(NamespaceIdentifier.DOCUMENT, '0'),
          ),
          NotificationDetails(
            id: 'id09',
            label: 'a modifié le document \"Certificat d\'arrêt de travail\"',
            elapseTime: '12 min',
            type: NotificationType.DOCUMENT,
            resourceId: '0',
            isRead: false,
            authorName: 'Dr Marie Chanteau',
            redirectionLabel: 'Voir le document',
            urn: URN(NamespaceIdentifier.DOCUMENT, '0'),
          ),
          NotificationDetails(
            id: 'id10',
            label: 'a mis à jour la rubrique Vaccinations',
            elapseTime: '1h',
            type: NotificationType.AJOUT_VACCINATION,
            resourceId: '0',
            isRead: false,
            authorName: 'Dr Nguyen',
            redirectionLabel: 'Voir la rubrique',
            urn: URN(NamespaceIdentifier.VACCINATION, null),
          ),
          NotificationDetails(
            id: 'id11',
            label: 'vous a ajouté le document \"Certificat d\'arrêt de travail\"',
            elapseTime: '12 min',
            type: NotificationType.DOCUMENT,
            resourceId: '0',
            isRead: true,
            authorName: 'Dr Marie Chanteau',
            redirectionLabel: 'Voir le document',
            urn: URN(NamespaceIdentifier.DOCUMENT, '0'),
          ),
          NotificationDetails(
            id: 'id12',
            label: 'Préparation de votre rendez-vous',
            elapseTime: '1h',
            type: NotificationType.MESSAGE,
            resourceId: '0',
            isRead: true,
            authorName: 'Christelle Thomas',
            redirectionLabel: 'Voir le rendez-vous',
            urn: URN(NamespaceIdentifier.RDV, '0'),
          ),
          NotificationDetails(
            id: 'id13',
            label: 'vous a ajouté le document \"Certificat d\'arrêt de travail\"',
            elapseTime: '12 min',
            type: NotificationType.DOCUMENT,
            resourceId: '0',
            isRead: false,
            authorName: 'Dr Marie Chanteau',
            redirectionLabel: 'Voir le document',
            urn: URN(NamespaceIdentifier.DOCUMENT, '0'),
          ),
        ],
      ),
      const NotificationProfile(
        patientId: 'patientId01',
        firstName: 'Alice',
        lastName: 'Capanelli',
        isMainProfile: false,
        unreadCount: 1,
        notifications: [
          NotificationDetails(
            id: 'id14',
            label: 'Préparation de votre rendez-vous',
            elapseTime: '2h',
            type: NotificationType.MESSAGE,
            resourceId: '0',
            isRead: false,
            authorName: 'Christelle Thomas',
            redirectionLabel: 'Voir le rendez-vous',
            urn: null,
          ),
        ],
      ),
      const NotificationProfile(
        patientId: 'patientId02',
        firstName: 'Lucas ',
        lastName: 'Capanelli',
        isMainProfile: false,
        unreadCount: 0,
        notifications: [],
      ),
      const NotificationProfile(
        patientId: 'patientId03',
        firstName: 'Julia',
        lastName: 'Capanelli',
        isMainProfile: false,
        unreadCount: 1,
        notifications: [
          NotificationDetails(
            id: 'id15',
            label: 'vous a ajouté le document \"Certificat d\'arrêt de travail\"',
            elapseTime: '12 min',
            type: NotificationType.DOCUMENT,
            resourceId: '0',
            isRead: true,
            authorName: 'Dr Marie Chanteau',
            redirectionLabel: 'Voir le document',
            urn: null,
          ),
          NotificationDetails(
            id: 'id15',
            label: 'Préparation de votre rendez-vous',
            elapseTime: '2h',
            type: NotificationType.MESSAGE,
            resourceId: '0',
            isRead: false,
            authorName: 'Christelle Thomas',
            redirectionLabel: 'Voir le rendez-vous',
            urn: null,
          ),
        ],
      ),
      const NotificationProfile(
        patientId: 'patientId04',
        firstName: 'Pablo',
        lastName: 'Capanelli',
        isMainProfile: false,
        unreadCount: 0,
        notifications: [],
      ),
    ];
  }

  @override
  Future<int> getUnreadCount() async {
    await Future.delayed(const Duration(seconds: 1));
    return 10;
  }

  @override
  Future<RequestResult<List<NotificationProfile>>> loadNotificationsCenter() async {
    await Future.delayed(const Duration(seconds: 1));
    return RequestResultSuccess(notificationsByProfile);
  }

  @override
  Future<RequestResult<void>> markNotificationAsRead(String notificationId, String patientId) async {
    final newNotifications = notificationsByProfile
        .map(
          (profile) => profile.clone(
            unreadCount: profile.notifications
                    .map(
                      (notification) => notification.id,
                    )
                    .contains(notificationId)
                ? profile.unreadCount - 1
                : profile.unreadCount,
            notifications: profile.notifications
                .map(
                  (notification) => notification.id == notificationId ? notification.clone(isRead: true) : notification,
                )
                .toList(),
          ),
        )
        .toList();
    notificationsByProfile = newNotifications;
    return RequestResultSuccess(null);
  }

  @override
  Future<RequestResult<void>> markAllNotificationsAsRead(
    String patientId,
  ) async {
    final newNotifications = notificationsByProfile
        .map(
          (profile) => profile.clone(
            notifications: profile.notifications
                .map(
                  (notification) => profile.patientId == patientId ? notification.clone(isRead: true) : notification,
                )
                .toList(),
          ),
        )
        .toList();
    notificationsByProfile = newNotifications;
    return RequestResultSuccess(null);
  }

  @override
  Future<RequestResult<void>> markNotificationAsUnread(
    String notificationId,
    String patientId,
  ) async {
    final newNotifications = notificationsByProfile
        .map(
          (profile) => profile.clone(
            unreadCount: profile.notifications
                    .map(
                      (notification) => notification.id,
                    )
                    .contains(notificationId)
                ? profile.unreadCount + 1
                : profile.unreadCount,
            notifications: profile.notifications
                .map(
                  (notification) =>
                      notification.id == notificationId ? notification.clone(isRead: false) : notification,
                )
                .toList(),
          ),
        )
        .toList();
    notificationsByProfile = newNotifications;
    return RequestResultSuccess(null);
  }

  @override
  Future<RequestResult<void>> deleteNotification(
    String notificationId,
    String patientId,
  ) async {
    return RequestResultError.unavailableInGuestMode();
  }
}
