/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/domain/domain_error.dart';
import 'package:fr_cnamts_ens/utils/error_helper.dart';

enum HelpdeskDomainError implements DomainError {
  GENERIC(GENERIC_ERROR_MESSAGE),
  TECHNICAL_ERROR('Une erreur technique est survenue'),
  LIMITE_CREATION_DE_DEMANDE('Vous avez dépassé le nombre de demandes autorisées'),
  LIMITE_PIECES_JOINTES('Vous ne pouvez pas joindre plus de cinq documents');

  @override
  final String errorMessage;

  const HelpdeskDomainError(this.errorMessage);

  static HelpdeskDomainError getErrorDomainFromGraphQLError(String codeError) {
    return switch (codeError) {
      'HELPDESK_CREATE_MAX_LIMIT' => HelpdeskDomainError.LIMITE_CREATION_DE_DEMANDE,
      'HELPDESK_DOCUMENT_MAX_LIMIT' => HelpdeskDomainError.LIMITE_PIECES_JOINTES,
      'TECHNICAL_ERROR' => HelpdeskDomainError.TECHNICAL_ERROR,
      _ => HelpdeskDomainError.GENERIC,
    };
  }
}
