/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/domain/models/ens_traitement.dart';

class TraitementsSelectors {
  static List<EnsTraitement> getTraitementsEnCours(EnsState state) {
    return state.traitementsState.traitementsListState.traitements
        .where((traitement) => traitement.isEnCours())
        .toList();
  }
}
