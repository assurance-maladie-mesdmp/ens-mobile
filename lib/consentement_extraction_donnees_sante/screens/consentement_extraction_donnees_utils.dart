/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';

class ConsentementExtractionDonneesUtils {
  static bool shouldDisplayConsentement({
    required bool isConsentementExtractionDonneesEnabled,
    required EnsState state,
  }) {
    return isConsentementExtractionDonneesEnabled &&
        state.consentementExtractionDonneesSanteState.shouldDisplayConsentementOnFirstConnexion;
  }
}
