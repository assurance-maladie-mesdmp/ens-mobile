/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/domain/models/ens_traitement.dart';

class EnsTraitements extends Equatable {
  final List<EnsTraitement> traitements;
  final DateTime? unconcernedDeclarationDate;

  const EnsTraitements(this.traitements, this.unconcernedDeclarationDate);

  @override
  List<Object?> get props => [traitements, unconcernedDeclarationDate];
}
