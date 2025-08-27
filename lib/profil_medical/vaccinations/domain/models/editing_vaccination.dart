/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/domain/models/ens_vaccination.dart';

class EditingVaccination extends Equatable {
  final String? id;
  final String? vaccineRefId;
  final DateTime? effectiveTime;
  final String? name;
  final String? lotNumber;
  final TypeOfAdministration? typeOfAdministration;
  final String? nomVaccinateur;
  final String? comment;
  final String? pathologies;

  const EditingVaccination({
    this.id,
    this.vaccineRefId,
    this.effectiveTime,
    this.name,
    this.lotNumber,
    this.typeOfAdministration,
    this.nomVaccinateur,
    this.comment,
    this.pathologies,
  });

  @override
  List<Object?> get props => [
        id,
        vaccineRefId,
        effectiveTime,
        name,
        lotNumber,
        typeOfAdministration,
        nomVaccinateur,
        comment,
        pathologies,
      ];
}
