/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ps_get_resultat_de_recherche_ps.query.data.gql.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/professionnel_de_sante.dart';

class SearchPsRepositoryMapper {
  static List<ProfessionnelDeSante> toProfessionnelsSante(
    List<Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps> searchResults,
  ) {
    return searchResults
        .map(
          (ps) {
            final psId = ps.identifiant;
            if (psId == null) {
              return null;
            } else {
              return ProfessionnelDeSante(
                idForDelete: psId,
                nationalId: psId,
                lastName: ps.lastName,
                firstName: ps.firstName,
                speciality: ps.specialities,
                profession: ps.profession,
                addresses: ps.structureAddress
                    .map(
                      (address) => ActeurDeSanteAdresse(
                        cityZipCode: address.cityZipCode?.replaceAll('  ', ' '),
                        labelRoadType: address.labelRoadType,
                        road: address.road,
                        roadNumber: address.roadNumber,
                        city: address.commune,
                      ),
                    )
                    .toList(),
                active: ps.active,
              );
            }
          },
        )
        .nonNulls
        .toList();
  }
}
