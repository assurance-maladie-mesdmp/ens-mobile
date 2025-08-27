/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/utils/error_helper.dart';

abstract class DomainError {
  final String? errorMessage;

  const DomainError(this.errorMessage);
}

enum GenericDomainError implements DomainError {
  GENERIC(GENERIC_ERROR_MESSAGE),
  MAPPING_ERROR('Erreur lors de la conversion des données'),
  NETWORK_ERROR(GENERIC_ERROR_MESSAGE);

  @override
  final String errorMessage;

  const GenericDomainError(this.errorMessage);
}

enum GuestModeDomainError implements DomainError {
  GUEST_MODE(GUEST_MODE_ERROR_MESSAGE);

  @override
  final String errorMessage;

  const GuestModeDomainError(this.errorMessage);
}
