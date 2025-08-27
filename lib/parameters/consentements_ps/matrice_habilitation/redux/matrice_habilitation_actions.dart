/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'matrice_habilitation_redux.dart';

class FetchMatriceProfessionsAction {}

class _ProcessFetchMatriceProfessionsSuccessAction {
  final List<EnsMatriceProfession> matriceProfessions;

  _ProcessFetchMatriceProfessionsSuccessAction(this.matriceProfessions);
}

class _ProcessFetchMatriceProfessionsErrorAction {}

class FetchMatriceCategorieDocumentAction {}

class _ProcessFetchMatriceCategorieDocumentSuccessAction {
  final List<EnsMatriceCategorieDocument> matriceCategoriesDocument;

  _ProcessFetchMatriceCategorieDocumentSuccessAction(this.matriceCategoriesDocument);
}

class _ProcessFetchMatriceCategorieDocumentErrorAction {}

class SelectMatriceCategorieAction {
  final EnsMatriceCategorieDocument selectedCategorie;

  SelectMatriceCategorieAction(this.selectedCategorie);
}

class FetchMatriceResultatAction {
  final int codeProfession;

  FetchMatriceResultatAction(this.codeProfession);
}

class _ProcessFetchMatriceResultatSuccessAction {
  final EnsMatriceResultat matriceResult;

  _ProcessFetchMatriceResultatSuccessAction(this.matriceResult);
}

class _ProcessFetchMatriceResultatErrorAction {}
