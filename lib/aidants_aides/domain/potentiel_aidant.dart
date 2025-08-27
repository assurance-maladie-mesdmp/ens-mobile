/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';

class PotentielAidant extends Equatable {
  final String patientId;
  final String firstName;
  final String lastName;
  final DateTime birthDate;
  final String transactionId;
  final String numeroSecu;

  const PotentielAidant({
    required this.patientId,
    required this.firstName,
    required this.lastName,
    required this.birthDate,
    required this.transactionId,
    required this.numeroSecu,
  });

  String get fullName => '${firstName.split(' ').first.capitalizeName()} ${lastName.capitalizeName()}';

  @override
  List<Object?> get props => [patientId, firstName, lastName, birthDate, transactionId, numeroSecu];
}
