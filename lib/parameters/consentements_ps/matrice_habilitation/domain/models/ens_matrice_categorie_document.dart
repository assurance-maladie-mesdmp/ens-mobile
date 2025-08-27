/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';

class EnsMatriceCategorieDocument extends Equatable {
  static const allCategoriesLabel = 'Toutes les catégories';
  static const allCategoriesCode = 0;

  final String libelle;
  final int codeCategorie;

  const EnsMatriceCategorieDocument({
    this.libelle = allCategoriesLabel,
    this.codeCategorie = allCategoriesCode,
  });

  @override
  List<Object?> get props => [libelle, codeCategorie];
}
