/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/profil_medical/allergies/domain/models/ens_allergie.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/domain/models/ens_traitement.dart';

class GetAllergiesResponse extends Equatable {
  final List<EnsAllergie> allergies;
  final DateTime? unconcernedDeclarationDate;
  final List<EnsTraitement> traitements;

  const GetAllergiesResponse(this.allergies, this.unconcernedDeclarationDate, this.traitements);

  @override
  List<Object?> get props => [allergies, unconcernedDeclarationDate, traitements];
}
