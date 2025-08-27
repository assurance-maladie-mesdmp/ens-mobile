/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';

class ProfileActivationResult extends Equatable {
  final double index;
  final String patientId;
  final String lastName;
  final String firstName;

  const ProfileActivationResult({
    required this.index,
    required this.patientId,
    required this.lastName,
    required this.firstName,
  });

  @override
  List<Object?> get props => [index, patientId, firstName, lastName];
}
