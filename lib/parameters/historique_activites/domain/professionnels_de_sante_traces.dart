/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/parameters/historique_activites/domain/trace.dart';

class ProfessionnelsDeSanteTraces extends Equatable {
  final List<Trace> traces;
  final int currentPage;
  final bool hasNextPage;

  const ProfessionnelsDeSanteTraces({
    required this.traces,
    required this.currentPage,
    required this.hasNextPage,
  });

  @override
  List<Object?> get props => [traces, hasNextPage, currentPage];
}
