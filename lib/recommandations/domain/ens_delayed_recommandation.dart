/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';

class RecommandationDifferee extends Equatable {
  final RecommandationDiffereeCode recommandationCode;
  final List<ProfilEnfantAActiver>? listeEnfants;

  const RecommandationDifferee({required this.recommandationCode, this.listeEnfants});

  @override
  List<Object?> get props => [recommandationCode, listeEnfants];
}

enum RecommandationDiffereeCode { INCITER_ACTIVER_PROFILS_ENFANTS, INCITER_DECOUVRIR_PROFILS_ENFANTS }

class ProfilEnfantAActiver extends Equatable {
  final String firstName;
  final String lastName;

  const ProfilEnfantAActiver({
    required this.firstName,
    required this.lastName,
  });

  @override
  List<Object?> get props => [
        firstName,
        lastName,
      ];
}
