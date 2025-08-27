/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';

class RaccourcisCategorie extends Equatable {
  final Categorie categorie;
  final String label;

  const RaccourcisCategorie({required this.categorie, required this.label});

  @override
  List<Object?> get props => [categorie, label];
}

enum Categorie {
  SUIVI_MEDICAL,
  MESURES,
  PS,
  DOCUMENTS,
  MESSAGERIE,
  CATALOGUE_SERVICE,
  PARAMETRES,
}
