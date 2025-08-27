/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ps_get_consentement.query.data.gql.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/domain/models/ens_consentement_ps.dart';

class ConsentementsPsRepositoryMapper {
  static List<EnsConsentementPs>? toEnsConsentementsPs(
    List<Gget_consentement_psData_getDmpConsentementForHealthcareStaff>? dmpConsentementHealthcareStaff,
  ) {
    if (dmpConsentementHealthcareStaff == null) {
      return null;
    }
    return dmpConsentementHealthcareStaff
        .map(
          (dmpConsentement) => EnsConsentementPs(
            consentementId: dmpConsentement.dmpConsentementModel.identifier,
            psId: dmpConsentement.id,
            startDate: DateTime.parse(dmpConsentement.startDate),
            firstName: dmpConsentement.firstName,
            lastName: dmpConsentement.lastName,
            type: _toEnsPsType(dmpConsentement.healthcareStaffType),
            isAllowed: _isPsAllowed(dmpConsentement.dmpConsentementModel.type),
          ),
        )
        .toList();
  }

  static EnsPsType _toEnsPsType(String type) {
    switch (type) {
      case 'PS':
        return EnsPsType.INDIVIDUEL;
      case 'ORGANISATION':
        return EnsPsType.ORGANISATION;
      default:
        return EnsPsType.UNKNOWN;
    }
  }

  static bool _isPsAllowed(String permission) {
    switch (permission) {
      case 'permit':
        return true;
      case 'deny':
      default:
        return false;
    }
  }
}
