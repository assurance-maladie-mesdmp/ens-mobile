/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/domain/models/editing_vaccination.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/domain/models/ens_vaccination.dart';
import 'package:fr_cnamts_ens/utils/ens_date_utils.dart';

class VaccinationsRepositoryMapper {
  static GVaccineInputBuilder buildVaccinationInput(String patientId, EditingVaccination editingVaccination) {
    final vaccinationInput = GVaccineInput(
      (input) => input
        ..patientId = patientId
        ..vaccineRefId = editingVaccination.vaccineRefId
        ..effectiveTime = EnsDateUtils.formatYYYYMMDD(editingVaccination.effectiveTime!)
        ..comment = editingVaccination.comment
        ..lotNumber = editingVaccination.lotNumber
        ..typeOfAdministration = _mapVaccineTypeOfAdministrationEnum(editingVaccination.typeOfAdministration)
        ..performer = editingVaccination.nomVaccinateur,
    );
    final vaccinationUpdateInputBuilder = GVaccineInputBuilder();
    vaccinationUpdateInputBuilder.replace(vaccinationInput);
    return vaccinationUpdateInputBuilder;
  }

  static GVaccineUpdateInputBuilder buildVaccinationUpdateInput(
    String patientId,
    EditingVaccination editingVaccination,
  ) {
    final vaccinationUpdateInput = GVaccineUpdateInput(
      (input) => input
        ..patientId = patientId
        ..vaccineId = editingVaccination.id
        ..vaccineRefId = editingVaccination.vaccineRefId
        ..effectiveTime = EnsDateUtils.formatYYYYMMDD(editingVaccination.effectiveTime!)
        ..comment = editingVaccination.comment
        ..lotNumber = editingVaccination.lotNumber
        ..typeOfAdministration = _mapVaccineTypeOfAdministrationEnum(editingVaccination.typeOfAdministration)
        ..performer = editingVaccination.nomVaccinateur,
    );
    final vaccinationUpdateInputBuilder = GVaccineUpdateInputBuilder();
    vaccinationUpdateInputBuilder.replace(vaccinationUpdateInput);
    return vaccinationUpdateInputBuilder;
  }

  static GVaccineTypeOfAdministrationEnum _mapVaccineTypeOfAdministrationEnum(
    TypeOfAdministration? typeOfAdministration,
  ) {
    switch (typeOfAdministration) {
      case TypeOfAdministration.INITIMMUNIZ:
        return GVaccineTypeOfAdministrationEnum.INITIMMUNIZ;
      case TypeOfAdministration.BOOSTER:
        return GVaccineTypeOfAdministrationEnum.BOOSTER;
      case TypeOfAdministration.IMMUNIZ:
        return GVaccineTypeOfAdministrationEnum.IMMUNIZ;
      case TypeOfAdministration.UNKNOWN:
      default:
        return GVaccineTypeOfAdministrationEnum.gUnknownEnumValue;
    }
  }

  static TypeOfAdministration mapGqlVaccineTypeOfAdministration(
    GVaccineTypeOfAdministrationEnum vaccineTypeOfAdministrationEnum,
  ) {
    switch (vaccineTypeOfAdministrationEnum) {
      case GVaccineTypeOfAdministrationEnum.INITIMMUNIZ:
        return TypeOfAdministration.INITIMMUNIZ;
      case GVaccineTypeOfAdministrationEnum.BOOSTER:
        return TypeOfAdministration.BOOSTER;
      case GVaccineTypeOfAdministrationEnum.IMMUNIZ:
        return TypeOfAdministration.IMMUNIZ;
      case GVaccineTypeOfAdministrationEnum.gUnknownEnumValue:
      default:
        return TypeOfAdministration.UNKNOWN;
    }
  }
}
