/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_permissions.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_target.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_type.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_value.dart';
import 'package:optional/optional.dart';

class EnsMesure extends Equatable {
  final EnsMesureType type;
  final String label;
  final EnsMesurePermissions permissions;
  final EnsMesureValue? lastValue;
  final EnsMesureTarget? targetedValue;

  const EnsMesure({
    required this.type,
    required this.label,
    required this.permissions,
    this.lastValue,
    this.targetedValue,
  });

  EnsMesure clone({
    EnsMesureType? type,
    String? label,
    EnsMesurePermissions? permissions,
    Optional<EnsMesureValue>? lastValueOptional,
    Optional<EnsMesureTarget>? targetedValueOptional,
  }) {
    return EnsMesure(
      type: type ?? this.type,
      label: label ?? this.label,
      permissions: permissions ?? this.permissions,
      lastValue: lastValueOptional != null ? lastValueOptional.orElseNullable(null) : lastValue,
      targetedValue: targetedValueOptional != null ? targetedValueOptional.orElseNullable(null) : targetedValue,
    );
  }

  @override
  List<Object?> get props => [
        type,
        label,
        lastValue,
        targetedValue,
        permissions,
      ];
}
