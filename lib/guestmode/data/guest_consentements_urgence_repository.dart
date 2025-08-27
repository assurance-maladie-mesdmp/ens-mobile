/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/parameters/consentements_urgence/data/consentements_urgence_repository.dart';
import 'package:fr_cnamts_ens/parameters/consentements_urgence/domain/models/ens_consentement_urgence.dart';
import 'package:fr_cnamts_ens/parameters/consentements_urgence/domain/models/ens_consentements_urgence.dart';

class GuestConsentementsUrgenceRepository extends IConsentementsUrgenceRepository {
  final EnsConsentementsUrgence _consentementsUrgence = const EnsConsentementsUrgence(
    samu: EnsConsentementUrgence(
      id: 'id_0',
      isAllowed: true,
    ),
    autrePS: EnsConsentementUrgence(
      id: 'id_1',
      isAllowed: true,
    ),
    documentsMasques: EnsConsentementUrgence(
      id: 'id_2',
      isAllowed: false,
    ),
  );

  @override
  Future<RequestResult<EnsConsentementsUrgence>> getConsentementsUrgence(String patientId) {
    return Future.value(RequestResultSuccess<EnsConsentementsUrgence>(_consentementsUrgence));
  }

  @override
  Future<RequestResult<EnsConsentementsUrgence>> updateConsentementUrgence(
    String patientId,
    EnsConsentementsUrgence editingConsentementUrgence,
  ) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }
}
