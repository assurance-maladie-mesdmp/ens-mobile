/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/profil_medical/directives_anticipees/data/directives_anticipees_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/directives_anticipees/domain/directives_anticipees_domain_error.dart';

class GuestDirectivesAnticipeesRepository extends IDirectivesAnticipeesRepository {
  @override
  Future<RequestResult<EnsDocument>> getDirectivesAnticipeesDocument(String patientId) {
    return Future.value(RequestResultError<EnsDocument>.error(domainError: DirectivesAnticipeesDomainError.NOT_FOUND));
  }

  @override
  Future<RequestResult<EnsDocument>> postDirectivesAnticipeesDocuments(
    String patientId,
    DocumentEditionCreation documentEditionCreation,
  ) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }
}
