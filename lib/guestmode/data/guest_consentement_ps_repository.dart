/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/data/consentements_ps_repository.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/domain/models/ens_consentement_ps.dart';
import 'package:fr_cnamts_ens/utils/extensions/list_extensions.dart';

class GuestConsentementPsRepository extends IConsentementsPsRepository {
  final List<EnsConsentementPs> _consentementsPs = [
    EnsConsentementPs(
      consentementId: 'id1',
      psId: 'identifier1',
      firstName: 'Marc',
      lastName: 'Dupot',
      startDate: DateTime(2020, 02, 01),
      type: EnsPsType.INDIVIDUEL,
      isAllowed: true,
    ),
    EnsConsentementPs(
      consentementId: 'id2',
      psId: 'identifier2',
      firstName: 'Martine',
      lastName: 'Dupot',
      startDate: DateTime(2021, 05, 15),
      type: EnsPsType.INDIVIDUEL,
      isAllowed: false,
    ),
    EnsConsentementPs(
      consentementId: 'id5',
      psId: 'identifier5',
      firstName: 'Simone',
      lastName: 'Beauregard',
      startDate: DateTime(2019, 02, 05),
      type: EnsPsType.INDIVIDUEL,
      isAllowed: true,
    ),
  ];

  @override
  Future<RequestResult<List<EnsConsentementPs>>> getConsentementPs(String patientId) {
    return Future.value(RequestResultSuccess<List<EnsConsentementPs>>(_consentementsPs.copy()));
  }

  @override
  Future<RequestResult<void>> blockPs(String patientId, String rppsId) {
    return Future.value(RequestResultSuccess(null));
  }

  @override
  Future<RequestResult<void>> unblockPs(String patientId, String psId, String consentementId) {
    final index = _consentementsPs.indexWhere((consentement) => consentement.psId == psId);
    if (index != -1) {
      final EnsConsentementPs consentement = _consentementsPs[index];
      final EnsConsentementPs updatedConsentement = EnsConsentementPs(
        consentementId: consentement.consentementId,
        psId: consentement.psId,
        firstName: consentement.firstName,
        lastName: consentement.lastName,
        startDate: consentement.startDate,
        type: consentement.type,
        isAllowed: false,
      );
      _consentementsPs.removeAt(index);
      _consentementsPs.insert(index, updatedConsentement);
    }
    return Future.value(RequestResultSuccess(null));
  }
}
