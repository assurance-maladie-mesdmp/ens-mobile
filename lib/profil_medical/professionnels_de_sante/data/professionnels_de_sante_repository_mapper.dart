/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ps.fragment.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ps_get_confidentialities.query.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ps_get_ps_details.query.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/remote_config_wrapper.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/domain/professionnel_sante_confidentialities.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/professionnel_de_sante.dart';

class ProfessionnelsDeSanteRepositoryMapper {
  static ProfessionnelDeSante toEnsProfessionnelSanteFromHealthProfessionalModel(
    Gps healthProfessionalModel,
  ) =>
      ProfessionnelDeSante(
        idForDelete: healthProfessionalModel.healthProfessionalId,
        nationalId: healthProfessionalModel.nationalId,
        lastName: healthProfessionalModel.lastName,
        firstName: healthProfessionalModel.firstName,
        isMedecinTraitantDeclare: healthProfessionalModel.declaredReferrer,
        isMedecinTraitantRetrograde: healthProfessionalModel.incorrectReferrer,
        role: healthProfessionalModel.role?.toPsDomainRoleEnum(),
        addresses: healthProfessionalModel.adresses
                ?.map(
                  (address) => ActeurDeSanteAdresse(
                    cityZipCode: address.cityZipCode?.replaceAll('  ', ' '),
                    labelRoadType: address.labelRoadType,
                    road: address.road,
                    roadNumber: address.roadNumber,
                    phoneNumber: address.numeroTelephone,
                    addressName: address.adresseName,
                    city: address.commune,
                  ),
                )
                .toList() ??
            const [],
        exercices: healthProfessionalModel.exercices
            ?.map(
              (exercice) => ProfessionnelDeSanteExercice(
                profession: exercice.profession,
                specialites: exercice.specialities,
              ),
            )
            .toList(),
        active: healthProfessionalModel.active,
      );

  static ProfessionnelDeSante toEnsProfessionnelSanteFromHealthProfessionalReferentialModel(
    Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat healthProfessionalReferentialModel,
  ) =>
      ProfessionnelDeSante(
        idForDelete: '',
        nationalId: healthProfessionalReferentialModel.idNat,
        lastName: healthProfessionalReferentialModel.lastName,
        firstName: healthProfessionalReferentialModel.firstName,
        isContactable: healthProfessionalReferentialModel.isContactable,
        contactId: healthProfessionalReferentialModel.contactId,
        role: healthProfessionalReferentialModel.role?.toPsDomainRoleEnum(),
        exercices: [
          ProfessionnelDeSanteExercice(
            profession: healthProfessionalReferentialModel.profession ?? '',
            specialites: healthProfessionalReferentialModel.specialities,
            shortLabelSpecialites: healthProfessionalReferentialModel.shortLabelSpecialities,
          ),
        ],
        profession: healthProfessionalReferentialModel.profession,
        speciality: healthProfessionalReferentialModel.specialities,
        addresses: healthProfessionalReferentialModel.adresses
                ?.map(
                  (address) => ActeurDeSanteAdresse(
                    cityZipCode: address.cityZipCode?.replaceAll('  ', ' '),
                    labelRoadType: address.labelRoadType,
                    road: address.road,
                    roadNumber: address.roadNumber,
                    phoneNumber: address.numeroTelephone,
                    addressName: address.adresseName,
                    city: address.commune,
                  ),
                )
                .toList() ??
            const [],
        active: healthProfessionalReferentialModel.active,
      );

  static ProfessionnelSanteConfidentialities toProfessionnelSanteConfidentialities(
    Gget_confidentialities_psData_getHealthProfessionalConfidentialities confidentialities,
  ) {
    return ProfessionnelSanteConfidentialities(
      confidentilities: confidentialities.confidentialities
          .map((confidentiality) => _toProfessionnelSanteConfidentiality(confidentiality))
          .nonNulls
          .toList(),
      shouldShowCasUrgence: confidentialities.btg,
    );
  }

  static ProfessionnelSanteConfidentiality? _toProfessionnelSanteConfidentiality(
    Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialities confidentiality,
  ) {
    final status = _toProfessionnelSanteConfidentialityStatus(confidentiality.status);
    if (status == null) {
      return null;
    } else {
      return ProfessionnelSanteConfidentiality(
        consentId: confidentiality.consentId,
        psIdNat: confidentiality.healthProfessionalId,
        status: status,
        startDate: DateTime.parse(confidentiality.startDate),
      );
    }
  }

  static ProfessionnelSanteConfidentialityStatus? _toProfessionnelSanteConfidentialityStatus(String status) {
    switch (status) {
      case 'CONSENT':
        return ProfessionnelSanteConfidentialityStatus.CONSENT;
      case 'BLOCKED':
        return ProfessionnelSanteConfidentialityStatus.BLOCKED;
      default:
        return null;
    }
  }
}

extension GHealthProfessionalRoleEnumExtension on GHealthProfessionalRoleEnum {
  PsRoleDomaine? toPsDomainRoleEnum() {
    final isPsRoleEnabled = EnsModuleContainer.commonInjector?.getRemoteConfigWrapper().isEnabled(Feature.psRoleSfrPc);
    if (isPsRoleEnabled == false) {
      return this == GHealthProfessionalRoleEnum.MEDECIN_TRAITANT ? PsRoleDomaine.MEDECIN_TRAITANT : null;
    }
    return switch (this) {
      GHealthProfessionalRoleEnum.MEDECIN_TRAITANT => PsRoleDomaine.MEDECIN_TRAITANT,
      GHealthProfessionalRoleEnum.PHARMACIEN_CORRESPONDANT => PsRoleDomaine.PHARMACIEN_CORRESPONDANT,
      GHealthProfessionalRoleEnum.SAGE_FEMME_REFERENTE => PsRoleDomaine.SAGE_FEMME_REFERENTE,
      _ => null
    };
  }

  static GHealthProfessionalRoleEnum? getGHealthProfessionalRoleEnumFrom(PsRoleDomaine? roleDomainEnum) {
    return switch (roleDomainEnum) {
      PsRoleDomaine.MEDECIN_TRAITANT => GHealthProfessionalRoleEnum.MEDECIN_TRAITANT,
      PsRoleDomaine.SAGE_FEMME_REFERENTE => GHealthProfessionalRoleEnum.SAGE_FEMME_REFERENTE,
      PsRoleDomaine.PHARMACIEN_CORRESPONDANT => GHealthProfessionalRoleEnum.PHARMACIEN_CORRESPONDANT,
      _ => null,
    };
  }
}
