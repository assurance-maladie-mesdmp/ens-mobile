/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/domain/domain_error.dart';

enum SearchPsDomainError implements DomainError {
  IS_EMPTY('Aucun professionnel de santé n’a été trouvé. Modifiez votre saisie.');

  @override
  final String errorMessage;

  const SearchPsDomainError(this.errorMessage);
}
