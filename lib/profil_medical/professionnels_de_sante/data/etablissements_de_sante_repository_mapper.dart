/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_es_get_es.query.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_es_get_es_details.query.data.gql.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/professionnel_de_sante.dart';
import 'package:fr_cnamts_ens/search_es/domain/models/etablissement_de_sante.dart';

class EtablissementDeSanteRepositoryMapper {
  static ActeurDeSanteAdresse? mapToEnsActeurSanteAddress(
    Gget_es_detailsData_getHealthStructureReferential_addresses? address,
  ) {
    if (address != null) {
      return ActeurDeSanteAdresse(
        cityZipCode: address.cityZipCode?.replaceAll('  ', ' '),
        labelRoadType: address.labelRoadType,
        road: address.road,
        roadNumber: address.roadNumber,
        phoneNumber: address.numeroTelephone,
        addressName: address.adresseName,
        city: address.commune,
      );
    } else {
      return null;
    }
  }

  static EtablissementDeSante toEtablissementDeSanteFromHealthStructureReferentialModel(
    Gget_etablissements_de_santeData_getHealthStructures_healthStructures healthStructureReferentialModel,
  ) {
    final alias = healthStructureReferentialModel.alias;
    final name = healthStructureReferentialModel.name;
    final fullName = alias == null || alias.isEmpty ? name : '$name ( $alias )';
    return EtablissementDeSante(
      idNat: healthStructureReferentialModel.id,
      nameWithAlias: fullName,
      name: name,
      activity: healthStructureReferentialModel.activity,
      organizationId: healthStructureReferentialModel.organizationId,
      isContactable: healthStructureReferentialModel.isContactable,
      mail: healthStructureReferentialModel.mail,
      address: healthStructureReferentialModel.addresses == null
          ? null
          : ActeurDeSanteAdresse(
              cityZipCode: healthStructureReferentialModel.addresses!.cityZipCode?.replaceAll('  ', ' '),
              labelRoadType: healthStructureReferentialModel.addresses!.labelRoadType,
              road: healthStructureReferentialModel.addresses!.road,
              roadNumber: healthStructureReferentialModel.addresses!.roadNumber,
              phoneNumber: healthStructureReferentialModel.addresses!.numeroTelephone,
              addressName: healthStructureReferentialModel.addresses!.adresseName,
              city: healthStructureReferentialModel.addresses!.commune,
            ),
      active: healthStructureReferentialModel.active,
    );
  }
}
