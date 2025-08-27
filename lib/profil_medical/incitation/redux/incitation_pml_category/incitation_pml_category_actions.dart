/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'incitation_pml_category_redux.dart';

class InitIncitationPmlCategoryAction {}

class AddIncitationPmlCategoryAction {
  final EnsIncitationType type;

  AddIncitationPmlCategoryAction(this.type);
}
