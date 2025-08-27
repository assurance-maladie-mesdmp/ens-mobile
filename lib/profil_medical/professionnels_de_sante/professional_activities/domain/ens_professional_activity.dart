/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';

abstract class EnsProfessionalActivity extends Equatable {
  final String treCode;
  final String label;
  final String? shortLabel;

  const EnsProfessionalActivity({
    required this.treCode,
    required this.label,
    this.shortLabel,
  });

  @override
  List<Object?> get props => [treCode, label, shortLabel];
}

class EnsProfession extends EnsProfessionalActivity {
  const EnsProfession({required super.treCode, required super.label, super.shortLabel});
}

class EnsSpecialite extends EnsProfessionalActivity {
  const EnsSpecialite({required super.treCode, required super.label, super.shortLabel});
}
