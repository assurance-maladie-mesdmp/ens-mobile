/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/domain/domain_error.dart';

enum ChangePasswordDomainError implements DomainError {
  GENERIC('Vérifier le mot de passe actuel. Si l\'erreur persiste, réessayer plus tard'),
  MOT_DE_PASSE_NON_ROBUSTE(null),
  MDP_DEJA_UTILISE('Le mot de passe saisi a déjà été utilisé. Veuillez réessayer'),
  MDP_AVEC_INFO_PERSO('Le mot de passe saisi contient des informations personnelles. Veuillez réessayer'),
  MDP_DU_DICTIONNAIRE('Le mot de passe saisi n\'est pas assez sécurisé. Veuillez réessayer.');

  @override
  final String? errorMessage;

  const ChangePasswordDomainError(this.errorMessage);

  static ChangePasswordDomainError getErrorDomainFromGraphQLError(String? codeError) {
    return switch (codeError) {
      'WEAK_PASSWORD' => ChangePasswordDomainError.MOT_DE_PASSE_NON_ROBUSTE,
      '[01]' => ChangePasswordDomainError.MDP_DEJA_UTILISE,
      '[03]' => ChangePasswordDomainError.MDP_AVEC_INFO_PERSO,
      '[04]' => ChangePasswordDomainError.MDP_AVEC_INFO_PERSO,
      '[05]' => ChangePasswordDomainError.MDP_DU_DICTIONNAIRE,
      _ => ChangePasswordDomainError.GENERIC,
    };
  }
}
