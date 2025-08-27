/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/parameters/preference_notification/domain/preference_notification.dart';
import 'package:fr_cnamts_ens/parameters/preference_notification/redux/preference_notification_redux.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:redux/redux.dart';

class PreferenceNotificationScreenViewModel extends Equatable {
  final String userMail;
  final AllPurposesStatus status;
  final bool isMessagerieChecked;
  final bool isDocumentsChecked;
  final bool isServicesSynchronisesChecked;
  final bool isExamensEtVaccinationsChecked;
  final bool isDepistagesChecked;
  final bool isMessagerieLoading;
  final bool isDocumentsLoading;
  final bool isServicesSynchronisesLoading;
  final bool isExamensEtVaccinationsLoading;
  final bool isDepistagesLoading;
  final void Function(TypePreferenceNotification, bool) setPreferenceNotification;
  final void Function() reload;
  final ProfilType profilType;

  const PreferenceNotificationScreenViewModel._internal({
    required this.userMail,
    required this.status,
    required this.isMessagerieChecked,
    required this.isDocumentsChecked,
    required this.isServicesSynchronisesChecked,
    required this.isExamensEtVaccinationsChecked,
    required this.isDepistagesChecked,
    required this.isMessagerieLoading,
    required this.isDocumentsLoading,
    required this.isServicesSynchronisesLoading,
    required this.isExamensEtVaccinationsLoading,
    required this.isDepistagesLoading,
    required this.setPreferenceNotification,
    required this.reload,
    required this.profilType,
  });

  @override
  List<Object?> get props => [
        userMail,
        status,
        isMessagerieChecked,
        isDocumentsChecked,
        isServicesSynchronisesChecked,
        isExamensEtVaccinationsChecked,
        isDepistagesChecked,
        isMessagerieLoading,
        isDocumentsLoading,
        isServicesSynchronisesLoading,
        isExamensEtVaccinationsLoading,
        isDepistagesLoading,
        profilType,
      ];

  @override
  factory PreferenceNotificationScreenViewModel.from(Store<EnsState> store) {
    final mainUserDataState = store.state.userState.mainUserDataState;
    final email = mainUserDataState.isSuccessWithData ? mainUserDataState.userData!.mail ?? '' : '';

    final preferenceNotificationState = store.state.preferenceNotificationState;
    final status = preferenceNotificationState.status;

    bool isMessagerieChecked = false;
    bool isDocumentsChecked = false;
    bool isServicesSynchronisesChecked = false;
    bool isExamensEtVaccinationsChecked = false;
    bool isDepistagesChecked = false;
    bool isMessagerieLoading = false;
    bool isDocumentsLoading = false;
    bool isServicesSynchronisesLoading = false;
    bool isExamensEtVaccinationsLoading = false;
    bool isDepistagesLoading = false;

    if (status.isLoading()) {
      isMessagerieLoading = true;
      isDocumentsLoading = true;
      isServicesSynchronisesLoading = true;
      isExamensEtVaccinationsLoading = true;
      isDepistagesLoading = true;
    } else if (status.isSuccess()) {
      final preferencesNotifications = preferenceNotificationState.preferencesNotifications;
      isMessagerieChecked = preferencesNotifications.any(
        (preference) =>
            preference.typePreferenceNotification == TypePreferenceNotification.NOTIF_MESSAGE && preference.isActive,
      );
      isDocumentsChecked = preferencesNotifications.any(
        (preference) =>
            preference.typePreferenceNotification == TypePreferenceNotification.NOTIF_DOCUMENT && preference.isActive,
      );
      isServicesSynchronisesChecked = preferencesNotifications.any(
        (preference) =>
            preference.typePreferenceNotification == TypePreferenceNotification.NOTIF_SYNCHRONIZED_SERVICE &&
            preference.isActive,
      );
      isExamensEtVaccinationsChecked = preferencesNotifications.any(
        (preference) =>
            preference.typePreferenceNotification == TypePreferenceNotification.NOTIF_APPOINTMENT &&
            preference.isActive,
      );
      isDepistagesChecked = preferencesNotifications.any(
        (preference) =>
            preference.typePreferenceNotification == TypePreferenceNotification.NOTIF_DEPISTAGE && preference.isActive,
      );
      isMessagerieLoading = preferencesNotifications.any(
        (preference) =>
            preference.typePreferenceNotification == TypePreferenceNotification.NOTIF_MESSAGE && preference.isLoading,
      );
      isDocumentsLoading = preferencesNotifications.any(
        (preference) =>
            preference.typePreferenceNotification == TypePreferenceNotification.NOTIF_DOCUMENT && preference.isLoading,
      );
      isServicesSynchronisesLoading = preferencesNotifications.any(
        (preference) =>
            preference.typePreferenceNotification == TypePreferenceNotification.NOTIF_SYNCHRONIZED_SERVICE &&
            preference.isLoading,
      );
      isExamensEtVaccinationsLoading = preferencesNotifications.any(
        (preference) =>
            preference.typePreferenceNotification == TypePreferenceNotification.NOTIF_APPOINTMENT &&
            preference.isLoading,
      );
      isDepistagesLoading = preferencesNotifications.any(
        (preference) =>
            preference.typePreferenceNotification == TypePreferenceNotification.NOTIF_DEPISTAGE && preference.isLoading,
      );
    }

    return PreferenceNotificationScreenViewModel._internal(
      userMail: email,
      status: status,
      isMessagerieChecked: isMessagerieChecked,
      isDocumentsChecked: isDocumentsChecked,
      isServicesSynchronisesChecked: isServicesSynchronisesChecked,
      isExamensEtVaccinationsChecked: isExamensEtVaccinationsChecked,
      isDepistagesChecked: isDepistagesChecked,
      isMessagerieLoading: isMessagerieLoading,
      isDocumentsLoading: isDocumentsLoading,
      isServicesSynchronisesLoading: isServicesSynchronisesLoading,
      isExamensEtVaccinationsLoading: isExamensEtVaccinationsLoading,
      isDepistagesLoading: isDepistagesLoading,
      setPreferenceNotification: (typeNotification, isActive) => store.dispatch(
        SetPreferenceNotificationAction(
          PreferenceNotification(
            typePreferenceNotification: typeNotification,
            isActive: isActive,
            isLoading: true,
          ),
        ),
      ),
      reload: () => store.dispatch(FetchPreferenceNotificationAction()),
      profilType: ProfilsUtils.getCurrentProfilType(store.state),
    );
  }
}
