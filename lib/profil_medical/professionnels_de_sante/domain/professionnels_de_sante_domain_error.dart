/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/domain/domain_error.dart';
import 'package:fr_cnamts_ens/utils/error_helper.dart';

enum ProfessionnelsDeSanteDomainError implements DomainError {
  GENERIC(GENERIC_ERROR_MESSAGE),
  PS_DEJA_AJOUTE('Professionnel de santé déjà ajouté'),
  INFORMATIONS_DETAILLEES_ERROR(
    'Les informations détaillées pour ce professionnel de santé ne sont pas encore disponibles.',
  );

  @override
  final String errorMessage;

  const ProfessionnelsDeSanteDomainError(this.errorMessage);

  static ProfessionnelsDeSanteDomainError getErrorDomainFromGraphQLError({String? codeError, String? errorMessage}) {
    if (codeError == 'HEALTH_PROFESSIONAL_ALREADY_ADDED') {
      return ProfessionnelsDeSanteDomainError.PS_DEJA_AJOUTE;
    } else if (errorMessage != null && errorMessage.contains('404: Not Found')) {
      return ProfessionnelsDeSanteDomainError.INFORMATIONS_DETAILLEES_ERROR;
    } else {
      return ProfessionnelsDeSanteDomainError.GENERIC;
    }
  }
}
