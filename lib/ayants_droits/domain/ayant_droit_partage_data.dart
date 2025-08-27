/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:ui';

import 'package:equatable/equatable.dart';

class AyantDroitsPartageProfil extends Equatable {
  final String patientId;
  final String firstName;
  final String lastName;
  final String birthDate;
  final Color color;

  const AyantDroitsPartageProfil({
    required this.patientId,
    required this.firstName,
    required this.lastName,
    required this.birthDate,
    required this.color,
  });

  @override
  List<Object?> get props => [patientId, birthDate, firstName, lastName, color];
}
