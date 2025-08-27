/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';

class EnsAntecedentFamilial extends Equatable {
  final String id;
  final String name;
  final EnsFamilyRelationship familyRelationship;
  final String? comment;

  const EnsAntecedentFamilial({
    required this.id,
    required this.name,
    required this.familyRelationship,
    this.comment,
  });

  @override
  List<Object?> get props => [id, name, familyRelationship, comment];
}

enum EnsFamilyRelationship {
  MOTHER,
  FATHER,
  GRANDMOTHER,
  GRANDFATHER,
  SISTER,
  BROTHER,
  GREAT_GRANDMOTHER,
  GREAT_GRANDFATHER,
  AUNT,
  UNCLE,
  OTHER,
  UNKNOWN,
}

extension FamilyRelationshipDisplay on EnsFamilyRelationship {
  String get label {
    switch (this) {
      case EnsFamilyRelationship.MOTHER:
        return 'Mère';
      case EnsFamilyRelationship.FATHER:
        return 'Père';
      case EnsFamilyRelationship.GRANDMOTHER:
        return 'Grand-mère';
      case EnsFamilyRelationship.GRANDFATHER:
        return 'Grand-père';
      case EnsFamilyRelationship.SISTER:
        return 'Soeur';
      case EnsFamilyRelationship.BROTHER:
        return 'Frère';
      case EnsFamilyRelationship.GREAT_GRANDMOTHER:
        return 'Arrière-grand-mère';
      case EnsFamilyRelationship.GREAT_GRANDFATHER:
        return 'Arrière-grand-père';
      case EnsFamilyRelationship.AUNT:
        return 'Tante';
      case EnsFamilyRelationship.UNCLE:
        return 'Oncle';
      case EnsFamilyRelationship.OTHER:
        return 'Autre';
      case EnsFamilyRelationship.UNKNOWN:
        return 'Valeur inconnue';
    }
  }
}
