/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';

class AdToAdd extends Equatable {
  final int id;
  final String firstName;
  final String lastName;
  final AdToAddStatus status;
  final bool hasDeleteRequest;

  const AdToAdd({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.status,
    required this.hasDeleteRequest,
  });

  @override
  List<Object?> get props => [
        id,
        firstName,
        lastName,
        status,
        hasDeleteRequest,
      ];
}

enum AdToAddStatus { EN_ATTENTE, OPPOSE, CLOTURE }
