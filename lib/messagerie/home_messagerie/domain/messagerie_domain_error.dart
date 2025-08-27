/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/domain/domain_error.dart';
import 'package:fr_cnamts_ens/utils/error_helper.dart';

enum MessagerieDomainError implements DomainError {
  GENERIC(GENERIC_ERROR_MESSAGE),
  PJ_TROP_VOLUMINEUSE('La taille du ou des documents dépasse la limite autorisée.'),
  NOT_FOUND(null);

  @override
  final String? errorMessage;

  const MessagerieDomainError(this.errorMessage);

  static MessagerieDomainError getErrorDomainFromGraphQLError(String? codeError) {
    if (codeError == 'MSG_FILE_SIZE_EXCEEDED_ERROR') {
      return MessagerieDomainError.PJ_TROP_VOLUMINEUSE;
    } else {
      return MessagerieDomainError.GENERIC;
    }
  }
}
