/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';
import 'package:optional/optional_internal.dart';

class UserData extends Equatable {
  final String lastName;
  final String firstName;
  final DateTime birthDate;
  final Genre? genre;
  final String? mail;
  final String? phoneNumber;
  final String ins;
  final String? inseeCode;
  final DateTime? cguAcceptedAt;
  final DateTime? cguLastPublicationAt;
  final bool isOnboardingDone;
  final bool isProfilInactif;

  const UserData({
    required this.lastName,
    required this.firstName,
    required this.birthDate,
    this.genre,
    this.mail,
    this.phoneNumber,
    required this.ins,
    this.inseeCode,
    this.cguAcceptedAt,
    this.cguLastPublicationAt,
    required this.isOnboardingDone,
    this.isProfilInactif = false,
  });

  String get mainFirstName => firstName.capitalizeName().split(' ').first;

  UserData clone({
    String? mail,
    String? phoneNumber,
    Optional<DateTime>? cguAcceptedAtOptional,
  }) {
    return UserData(
      lastName: lastName,
      firstName: firstName,
      birthDate: birthDate,
      genre: genre,
      mail: mail ?? this.mail,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      ins: ins,
      inseeCode: inseeCode,
      cguAcceptedAt: cguAcceptedAtOptional != null ? cguAcceptedAtOptional.orElseNullable(null) : cguAcceptedAt,
      cguLastPublicationAt: cguLastPublicationAt,
      isOnboardingDone: isOnboardingDone,
    );
  }

  @override
  List<Object?> get props => [
        lastName,
        firstName,
        birthDate,
        genre,
        mail,
        phoneNumber,
        ins,
        inseeCode,
        cguAcceptedAt,
        cguLastPublicationAt,
        isOnboardingDone,
        isProfilInactif,
      ];
}

enum Genre {
  HOMME('Homme'),
  FEMME('Femme');

  const Genre(this.label);

  final String label;

  String getQuestionnaireEquivalence() {
    return switch (this) {
      HOMME => 'MAN',
      FEMME => 'WOMAN',
    };
  }
}
