/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';

class ActeursDeSanteSelectors {
  const ActeursDeSanteSelectors._();

  static String? getOrganizationIdFromIdNatForEs(EnsState state, String idNat) {
    final esListState = state.etablissementsDeSanteState.etablissementDeSanteListState;
    if (esListState.status.isSuccess()) {
      return esListState.etablissementsDeSante.firstWhereOrNull((es) => es.idNat == idNat)?.organizationId;
    }
    return null;
  }
}
