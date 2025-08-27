/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/notification_center/domain/notification_profile_details.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';

class NotificationProfile extends Equatable {
  final String patientId;
  final String firstName;
  final String lastName;
  final bool isMainProfile;
  final int unreadCount;
  final List<NotificationDetails> notifications;

  const NotificationProfile({
    required this.patientId,
    required this.firstName,
    required this.lastName,
    required this.isMainProfile,
    required this.unreadCount,
    required this.notifications,
  });

  NotificationProfile clone({
    String? patientId,
    String? firstName,
    String? lastName,
    bool? isMainProfile,
    int? unreadCount,
    List<NotificationDetails>? notifications,
  }) {
    return NotificationProfile(
      patientId: patientId ?? this.patientId,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      isMainProfile: isMainProfile ?? this.isMainProfile,
      unreadCount: unreadCount ?? this.unreadCount,
      notifications: notifications ?? this.notifications,
    );
  }

  String get mainFirstName => firstName.capitalizeName().split(' ')[0];

  @override
  List<Object?> get props => [patientId, firstName, lastName, isMainProfile, unreadCount, notifications];
}
