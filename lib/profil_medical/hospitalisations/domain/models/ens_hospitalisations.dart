/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/profil_medical/hospitalisations/domain/models/ens_hospitalisation.dart';

class EnsHospitalisations extends Equatable {
  final List<EnsHospitalisation> hospitalisations;
  final DateTime? unconcernedDeclarationDate;

  const EnsHospitalisations(this.hospitalisations, this.unconcernedDeclarationDate);

  @override
  List<Object?> get props => [hospitalisations, unconcernedDeclarationDate];
}
