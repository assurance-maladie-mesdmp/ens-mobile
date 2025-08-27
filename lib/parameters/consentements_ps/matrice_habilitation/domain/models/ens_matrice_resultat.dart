/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/matrice_habilitation/domain/models/ens_matrice_categorie_document.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/matrice_habilitation/domain/models/ens_matrice_type_document.dart';

class EnsMatriceResultat extends Equatable {
  final Map<EnsMatriceCategorieDocument, List<EnsMatriceTypeDocument>> resultatsAccessibles;
  final Map<EnsMatriceCategorieDocument, List<EnsMatriceTypeDocument>> resultatsNonAccessibles;
  final String? nextUrl;

  const EnsMatriceResultat({
    required this.resultatsAccessibles,
    required this.resultatsNonAccessibles,
    required this.nextUrl,
  });

  @override
  List<Object?> get props => [resultatsAccessibles, resultatsNonAccessibles, nextUrl];
}
