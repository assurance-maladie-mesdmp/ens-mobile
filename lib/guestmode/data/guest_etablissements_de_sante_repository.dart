/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/data/etablissements_de_sante_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/domain/acteur_de_sante_suggestion.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/professionnel_de_sante.dart';
import 'package:fr_cnamts_ens/search_es/domain/models/etablissement_de_sante.dart';

class GuestEtablissementsDeSanteRepository extends IEtablissementDeSanteRepository {
  final pharmacie = const EtablissementDeSante(
    name: 'Pharmacie de l\'Opéra',
    nameWithAlias: 'Pharmacie de l\'Opéra',
    idNat: 'ESID',
    activity: 'Pharmacie',
    mail: 'demo@mail.com',
    organizationId: 'organizationId',
    isContactable: true,
    address: ActeurDeSanteAdresse(
      roadNumber: '31 ',
      city: 'Paris',
      cityZipCode: '75002',
      road: 'de Moulinsart',
      addressName: 'Pharmacie de l\'Opéra',
      phoneNumber: '01010101010',
      labelRoadType: 'avenue',
    ),
  );

  @override
  Future<RequestResult<EtablissementDeSante>> getEtablissementDeSante(String id, String patientId) {
    return Future.value(
      RequestResultSuccess(pharmacie),
    );
  }

  @override
  Future<RequestResult<List<EtablissementDeSanteSuggestion>>> getPharmacieSuggestions(String patientId) {
    return Future.value(
      RequestResultSuccess(
        const [
          EtablissementDeSanteSuggestion(
            id: '1',
            email: 'pharmacie-mairie@exemple.com',
            adresse: '2 Place de la Mairie 93400 Saint Ouen',
            name: 'Pharmacie de la mairie',
          ),
          EtablissementDeSanteSuggestion(
            id: '2',
            email: 'orset@exemple.com',
            adresse: '625 Avenue Leon Blum 01500 Amberieu En Bugey',
            name: 'Pharmacie Orset',
          ),
        ],
      ),
    );
  }

  @override
  Future<RequestResult<List<EtablissementDeSante>>> getEtablissementsDeSante(String patientId) {
    return Future.value(RequestResultSuccess([pharmacie]));
  }

  @override
  Future<RequestResult<void>> addEtablissementDeSante(String patientId, String esId) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }

  @override
  Future<RequestResult<void>> removeEtablissementDeSante(String patientId, String esId) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }
}
