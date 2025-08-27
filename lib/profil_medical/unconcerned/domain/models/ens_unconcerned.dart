/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';

class EnsUnconcerned extends Equatable {
  final DateTime date;
  final SectionUnconcerned section;

  const EnsUnconcerned({
    required this.date,
    required this.section,
  });

  @override
  List<Object?> get props => [date, section];
}

enum SectionUnconcerned {
  MALADIES,
  ANTECEDENTS,
  HOSPITALISATIONS,
  TRAITEMENTS,
  ALLERGIES,
  HANDICAPS,
}
