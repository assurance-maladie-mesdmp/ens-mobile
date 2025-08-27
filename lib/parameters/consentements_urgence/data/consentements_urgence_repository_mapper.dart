/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_dmp_consentement.fragment.data.gql.dart';
import 'package:fr_cnamts_ens/parameters/consentements_urgence/domain/models/ens_consentement_urgence.dart';
import 'package:fr_cnamts_ens/parameters/consentements_urgence/domain/models/ens_consentements_urgence.dart';

class ConsentementsUrgenceRepositoryMapper {
  static const _PURPOSE_SAMU = 'ETREAT';
  static const _PURPOSE_AUTRE_PS = 'BTG';
  static const _PURPOSE_DOCS_MASQUES = 'MASKED';

  static EnsConsentementsUrgence? toEnsConsentementsUrgence(
    List<GdmpConsentement> dmpConsentements,
  ) {
    final GdmpConsentement consentementSamu;
    final GdmpConsentement consentementAutrePs;
    final GdmpConsentement consentementDocsMasques;

    if (dmpConsentements.length != 3) {
      return null;
    }

    try {
      consentementSamu = dmpConsentements.firstWhere(
        (dmpConsentement) => dmpConsentement.purpose == _PURPOSE_SAMU,
      );
      consentementAutrePs = dmpConsentements.firstWhere(
        (dmpConsentement) => dmpConsentement.purpose == _PURPOSE_AUTRE_PS,
      );
      consentementDocsMasques = dmpConsentements.firstWhere(
        (dmpConsentement) => dmpConsentement.purpose == _PURPOSE_DOCS_MASQUES,
      );
    } catch (e) {
      return null;
    }
    return EnsConsentementsUrgence(
      samu: _toEnsConsentementUrgence(consentementSamu),
      autrePS: _toEnsConsentementUrgence(consentementAutrePs),
      documentsMasques: _toEnsConsentementUrgence(consentementDocsMasques),
    );
  }

  static EnsConsentementUrgence _toEnsConsentementUrgence(GdmpConsentement dmpConsentement) {
    return EnsConsentementUrgence(id: dmpConsentement.identifier, isAllowed: _isAllowed(dmpConsentement.type));
  }

  static bool _isAllowed(String permission) {
    switch (permission) {
      case 'permit':
        return true;
      case 'deny':
      default:
        return false;
    }
  }
}
