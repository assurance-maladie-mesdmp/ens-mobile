/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'incitation_pml_category_redux.dart';

class IncitationPmlCategoryState extends Equatable {
  final IncitationPmlCategory category;

  const IncitationPmlCategoryState({this.category = IncitationPmlCategory.NONE});

  @override
  List<Object?> get props => [category];
}

enum IncitationPmlCategory {
  NONE,
  ALLERGIES,
  MALADIES,
  TRAITEMENTS;

  bool get isFromAllergiesIncitation => this == ALLERGIES;

  bool get isFromMaladiesIncitation => this == MALADIES;

  bool get isFromTraitementsIncitation => this == TRAITEMENTS;
}
