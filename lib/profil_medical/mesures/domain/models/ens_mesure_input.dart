/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_type.dart';

class EnsMesureInput {
  final String? id;
  final EnsMesureType type;
  final DateTime date;
  final List<EnsMesureValueInput> values;
  final List<EnsMesureCommentInput> comments;

  EnsMesureInput.updateValue({
    required this.id,
    required this.type,
    required this.date,
    required this.values,
    required this.comments,
  });

  EnsMesureInput.newValue({
    required this.type,
    required this.date,
    required this.values,
    required this.comments,
  }) : id = null;
}

class EnsMesureValueInput {
  final EnsMesureType type;
  final String value;
  final String unit;

  EnsMesureValueInput({
    required this.type,
    required this.value,
    required this.unit,
  });
}

class EnsMesureCommentInput {
  final String type;
  final String value;
  final String? extraValue;

  EnsMesureCommentInput({
    required this.type,
    required this.value,
    this.extraValue,
  });
}
