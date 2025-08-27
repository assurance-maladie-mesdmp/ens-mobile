/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'preference_notification_redux.dart';

class PreferenceNotificationState extends Equatable {
  final AllPurposesStatus status;
  final List<PreferenceNotification> preferencesNotifications;

  const PreferenceNotificationState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.preferencesNotifications = const [],
  });

  @override
  List<Object?> get props => [status, preferencesNotifications];

  PreferenceNotificationState clone({
    AllPurposesStatus? status,
    List<PreferenceNotification>? preferencesNotifications,
  }) {
    return PreferenceNotificationState(
      status: status ?? this.status,
      preferencesNotifications: preferencesNotifications ?? this.preferencesNotifications,
    );
  }
}
