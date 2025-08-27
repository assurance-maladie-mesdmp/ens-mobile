/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:optional/optional_internal.dart';

class UserIdentite extends Equatable {
  final DateTime? birthDate;
  final String? numeroSecu;
  final String? numeroSerieCarteVitale;
  final bool isAd;
  final bool isInfosCarteVitaleFromScan;
  final String? firstName;
  final String? lastName;

  const UserIdentite({
    this.birthDate,
    this.numeroSecu,
    this.numeroSerieCarteVitale,
    this.isAd = false,
    this.isInfosCarteVitaleFromScan = false,
    this.firstName,
    this.lastName,
  });

  UserIdentite clone({
    Optional<DateTime>? birthDateOptional,
    Optional<String>? numeroSecuOptional,
    Optional<String>? numeroSerieCarteVitaleOptional,
    bool? isAd,
    bool? isInfosCarteVitaleFromScan,
    Optional<String>? firstNameOptional,
    Optional<String>? lastNameOptional,
  }) {
    return UserIdentite(
      birthDate: birthDateOptional != null ? birthDateOptional.orElseNullable(null) : birthDate,
      numeroSecu: numeroSecuOptional != null ? numeroSecuOptional.orElseNullable(null) : numeroSecu,
      numeroSerieCarteVitale: numeroSerieCarteVitaleOptional != null
          ? numeroSerieCarteVitaleOptional.orElseNullable(null)
          : numeroSerieCarteVitale,
      isAd: isAd ?? this.isAd,
      isInfosCarteVitaleFromScan: isInfosCarteVitaleFromScan ?? this.isInfosCarteVitaleFromScan,
      firstName: firstNameOptional != null ? firstNameOptional.orElseNullable(null) : firstName,
      lastName: lastNameOptional != null ? lastNameOptional.orElseNullable(null) : lastName,
    );
  }

  @override
  List<Object?> get props => [
        birthDate,
        numeroSecu,
        numeroSerieCarteVitale,
        isAd,
        isInfosCarteVitaleFromScan,
        firstName,
        lastName,
      ];
}
