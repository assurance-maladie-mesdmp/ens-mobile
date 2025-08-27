/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/code_postaux.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/professionnel_de_sante.dart';
import 'package:fr_cnamts_ens/search_es/data/search_es_repository.dart';
import 'package:fr_cnamts_ens/search_es/domain/models/etablissement_de_sante.dart';

class GuestSearchEsRepository extends ISearchEsRepository {
  final es = [
    const EtablissementDeSante(
      idNat: 'idNat',
      nameWithAlias: 'Pharmacie de la place',
      name: 'Pharmacie de la place',
      activity: 'Pharmacie de garde',
      isContactable: false,
      address: ActeurDeSanteAdresse(
        roadNumber: '12',
        labelRoadType: 'avenue',
        road: 'Ste Marguerite',
        city: 'Nice',
        cityZipCode: '06200',
      ),
    ),
  ];

  @override
  Future<RequestResult<List<EtablissementDeSante>>> getEtablissementSante(
    String name,
    String? departmentCode,
    CodePostaux zipCodes,
    String? cityCode,
    bool onlyPharmacies,
  ) async {
    return RequestResultSuccess(es);
  }
}
