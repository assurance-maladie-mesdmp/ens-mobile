/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/profil_medical/allergies/domain/models/ens_allergie.dart';
import 'package:fr_cnamts_ens/profil_medical/domain/models/ens_date.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/domain/models/ens_maladie.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/data/traitements_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/domain/models/ens_traitement.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/domain/models/ens_traitements.dart';

class GuestTraitementsRepositoryHelper {
  static GetTraitementResponse getTraitements(String patientId) {
    return const GetTraitementResponse(
      EnsTraitements(
        [
          EnsTraitement(
            id: 'id0',
            name: 'Paracétamol',
            startDate: EnsDate(day: '17', month: '06', year: '2004'),
            dosage: '2 cachets par jour, matin et soir',
          ),
          EnsTraitement(
            id: 'id1',
            name: 'Paracétamol 1g',
            startDate: EnsDate(day: '13', month: '12', year: '2021'),
            dosage: '2 cachets par jour, matin et soir',
            linkedMaladieIds: ['1'],
          ),
        ],
        null,
      ),
      {
        '1': EnsMaladie(
          id: '1',
          name: 'Maux de tête',
          startDate: EnsDate(day: '29', month: '02', year: '2004'),
          comment: 'Surtout dans les moments de stress.',
          linkedDocumentIds: [],
          linkedTraitementIds: ['id1'],
        ),
      },
      {
        'id1': EnsAllergie(
          id: 'id1',
          name: 'pollen',
          comment: 'Pollen de bouleau',
          linkedTraitementIds: ['id1'],
        ),
      },
    );
  }
}
