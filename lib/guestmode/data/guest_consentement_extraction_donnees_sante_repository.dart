/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/consentement_extraction_donnees_sante/data/consentement_extraction_donnees_sante_repository.dart';

class GuestConsentementExtractionDonneesSanteRepository implements IConsentementExtractionDonneesSanteRepository {
  @override
  Future<RequestResult<void>> updateConsentement(String patientId, bool hasAccepted) {
    return Future.value(RequestResultSuccess(null));
  }

  @override
  Future<RequestResult<ExtractionMesureConsentementResponse>> getConsentement(String patientId) {
    return Future.value(
      RequestResultSuccess(const ExtractionMesureConsentementResponse(consent: null, isWhitelisted: false)),
    );
  }
}
