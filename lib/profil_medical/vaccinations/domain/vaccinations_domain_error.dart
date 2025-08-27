/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/domain/domain_error.dart';
import 'package:fr_cnamts_ens/utils/error_helper.dart';

enum VaccinationDomainError implements DomainError {
  GENERIC(GENERIC_ERROR_MESSAGE),
  DATE_INVALIDE(null);

  @override
  final String? errorMessage;

  const VaccinationDomainError(this.errorMessage);

  static VaccinationDomainError getErrorDomainFromGraphQLError(String? message) {
    return message != null && message.contains('vaccine.date is not valid')
        ? VaccinationDomainError.DATE_INVALIDE
        : VaccinationDomainError.GENERIC;
  }
}
