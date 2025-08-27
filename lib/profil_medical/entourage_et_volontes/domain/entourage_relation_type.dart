/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

enum EntourageRelationType {
  MERE,
  PERE,
  ENFANT,
  PARTENAIRE,
  TUTEUR,
  AUTRE;

  String get name {
    return switch (this) {
      EntourageRelationType.MERE => 'Mère',
      EntourageRelationType.PERE => 'Père',
      EntourageRelationType.ENFANT => 'Enfant',
      EntourageRelationType.PARTENAIRE => 'Conjoint(e)/Partenaire',
      EntourageRelationType.TUTEUR => 'Tuteur Légal',
      EntourageRelationType.AUTRE => 'Autre'
    };
  }
}
