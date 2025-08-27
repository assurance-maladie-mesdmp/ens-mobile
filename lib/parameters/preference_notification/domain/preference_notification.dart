/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';

class PreferenceNotification extends Equatable {
  final TypePreferenceNotification typePreferenceNotification;
  final bool isActive;
  final bool isLoading;

  const PreferenceNotification({
    required this.typePreferenceNotification,
    required this.isActive,
    this.isLoading = false,
  });

  PreferenceNotification clone({
    TypePreferenceNotification? typePreferenceNotification,
    bool? isActive,
    bool? isLoading,
  }) {
    return PreferenceNotification(
      typePreferenceNotification: typePreferenceNotification ?? this.typePreferenceNotification,
      isActive: isActive ?? this.isActive,
      isLoading: isLoading ?? this.isLoading,
    );
  }

  @override
  List<Object?> get props => [typePreferenceNotification, isActive, isLoading];
}

enum TypePreferenceNotification {
  NOTIF_MESSAGE,
  NOTIF_DOCUMENT,
  NOTIF_APPOINTMENT,
  NOTIF_DEPISTAGE,
  NOTIF_SYNCHRONIZED_SERVICE,
}
