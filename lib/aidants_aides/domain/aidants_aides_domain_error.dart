/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/domain/domain_error.dart';
import 'package:fr_cnamts_ens/utils/error_helper.dart';

enum AidantsAidesDomainError implements DomainError {
  GENERIC(GENERIC_ERROR_MESSAGE),
  PROFIL_INTROUVABLE('Profil introuvable, informations incorrectes ou compte Mon espace santé non actif.'),
  INVITATION_EXISTANTE('Ce proche a déjà une demande en attente de validation.'),
  MEME_DELEGATION_EXISTANTE('Ce proche a déjà accès à votre profil Mon espace santé.'),
  AUTRE_DELEGATION_EXISTANTE('Une autre délégation existe déjà avec ce proche.'),
  LIMITE_DELEGATION_ATTEINTE_AIDANT('Demande non envoyée :\nce proche a atteint le nombre maximum d\'accès autorisés.'),
  LIMITE_DELEGATION_ATTEINTE_AIDE('Vous avez atteint le nombre maximum de partages autorisés.');

  @override
  final String errorMessage;

  const AidantsAidesDomainError(this.errorMessage);

  static AidantsAidesDomainError getErrorDomainFromGraphQLError(String? codeError) {
    return switch (codeError) {
      'PROFILE_NOT_FOUND' => AidantsAidesDomainError.PROFIL_INTROUVABLE,
      'SAME_INVITATION_ALREADY_EXISTS' => AidantsAidesDomainError.INVITATION_EXISTANTE,
      'SAME_DELEGATION_ALREADY_EXISTS' => AidantsAidesDomainError.MEME_DELEGATION_EXISTANTE,
      'ANOTHER_DELEGATION_ALREADY_EXISTS' => AidantsAidesDomainError.AUTRE_DELEGATION_EXISTANTE,
      'INCOMING_CAREGIVING_DELEGATIONS_LIMIT_REACHED' => AidantsAidesDomainError.LIMITE_DELEGATION_ATTEINTE_AIDANT,
      'OUTGOING_CAREGIVING_DELEGATIONS_LIMIT_REACHED' => AidantsAidesDomainError.LIMITE_DELEGATION_ATTEINTE_AIDE,
      _ => AidantsAidesDomainError.GENERIC,
    };
  }
}
