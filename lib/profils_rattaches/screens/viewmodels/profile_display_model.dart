/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:ui';

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';

class ProfileDisplayModel extends Equatable {
  final String patientId;
  final String firstName;
  final String lastName;
  final String fullName;
  final Color color;
  final ProfilType profilType;

  const ProfileDisplayModel({
    required this.patientId,
    required this.firstName,
    required this.lastName,
    required this.fullName,
    required this.color,
    required this.profilType,
  });

  @override
  List<Object?> get props => [patientId, firstName, lastName, fullName, color, profilType];
}
