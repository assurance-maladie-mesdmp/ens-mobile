/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';

class PartagerProfilGestionnaire extends Equatable {
  final String lastName;
  final String firstName;
  final PartagerProfilGestionnaireStatus status;

  const PartagerProfilGestionnaire({required this.lastName, required this.firstName, required this.status});

  @override
  List<Object?> get props => [lastName, firstName, status];
}

enum PartagerProfilGestionnaireStatus {
  EN_ATTENTE,
  VALIDE,
}
