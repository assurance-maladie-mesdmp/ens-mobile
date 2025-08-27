/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:optional/optional.dart';

class EnsProfilRattache extends Equatable {
  final String patientId;
  final String firstName;
  final String lastName;
  final int index;
  final ProfilRattacheType profilRattacheType;
  final String? onboarding;

  const EnsProfilRattache({
    required this.patientId,
    required this.firstName,
    required this.lastName,
    required this.index,
    required this.profilRattacheType,
    this.onboarding,
  });

  EnsProfilRattache clone({
    String? patientId,
    String? firstName,
    String? lastName,
    int? index,
    ProfilRattacheType? profilRattacheType,
    Optional<String>? onboardingOptional,
  }) {
    return EnsProfilRattache(
      patientId: patientId ?? this.patientId,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      index: index ?? this.index,
      profilRattacheType: profilRattacheType ?? this.profilRattacheType,
      onboarding: onboardingOptional != null ? onboardingOptional.orElseNullable(null) : onboarding,
    );
  }

  @override
  List<Object?> get props => [patientId, firstName, lastName, index, profilRattacheType, onboarding];
}

enum ProfilRattacheType {
  AYANT_DROIT,
  AIDE;

  bool get isAide => this == AIDE;

  bool get isAD => this == AYANT_DROIT;

  int compareTo(ProfilRattacheType other) {
    if (isAD && other.isAide) {
      return -1;
    } else if (this == other) {
      return 0;
    } else {
      return 1;
    }
  }
}
