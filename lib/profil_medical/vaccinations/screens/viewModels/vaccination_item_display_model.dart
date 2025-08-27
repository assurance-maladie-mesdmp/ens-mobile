/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/domain/models/ens_vaccination.dart';

abstract class VaccinationItemDisplayModel extends Equatable {
  const VaccinationItemDisplayModel._();

  const factory VaccinationItemDisplayModel.vaccination(EnsVaccination vaccination) =
      VaccinationDisplayModelVaccination;
}

class VaccinationDisplayModelVaccination extends VaccinationItemDisplayModel {
  final EnsVaccination vaccination;

  const VaccinationDisplayModelVaccination(this.vaccination) : super._();

  @override
  List<Object?> get props => [vaccination];
}
