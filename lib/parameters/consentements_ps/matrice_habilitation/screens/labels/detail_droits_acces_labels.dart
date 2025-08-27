/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

enum DetailDroitsAccesLabels {
  POUR_MOI(
    headerFirstPart: 'Lors de mes consultations, les professionnels de santé pourront, selon leur profession accéder :',
  ),
  POUR_UN_TIERS(
    headerFirstPart: 'Lors de ses consultations, les professionnels de santé pourront, selon leur profession accéder :',
  );

  final String headerFirstPart;

  const DetailDroitsAccesLabels({required this.headerFirstPart});
}
