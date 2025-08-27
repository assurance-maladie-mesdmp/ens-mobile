/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/interruption_services/domain/interruption_de_service_info.dart';
import 'package:fr_cnamts_ens/interruption_services/redux/interruption_selectors.dart';
import 'package:fr_cnamts_ens/notification_center/domain/notification_profile.dart';
import 'package:fr_cnamts_ens/notification_center/domain/notification_profile_details.dart';
import 'package:fr_cnamts_ens/notification_center/redux/notification_center_actions.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profiles_color_helper.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/recommandations/domain/ens_delayed_recommandation.dart';
import 'package:fr_cnamts_ens/recommandations/redux/recommandations_redux.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/user/domain/model/ens_profil.dart';
import 'package:fr_cnamts_ens/user/redux/user_actions.dart';
import 'package:fr_cnamts_ens/user/redux/user_selectors.dart';
import 'package:intl/intl.dart';
import 'package:redux/redux.dart';

class NotificationsCenterViewModel extends Equatable {
  final List<NotificationProfileDisplayModel> profiles;
  final int selectedTab;
  final bool shouldShowProfileList;
  final bool error;
  final void Function() retry;
  final void Function(String) markAllAsRead;
  final void Function(String) markDeletedDocsAsRead;
  final String currentProfileIdDisplay;
  final RecommandationDiffereeDisplayModel? recommandationDiffereeDisplayModel;
  final void Function(RecommandationDiffereeCode code) dismissRecommandationDifferee;
  final NotificationDetails? notificationSelectedBeforeProfilChange;
  final String? Function(NotificationDetails) getInterruptionSnackbarMessage;
  final void Function({
    required NotificationDetails notification,
    required String profileId,
  }) toggleReadingNotification;
  final void Function({
    required String notificationId,
    required String profileId,
  }) deleteNotification;
  final void Function(EnsProfil ensProfile) changeProfileAction;
  final void Function({
    required NotificationProfileDisplayModel profile,
    required NotificationDetails notification,
    required void Function() redirect,
  }) goTo;

  const NotificationsCenterViewModel._({
    required this.profiles,
    required this.shouldShowProfileList,
    required this.selectedTab,
    required this.error,
    required this.retry,
    required this.markAllAsRead,
    required this.markDeletedDocsAsRead,
    required this.currentProfileIdDisplay,
    required this.recommandationDiffereeDisplayModel,
    required this.notificationSelectedBeforeProfilChange,
    required this.dismissRecommandationDifferee,
    required this.getInterruptionSnackbarMessage,
    required this.toggleReadingNotification,
    required this.deleteNotification,
    required this.changeProfileAction,
    required this.goTo,
  });

  factory NotificationsCenterViewModel(Store<EnsState> store) {
    final notificationCenterState = store.state.notificationCenterState;
    final profilesState = notificationCenterState.profiles;
    final notificationState = store.state.notificationState;
    final currentUserId = UserSelectors.getPatientId(store.state);
    RecommandationDiffereeDisplayModel? recommandationDiffereeDisplayModel;

    final currentNotifInState = notificationCenterState.currentNotification;

    NotificationDetails? currentNotification;

    if (currentNotifInState != null && profilesState.status.isSuccess()) {
      currentNotification = profilesState.profiles
          .firstWhereOrNull((element) => element.patientId == currentNotifInState.profileId)
          ?.notifications
          .firstWhereOrNull((element) => element.id == currentNotifInState.notificationId);
    }

    String? getInterruptionServiceSnackbarMessage(NotificationDetails notification) {
      final domaine = DomaineInterruption.getDomaineFromNotification(notification);
      if (domaine != null) {
        return InterruptionSelectors.getCurrentInterruptionInfos(
          state: store.state,
          domaine: domaine,
        )?.messageSnackbar;
      }
      return null;
    }

    if (profilesState.status.isSuccess()) {
      final recommandationDifferee = store.state.recommandationsState.recommandationDifferee;

      if (recommandationDifferee?.recommandationCode == RecommandationDiffereeCode.INCITER_ACTIVER_PROFILS_ENFANTS) {
        final profilsEnfants = recommandationDifferee!.listeEnfants;
        if (profilsEnfants != null && profilsEnfants.isNotEmpty) {
          final firstProfil = profilsEnfants.first;
          final autreProfilText = profilsEnfants.length > 1
              ? '+ ${profilsEnfants.length - 1} ${Intl.plural(
                  profilsEnfants.length - 1,
                  one: 'autre profil',
                  other: 'autres profils',
                )}'
              : null;
          final actionButtonText = Intl.plural(
            profilsEnfants.length,
            one: 'Activer le profil',
            other: 'Activer les profils',
          );

          recommandationDiffereeDisplayModel = RecommandationActiverProfilsEnfants(
            autreProfilText: autreProfilText,
            actionButtonText: actionButtonText,
            nomPremierProfilText: '${firstProfil.firstName} ${firstProfil.lastName}',
          );
        }
      } else if (recommandationDifferee?.recommandationCode ==
          RecommandationDiffereeCode.INCITER_DECOUVRIR_PROFILS_ENFANTS) {
        recommandationDiffereeDisplayModel = RecommandationDecouvrirProfilsEnfants();
      }

      return NotificationsCenterViewModel._(
        profiles: profilesState.profiles.mapIndexed(
          (index, profile) {
            final profilType = ProfilsUtils.getNotificationProfilType(profile, store);

            final isMainProfileWithIncitation =
                profilType.isProfilPrincipal && recommandationDiffereeDisplayModel != null;
            final unreadCount = isMainProfileWithIncitation ? profile.unreadCount + 1 : profile.unreadCount;

            return NotificationProfileDisplayModel(
              id: profile.patientId,
              color: _getColor(profile, index),
              firstName: profile.mainFirstName,
              lastName: profile.lastName,
              unreadCount: unreadCount,
              profilType: profilType,
              notifications: profile.notifications,
              isMainProfileWithIncitation: isMainProfileWithIncitation,
            );
          },
        ).toList(),
        shouldShowProfileList: profilesState.profiles.length > 1,
        selectedTab: profilesState.profiles.isNotEmpty && notificationState.isSuccessWithData
            ? profilesState.profiles.indexWhere((profile) => profile.patientId == notificationState.decryptedPatientId)
            : profilesState.profiles.isNotEmpty
                ? profilesState.profiles.indexWhere((profile) => profile.patientId == currentUserId)
                : 0,
        error: false,
        retry: () {
          store.dispatch(FetchNotificationsAction());
        },
        markAllAsRead: (String id) {
          store.dispatch(MarkAllNotificationsAsReadAction(id));
        },
        markDeletedDocsAsRead: (String patientId) {
          store.dispatch(ReadAllDeletedDocsNotificationsAction(patientId));
        },
        currentProfileIdDisplay: currentUserId,
        recommandationDiffereeDisplayModel: recommandationDiffereeDisplayModel,
        dismissRecommandationDifferee: (RecommandationDiffereeCode code) {
          store.dispatch(DismissRecommandationDiffereeAction(code));
        },
        notificationSelectedBeforeProfilChange: currentNotification,
        getInterruptionSnackbarMessage: getInterruptionServiceSnackbarMessage,
        toggleReadingNotification: ({required notification, required profileId}) {
          _toggleReadingNotification(store, notification, profileId);
        },
        deleteNotification: ({required notificationId, required profileId}) {
          _deleteNotification(store, notificationId, profileId);
        },
        changeProfileAction: (ensProfile) => _changeProfileAction(store, ensProfile),
        goTo: ({required profile, required notification, required redirect}) {
          _goTo(
            store,
            profile: profile,
            notification: notification,
            redirect: redirect,
            currentProfileIdDisplay: currentUserId,
          );
        },
      );
    }
    return NotificationsCenterViewModel._(
      profiles: const [],
      shouldShowProfileList: false,
      selectedTab: 0,
      error: profilesState.status.isError(),
      retry: () => store.dispatch(FetchNotificationsAction()),
      markAllAsRead: (id) => store.dispatch(MarkAllNotificationsAsReadAction(id)),
      markDeletedDocsAsRead: (patientId) => store.dispatch(ReadAllDeletedDocsNotificationsAction(patientId)),
      currentProfileIdDisplay: currentUserId,
      recommandationDiffereeDisplayModel: null,
      dismissRecommandationDifferee: (code) => store.dispatch(DismissRecommandationDiffereeAction(code)),
      notificationSelectedBeforeProfilChange: currentNotification,
      getInterruptionSnackbarMessage: getInterruptionServiceSnackbarMessage,
      toggleReadingNotification: ({required notification, required profileId}) {
        _toggleReadingNotification(store, notification, profileId);
      },
      deleteNotification: ({required notificationId, required profileId}) {
        _deleteNotification(store, notificationId, profileId);
      },
      changeProfileAction: (ensProfile) => _changeProfileAction(store, ensProfile),
      goTo: ({required profile, required notification, required redirect}) {
        _goTo(
          store,
          profile: profile,
          notification: notification,
          redirect: redirect,
          currentProfileIdDisplay: currentUserId,
        );
      },
    );
  }

  static Color _getColor(NotificationProfile profile, int index) {
    return profile.isMainProfile ? EnsColors.primary : ProfilesColorHelper.getIconColor(index - 1);
  }

  static void _readNotification(
    Store<EnsState> store,
    NotificationDetails notification,
    String profileId,
    bool isFromBottomSheetAction,
  ) {
    if (!notification.isRead) {
      _handleNotificationAction(
        store,
        notification,
        profileId,
        isFromBottomSheetAction: false,
        markAsRead: true,
      );
    }
  }

  static void _toggleReadingNotification(
    Store<EnsState> store,
    NotificationDetails notification,
    String profileId,
  ) {
    _handleNotificationAction(
      store,
      notification,
      profileId,
      isFromBottomSheetAction: true,
      markAsRead: !notification.isRead,
    );
  }

  static void _handleNotificationAction(
    Store<EnsState> store,
    NotificationDetails notification,
    String profileId, {
    required bool isFromBottomSheetAction,
    required bool markAsRead,
  }) {
    store.dispatch(
      markAsRead
          ? ReadNotificationAction(
              notificationId: notification.id,
              patientId: profileId,
              isFromBottomSheetAction: isFromBottomSheetAction,
            )
          : UnreadNotificationAction(
              notificationId: notification.id,
              patientId: profileId,
            ),
    );
  }

  static void _deleteNotification(
    Store<EnsState> store,
    String notificationId,
    String profileId,
  ) {
    store.dispatch(
      DeleteNotificationAction(
        notificationId: notificationId,
        patientId: profileId,
      ),
    );
  }

  static void _changeProfileAction(Store<EnsState> store, EnsProfil ensProfile) {
    store.dispatch(ChangeProfileAction(ensProfile));
  }

  static void _goTo(
    Store<EnsState> store, {
    required NotificationProfileDisplayModel profile,
    required NotificationDetails notification,
    required Function() redirect,
    required String currentProfileIdDisplay,
  }) {
    if (profile.id == currentProfileIdDisplay) {
      _readNotification(store, notification, profile.id, false);
      redirect.call();
    } else {
      final ensProfile = EnsProfil(
        patientId: profile.id,
        nom: profile.lastName,
        prenom: profile.firstName,
        couleur: profile.color,
      );
      _changeProfileAction(store, ensProfile);
      store.dispatch(SetCurrentNotificationAction(profile.id, notification.id));
    }
  }

  @override
  List<Object?> get props => [
        profiles,
        shouldShowProfileList,
        selectedTab,
        error,
        currentProfileIdDisplay,
        recommandationDiffereeDisplayModel,
        notificationSelectedBeforeProfilChange,
        getInterruptionSnackbarMessage,
      ];
}

class NotificationProfileDisplayModel extends Equatable {
  final String id;
  final Color color;
  final String firstName;
  final String lastName;
  final int unreadCount;
  final ProfilType profilType;
  final List<NotificationDetails> notifications;
  final bool isMainProfileWithIncitation;

  const NotificationProfileDisplayModel({
    required this.id,
    required this.color,
    required this.firstName,
    required this.lastName,
    required this.unreadCount,
    required this.profilType,
    required this.notifications,
    required this.isMainProfileWithIncitation,
  });

  bool get shouldDisplayEmptyState => notifications.isEmpty && !isMainProfileWithIncitation;

  @override
  List<Object?> get props => [
        id,
        color,
        firstName,
        lastName,
        unreadCount,
        profilType,
        notifications,
        isMainProfileWithIncitation,
      ];
}

sealed class RecommandationDiffereeDisplayModel extends Equatable {}

class RecommandationActiverProfilsEnfants extends RecommandationDiffereeDisplayModel {
  final String nomPremierProfilText;
  final String actionButtonText;
  final String? autreProfilText;

  RecommandationActiverProfilsEnfants({
    required this.nomPremierProfilText,
    required this.actionButtonText,
    required this.autreProfilText,
  });

  @override
  List<Object?> get props => [nomPremierProfilText, actionButtonText, autreProfilText];
}

class RecommandationDecouvrirProfilsEnfants extends RecommandationDiffereeDisplayModel {
  @override
  List<Object?> get props => [];
}
