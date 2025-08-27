/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'incitation_pml_category_redux.dart';

class AddCategoryIncitationPmlReducers {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, InitIncitationPmlCategoryAction>(
          AddCategoryIncitationPmlReducers._onInitIncitationPmlCategoryAction,
        ).call,
        TypedReducer<EnsState, AddIncitationPmlCategoryAction>(
          AddCategoryIncitationPmlReducers._onAddIncitationPmlCategoryAction,
        ).call,
      ];

  static EnsState _onInitIncitationPmlCategoryAction(
    EnsState currentState,
    InitIncitationPmlCategoryAction action,
  ) {
    return currentState.clone(
      incitationPmlCategoryState: const IncitationPmlCategoryState(category: IncitationPmlCategory.NONE),
    );
  }

  static EnsState _onAddIncitationPmlCategoryAction(EnsState currentState, AddIncitationPmlCategoryAction action) {
    switch (action.type) {
      case EnsIncitationType.ALLERGIES:
        return currentState.clone(
          incitationPmlCategoryState: const IncitationPmlCategoryState(category: IncitationPmlCategory.ALLERGIES),
        );
      case EnsIncitationType.MALADIES:
        return currentState.clone(
          incitationPmlCategoryState: const IncitationPmlCategoryState(category: IncitationPmlCategory.MALADIES),
        );
      case EnsIncitationType.TRAITEMENTS:
        return currentState.clone(
          incitationPmlCategoryState: const IncitationPmlCategoryState(
            category: IncitationPmlCategory.TRAITEMENTS,
          ),
        );
    }
  }
}
