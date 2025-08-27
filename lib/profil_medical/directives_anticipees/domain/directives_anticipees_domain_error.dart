/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/documents/domain/documents_domain_error.dart';
import 'package:fr_cnamts_ens/utils/error_helper.dart';

enum DirectivesAnticipeesDomainError implements IDocumentsDomainError {
  GENERIC(GENERIC_ERROR_MESSAGE),
  NOT_FOUND(null),
  DOCUMENT_NON_CONFORME('Le document n\'est pas conforme');

  @override
  final String? errorMessage;

  const DirectivesAnticipeesDomainError(this.errorMessage);

  static DirectivesAnticipeesDomainError getErrorDomainFromGraphQLError({
    String? codeError,
    bool isAntiVirusError = false,
  }) {
    if (codeError == 'NOT_FOUND') {
      return DirectivesAnticipeesDomainError.NOT_FOUND;
    } else if (isAntiVirusError) {
      return DirectivesAnticipeesDomainError.DOCUMENT_NON_CONFORME;
    } else {
      return DirectivesAnticipeesDomainError.GENERIC;
    }
  }
}
