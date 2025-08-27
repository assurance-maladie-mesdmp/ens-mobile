/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

enum ConsentementPsLabels {
  POUR_MOI(
    headerBlock1:
        'Pour un meilleur suivi de ma santé, les professionnels de santé que j\'autorise ont la possibilité d\'accéder à mes informations médicales.',
    headerBlock2: 'À chaque accès d\'un professionnel de santé, je recevrai une notification sur l\'adresse e-mail',
  ),
  POUR_UN_TIERS(
    headerBlock1:
        'Pour un meilleur suivi de sa santé, les professionnels de santé que j\'autorise ont la possibilité d\'accéder à ses informations médicales.',
    headerBlock2: 'À chaque accès d\'un professionnel de santé, je recevrai une notification sur l\'adresse e-mail',
  );

  final String headerBlock1;
  final String headerBlock2;

  const ConsentementPsLabels({required this.headerBlock1, required this.headerBlock2});
}
