/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'matrice_habilitation_redux.dart';

class MatriceHabilitationState extends Equatable {
  final MatriceHabilitationProfessionState matriceProfessionState;
  final MatriceHabilitationCategorieDocumentState matriceCategorieDocumentState;
  final EnsMatriceCategorieDocument selectedCategorie;
  final MatriceHabilitationResultatState matriceResultatState;

  const MatriceHabilitationState({
    this.matriceProfessionState = const MatriceHabilitationProfessionState(),
    this.matriceCategorieDocumentState = const MatriceHabilitationCategorieDocumentState(),
    this.selectedCategorie = const EnsMatriceCategorieDocument(),
    this.matriceResultatState = const MatriceHabilitationResultatState(),
  });

  MatriceHabilitationState clone({
    MatriceHabilitationProfessionState? matriceProfessionState,
    MatriceHabilitationCategorieDocumentState? matriceCategorieDocumentState,
    EnsMatriceCategorieDocument? selectedCategorie,
    MatriceHabilitationResultatState? matriceResultatState,
  }) {
    return MatriceHabilitationState(
      matriceProfessionState: matriceProfessionState ?? this.matriceProfessionState,
      matriceCategorieDocumentState: matriceCategorieDocumentState ?? this.matriceCategorieDocumentState,
      selectedCategorie: selectedCategorie ?? this.selectedCategorie,
      matriceResultatState: matriceResultatState ?? this.matriceResultatState,
    );
  }

  @override
  List<Object?> get props => [
        matriceProfessionState,
        matriceCategorieDocumentState,
        selectedCategorie,
        matriceResultatState,
      ];
}

class MatriceHabilitationProfessionState extends Equatable {
  final AllPurposesStatus status;
  final List<EnsMatriceProfession> matriceProfessions;

  const MatriceHabilitationProfessionState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.matriceProfessions = const [],
  });

  @override
  List<Object?> get props => [status, matriceProfessions];
}

class MatriceHabilitationCategorieDocumentState extends Equatable {
  final AllPurposesStatus status;
  final List<EnsMatriceCategorieDocument> matriceCategoriesDocument;

  const MatriceHabilitationCategorieDocumentState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.matriceCategoriesDocument = const [],
  });

  @override
  List<Object?> get props => [status, matriceCategoriesDocument];
}

class MatriceHabilitationResultatState extends Equatable {
  final AllPurposesStatus status;
  final EnsMatriceResultat? matriceResultat;

  const MatriceHabilitationResultatState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.matriceResultat,
  });

  bool get isSuccessWithData => status.isSuccess() && matriceResultat != null;

  bool get isErrorOrSuccessWithoutData => status.isError() || (status.isSuccess() && matriceResultat == null);

  @override
  List<Object?> get props => [status, matriceResultat];
}
