/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/domain/domain_error.dart';
import 'package:fr_cnamts_ens/utils/error_helper.dart';

abstract class IDocumentsDomainError extends DomainError {
  IDocumentsDomainError(super.errorMessage);
}

enum DocumentsDomainError implements IDocumentsDomainError {
  GENERIC(GENERIC_ERROR_MESSAGE),
  GUEST_MODE(GUEST_MODE_ERROR_MESSAGE),
  DOCUMENT_NON_CONFORME('Le document n\'est pas conforme'),
  DOSSIER_NAME_ALREADY_EXISTS(null),
  NOT_FOUND(null),
  NOT_APPLIED_FOR_ALL_DOCS(null);

  @override
  final String? errorMessage;

  const DocumentsDomainError(this.errorMessage);

  static DocumentsDomainError getErrorDomainFromGraphQLError({
    bool isNotFoundError = false,
    bool isAntivirusError = false,
    String? codeError,
  }) {
    if (isNotFoundError) {
      return DocumentsDomainError.NOT_FOUND;
    } else if (isAntivirusError) {
      return DocumentsDomainError.DOCUMENT_NON_CONFORME;
    } else {
      return switch (codeError) {
        'FOLDER_NAME_ALREADY_EXISTS' => DocumentsDomainError.DOSSIER_NAME_ALREADY_EXISTS,
        _ => DocumentsDomainError.GENERIC,
      };
    }
  }
}
