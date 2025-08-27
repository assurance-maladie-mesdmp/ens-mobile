/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/profil_medical/allergies/data/get_allergies_response.dart';
import 'package:fr_cnamts_ens/profil_medical/allergies/domain/models/ens_allergie.dart';

class GuestAllergiesRepositoryHelper {
  static GetAllergiesResponse getAllergies(String patientId) {
    return const GetAllergiesResponse(
      [
        EnsAllergie(
          id: 'id1',
          name: 'pollen',
          comment: 'Pollen de bouleau',
          linkedTraitementIds: ['id1'],
        ),
        EnsAllergie(id: 'id2', name: 'gluten'),
        EnsAllergie(id: 'id3', name: 'framboises'),
      ],
      null,
      [],
    );
  }
}
