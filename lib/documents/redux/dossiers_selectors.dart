/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_dossier.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';

class DossiersSelectors {
  static List<EnsDossier> getLoadedDossiers(EnsState state) {
    return state.documentsState.documentsListState.dossiers.values
        .sortedBy((dossier) => dossier.name.toLowerCase())
        .toList();
  }

  static EnsDossier? getDossierById(EnsState state, String dossierId) =>
      state.documentsState.documentsListState.dossiers[dossierId];
}
