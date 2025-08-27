/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'matrice_habilitation_redux.dart';

class MatriceHabilitationReducers {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, FetchMatriceProfessionsAction>(
          MatriceHabilitationReducers._onFetchMatriceProfessionsAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchMatriceProfessionsSuccessAction>(
          MatriceHabilitationReducers._onProcessFetchMatriceProfessionsSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchMatriceProfessionsErrorAction>(
          MatriceHabilitationReducers._onProcessFetchMatriceProfessionsErrorAction,
        ).call,
        TypedReducer<EnsState, FetchMatriceCategorieDocumentAction>(
          MatriceHabilitationReducers._onFetchMatriceCategorieDocumentAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchMatriceCategorieDocumentSuccessAction>(
          MatriceHabilitationReducers._onProcessFetchMatriceCategorieDocumentSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchMatriceCategorieDocumentErrorAction>(
          MatriceHabilitationReducers._onProcessFetchMatriceCategorieDocumentErrorAction,
        ).call,
        TypedReducer<EnsState, SelectMatriceCategorieAction>(
          MatriceHabilitationReducers._onSelectMatriceCategorieAction,
        ).call,
        TypedReducer<EnsState, FetchMatriceResultatAction>(
          MatriceHabilitationReducers._onFetchMatriceResultatAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchMatriceResultatSuccessAction>(
          MatriceHabilitationReducers._onProcessFetchMatriceResultatSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchMatriceResultatErrorAction>(
          MatriceHabilitationReducers._onProcessFetchMatriceResultatErrorAction,
        ).call,
      ];

  static EnsState _onFetchMatriceProfessionsAction(
    EnsState state,
    FetchMatriceProfessionsAction action,
  ) {
    if (state.matriceHabilitationState.matriceProfessionState.status.isNotSuccess()) {
      return state.clone(
        matriceHabilitationState: state.matriceHabilitationState.clone(
          matriceProfessionState: const MatriceHabilitationProfessionState(status: AllPurposesStatus.LOADING),
        ),
      );
    } else {
      return state;
    }
  }

  static EnsState _onProcessFetchMatriceProfessionsSuccessAction(
    EnsState state,
    _ProcessFetchMatriceProfessionsSuccessAction action,
  ) {
    return state.clone(
      matriceHabilitationState: state.matriceHabilitationState.clone(
        matriceProfessionState: MatriceHabilitationProfessionState(
          status: AllPurposesStatus.SUCCESS,
          matriceProfessions: action.matriceProfessions.sortedBy((profession) => profession.libelle),
        ),
      ),
    );
  }

  static EnsState _onProcessFetchMatriceProfessionsErrorAction(
    EnsState state,
    _ProcessFetchMatriceProfessionsErrorAction action,
  ) {
    return state.clone(
      matriceHabilitationState: state.matriceHabilitationState.clone(
        matriceProfessionState: const MatriceHabilitationProfessionState(status: AllPurposesStatus.ERROR),
      ),
    );
  }

  static EnsState _onFetchMatriceCategorieDocumentAction(
    EnsState state,
    FetchMatriceCategorieDocumentAction action,
  ) {
    if (state.matriceHabilitationState.matriceCategorieDocumentState.status.isNotSuccess()) {
      return state.clone(
        matriceHabilitationState: state.matriceHabilitationState.clone(
          matriceCategorieDocumentState: const MatriceHabilitationCategorieDocumentState(
            status: AllPurposesStatus.LOADING,
          ),
          selectedCategorie: const EnsMatriceCategorieDocument(),
        ),
      );
    } else {
      return state.clone(
        matriceHabilitationState: state.matriceHabilitationState.clone(
          selectedCategorie: const EnsMatriceCategorieDocument(),
        ),
      );
    }
  }

  static EnsState _onProcessFetchMatriceCategorieDocumentSuccessAction(
    EnsState state,
    _ProcessFetchMatriceCategorieDocumentSuccessAction action,
  ) {
    final categories =
        action.matriceCategoriesDocument.toSet().toList().sortedBy((categorieDocument) => categorieDocument.libelle);
    categories.insert(0, const EnsMatriceCategorieDocument());
    return state.clone(
      matriceHabilitationState: state.matriceHabilitationState.clone(
        matriceCategorieDocumentState: MatriceHabilitationCategorieDocumentState(
          status: AllPurposesStatus.SUCCESS,
          matriceCategoriesDocument: categories,
        ),
      ),
    );
  }

  static EnsState _onProcessFetchMatriceCategorieDocumentErrorAction(
    EnsState state,
    _ProcessFetchMatriceCategorieDocumentErrorAction action,
  ) {
    return state.clone(
      matriceHabilitationState: state.matriceHabilitationState.clone(
        matriceCategorieDocumentState: const MatriceHabilitationCategorieDocumentState(
          status: AllPurposesStatus.ERROR,
        ),
      ),
    );
  }

  static EnsState _onSelectMatriceCategorieAction(EnsState state, SelectMatriceCategorieAction action) {
    return state.clone(
      matriceHabilitationState: state.matriceHabilitationState.clone(selectedCategorie: action.selectedCategorie),
    );
  }

  static EnsState _onFetchMatriceResultatAction(EnsState state, FetchMatriceResultatAction action) {
    return state.clone(
      matriceHabilitationState: state.matriceHabilitationState.clone(
        matriceResultatState: const MatriceHabilitationResultatState(status: AllPurposesStatus.LOADING),
      ),
    );
  }

  static EnsState _onProcessFetchMatriceResultatSuccessAction(
    EnsState state,
    _ProcessFetchMatriceResultatSuccessAction action,
  ) {
    return state.clone(
      matriceHabilitationState: state.matriceHabilitationState.clone(
        matriceResultatState: MatriceHabilitationResultatState(
          status: AllPurposesStatus.SUCCESS,
          matriceResultat: action.matriceResult,
        ),
      ),
    );
  }

  static EnsState _onProcessFetchMatriceResultatErrorAction(
    EnsState state,
    _ProcessFetchMatriceResultatErrorAction action,
  ) {
    return state.clone(
      matriceHabilitationState: state.matriceHabilitationState.clone(
        matriceResultatState: const MatriceHabilitationResultatState(status: AllPurposesStatus.ERROR),
      ),
    );
  }
}
