/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:ui';

import 'package:clock/clock.dart';
import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/user/domain/model/user_data.dart';
import 'package:optional/optional.dart';

class EnsProfil extends Equatable {
  final String patientId;
  final String nom;
  final String prenom;
  final Color couleur;
  final DateTime? dateNaissance;
  final Genre? sexe;
  final String? ins;
  final String? codeInsee;
  final bool? isOnboardingTermine;

  const EnsProfil({
    required this.patientId,
    required this.nom,
    required this.prenom,
    required this.couleur,
    this.dateNaissance,
    this.sexe,
    this.ins,
    this.codeInsee,
    this.isOnboardingTermine,
  });

  String get age {
    if (dateNaissance == null) {
      return '';
    }
    final DateTime currentDate = clock.now();
    int age = currentDate.year - dateNaissance!.year;
    if (dateNaissance!.month > currentDate.month) {
      age--;
    } else if (dateNaissance!.month == currentDate.month) {
      if (dateNaissance!.day > currentDate.day) {
        age--;
      }
    }
    return age.toString();
  }

  EnsProfil clone({
    String? patientId,
    String? lastName,
    String? firstName,
    Color? color,
    Optional<DateTime>? birthDateOptional,
    Optional<Genre>? sexOptional,
    Optional<String>? insOptional,
    Optional<String>? inseeCodeOptional,
    Optional<bool>? isOnboardingDoneOptional,
  }) =>
      EnsProfil(
        patientId: patientId ?? this.patientId,
        nom: lastName ?? nom,
        prenom: firstName ?? prenom,
        couleur: color ?? couleur,
        dateNaissance: birthDateOptional != null ? birthDateOptional.orElseNullable(null) : dateNaissance,
        sexe: sexOptional != null ? sexOptional.orElseNullable(null) : sexe,
        ins: insOptional != null ? insOptional.orElseNullable(null) : ins,
        codeInsee: inseeCodeOptional != null ? inseeCodeOptional.orElseNullable(null) : codeInsee,
        isOnboardingTermine:
            isOnboardingDoneOptional != null ? isOnboardingDoneOptional.orElseNullable(null) : isOnboardingTermine,
      );

  @override
  List<Object?> get props => [
        patientId,
        nom,
        prenom,
        couleur,
        dateNaissance,
        sexe,
        ins,
        codeInsee,
        isOnboardingTermine,
      ];
}

String getAgeFromBirthDate(DateTime? birthDate) {
  if (birthDate == null) {
    return '';
  }
  final DateTime currentDate = clock.now();
  int age = currentDate.year - birthDate.year;
  if (birthDate.month > currentDate.month) {
    age--;
  } else if (birthDate.month == currentDate.month) {
    if (birthDate.day > currentDate.day) {
      age--;
    }
  }
  return age.toString();
}
