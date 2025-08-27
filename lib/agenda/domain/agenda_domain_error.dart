/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/domain/domain_error.dart';
import 'package:fr_cnamts_ens/utils/error_helper.dart';

enum AgendaDomainError implements DomainError {
  GENERIC(GENERIC_ERROR_MESSAGE),
  NOT_FOUND_ERROR(null);

  @override
  final String? errorMessage;

  const AgendaDomainError(this.errorMessage);

  static AgendaDomainError getErrorDomainFromGraphQLError({bool isNotFoundError = false}) {
    if (isNotFoundError) {
      return AgendaDomainError.NOT_FOUND_ERROR;
    } else {
      return AgendaDomainError.GENERIC;
    }
  }
}
