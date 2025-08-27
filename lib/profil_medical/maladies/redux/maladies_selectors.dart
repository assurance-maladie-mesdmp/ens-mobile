/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/domain/models/ens_maladie.dart';

class MaladiesSelectors {
  static EnsMaladie getLoadedMaladieById(EnsState state, String id) {
    final maladie = state.maladiesState.maladiesListState.maladies[id];

    if (maladie != null) {
      return maladie;
    } else {
      throw Exception('Aucune maladie pour l\'id $id');
    }
  }
}
