/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/domain/domain_error.dart';
import 'package:fr_cnamts_ens/utils/error_helper.dart';

enum EtablissementsDeSanteDomainError implements DomainError {
  GENERIC(GENERIC_ERROR_MESSAGE),
  ES_DEJA_AJOUTE('Etablissement de santé déjà ajouté'),
  INFORMATIONS_DETAILLEES_ERROR(
    'Les informations détaillées pour cet établissement de santé ne sont pas encore disponibles.',
  );

  @override
  final String errorMessage;

  const EtablissementsDeSanteDomainError(this.errorMessage);

  static EtablissementsDeSanteDomainError getErrorDomainFromGraphQLError({
    String? codeError,
    bool isErrorNotFound = false,
  }) {
    if (codeError == 'HEALTH_STRUCTURE_ALREADY_ADDED') {
      return EtablissementsDeSanteDomainError.ES_DEJA_AJOUTE;
    } else if (isErrorNotFound) {
      return EtablissementsDeSanteDomainError.INFORMATIONS_DETAILLEES_ERROR;
    } else {
      return EtablissementsDeSanteDomainError.GENERIC;
    }
  }
}
