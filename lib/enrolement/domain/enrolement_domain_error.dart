/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/domain/domain_error.dart';
import 'package:fr_cnamts_ens/utils/error_helper.dart';

enum EnrolementDomainError implements DomainError {
  GENERIC(GENERIC_ERROR_MESSAGE),
  SESSION_EXPIREE(null),
  DELAIS_MINIMUM_NON_RESPECTE('Une erreur est survenue. Veuillez attendre 30 secondes puis réessayez.'),
  UTILISATEUR_INTROUVABLE('Nous n\'avons pas réussi à vous identifier. Veuillez vérifier votre saisie.'),
  PERSONNE_DECEDEE(null),
  COMPTE_DEJA_EXISTANT(null),
  COORDONNEES_INTROUVABLES(null),
  CODE_PROVISOIRE_EXPIRE(null),
  CODE_PROVISOIRE_DEJA_UTILISE(null),
  IDENTIFIANT_DEJA_EXISTANT('Cet identifiant existe déjà. Veuillez en saisir un nouveau.'),
  MOT_DE_PASSE_NON_ROBUSTE(null),
  MDP_AVEC_INFO_PERSO('Le mot de passe saisi contient des informations personnelles. Veuillez réessayer'),
  MDP_DU_DICTIONNAIRE('Le mot de passe saisi n\'est pas assez sécurisé. Veuillez réessayer.');

  @override
  final String? errorMessage;

  const EnrolementDomainError(this.errorMessage);

  static EnrolementDomainError getErrorDomainFromGraphQLError(String? codeError) {
    return switch (codeError) {
      'SESSION_TIMED_OUT' => EnrolementDomainError.SESSION_EXPIREE,
      'TIMED_OUT' => EnrolementDomainError.SESSION_EXPIREE,
      'CONTACTS_NOT_FOUND' => EnrolementDomainError.COORDONNEES_INTROUVABLES,
      'PROFILE_ALREADY_EXISTS' => EnrolementDomainError.COMPTE_DEJA_EXISTANT,
      'DECEASED_INDIVIDUAL' => EnrolementDomainError.PERSONNE_DECEDEE,
      'NO_USER_FOUND' => EnrolementDomainError.UTILISATEUR_INTROUVABLE,
      'MIN_DELAY_ERROR' => EnrolementDomainError.DELAIS_MINIMUM_NON_RESPECTE,
      'CODE_EXPIRED' => EnrolementDomainError.CODE_PROVISOIRE_EXPIRE,
      'CODE_ALREADY_USED' => EnrolementDomainError.CODE_PROVISOIRE_DEJA_UTILISE,
      'LOGIN_ALREADY_EXISTS' => EnrolementDomainError.IDENTIFIANT_DEJA_EXISTANT,
      'WEAK_PASSWORD' => EnrolementDomainError.MOT_DE_PASSE_NON_ROBUSTE,
      '[03]' => EnrolementDomainError.MDP_AVEC_INFO_PERSO,
      '[04]' => EnrolementDomainError.MDP_AVEC_INFO_PERSO,
      '[05]' => EnrolementDomainError.MDP_DU_DICTIONNAIRE,
      _ => EnrolementDomainError.GENERIC,
    };
  }
}
