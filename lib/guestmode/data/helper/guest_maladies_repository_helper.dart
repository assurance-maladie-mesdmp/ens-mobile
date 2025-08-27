/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/profil_medical/domain/models/ens_date.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/data/maladies_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/domain/models/ens_maladie.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/domain/models/ens_traitement.dart';

class GuestMaladiesRepositoryHelper {
  static GetMaladieResponse getMaladies(String patientId) {
    return const GetMaladieResponse(
      [
        EnsMaladie(
          id: '0',
          name: 'COVID-19',
          startDate: EnsDate(day: '20', month: '04', year: '2021'),
          comment: 'Beaucoup de fièvre mais pas de difficulté respiratoire',
          linkedDocumentIds: [],
          linkedTraitementIds: [],
        ),
        EnsMaladie(
          id: '1',
          name: 'Maux de tête',
          startDate: EnsDate(day: '29', month: '02', year: '2004'),
          comment: 'Surtout dans les moments de stress.',
          linkedDocumentIds: [],
          linkedTraitementIds: ['id1'],
        ),
      ],
      null,
      [
        EnsTraitement(
          id: 'id1',
          name: 'Paracétamol 1g',
          startDate: EnsDate(day: '13', month: '12', year: '2021'),
          dosage: '2 cachets par jour, matin et soir',
          linkedMaladieIds: ['1'],
        ),
      ],
    );
  }
}
