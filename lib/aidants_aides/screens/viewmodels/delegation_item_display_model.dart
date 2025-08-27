/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';

sealed class DelegationItemDisplayModel extends Equatable {
  final String fullName;
  final String birthDate;

  const DelegationItemDisplayModel({
    required this.birthDate,
    required this.fullName,
  });
}

class DelegationEnCoursDisplayModel extends DelegationItemDisplayModel {
  final String id;
  final String patientId;
  final String startDate;
  final String endDate;
  final String firstName;
  final DeletionStatus deletionStatus;

  const DelegationEnCoursDisplayModel({
    required super.fullName,
    required super.birthDate,
    required this.id,
    required this.patientId,
    required this.endDate,
    required this.startDate,
    required this.firstName,
    required this.deletionStatus,
  });

  @override
  List<Object?> get props => [id, patientId, fullName, endDate, birthDate, startDate, firstName, deletionStatus];
}

class DelegationEnAttenteDisplayModel extends DelegationItemDisplayModel {
  final String expirationDate;

  const DelegationEnAttenteDisplayModel({
    required super.fullName,
    required super.birthDate,
    required this.expirationDate,
  });

  @override
  List<Object?> get props => [fullName, expirationDate, birthDate];
}

enum DeletionStatus { LOADING, DISABLED, ENABLED }
