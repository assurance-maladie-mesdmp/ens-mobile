/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'habitudes_de_vie_redux.dart';

class HabitudesDeVieReducers {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, FetchHabitudesDeVieAction>(
          HabitudesDeVieReducers._onFetchHabitudesDeVieAction,
        ).call,
        TypedReducer<EnsState, ProcessFetchHabitudesVieSuccessAction>(
          HabitudesDeVieReducers._onProcessFetchHabitudesVieSuccessAction,
        ).call,
        TypedReducer<EnsState, ProcessFetchHabitudesVieErrorAction>(
          HabitudesDeVieReducers._onProcessFetchHabitudesVieErrorAction,
        ).call,
        TypedReducer<EnsState, ProcessFetchHabitudesVieAnswerSuccessAction>(
          HabitudesDeVieReducers._onProcessFetchHabitudesVieAnswerSuccessAction,
        ).call,
        TypedReducer<EnsState, ProcessFetchHabitudesVieAnswerErrorAction>(
          HabitudesDeVieReducers._onProcessFetchHabitudesVieAnswerErrorAction,
        ).call,
      ];

  static EnsState _onFetchHabitudesDeVieAction(EnsState state, FetchHabitudesDeVieAction action) {
    if (action.force || state.habitudesDeVieState.habitudesDeVieListState.status.isNotSuccess()) {
      return state.clone(
        habitudesDeVieState: state.habitudesDeVieState.clone(
          habitudesDeVieListState: state.habitudesDeVieState.habitudesDeVieListState.clone(
            status: AllPurposesStatus.LOADING,
          ),
        ),
      );
    } else {
      return state;
    }
  }

  static EnsState _onProcessFetchHabitudesVieSuccessAction(
    EnsState state,
    ProcessFetchHabitudesVieSuccessAction action,
  ) {
    return state.clone(
      habitudesDeVieState: state.habitudesDeVieState.clone(
        habitudesDeVieListState: state.habitudesDeVieState.habitudesDeVieListState.clone(
          status: AllPurposesStatus.SUCCESS,
          categories: action.categories,
        ),
      ),
    );
  }

  static EnsState _onProcessFetchHabitudesVieErrorAction(EnsState state, ProcessFetchHabitudesVieErrorAction action) {
    return state.clone(
      habitudesDeVieState: state.habitudesDeVieState.clone(
        habitudesDeVieListState: state.habitudesDeVieState.habitudesDeVieListState.clone(
          status: AllPurposesStatus.ERROR,
        ),
      ),
    );
  }

  static EnsState _onProcessFetchHabitudesVieAnswerSuccessAction(
    EnsState state,
    ProcessFetchHabitudesVieAnswerSuccessAction action,
  ) {
    final habitudesDeVieListState = state.habitudesDeVieState.habitudesDeVieListState;
    final newHabitudeDeVieAnswers = Map.of(state.habitudesDeVieState.habitudesDeVieAnswersState.answers);
    DateTime? lastModificationDate;

    final answer = action.answer;
    if (answer.categoryDetails.isNotEmpty) {
      lastModificationDate = answer.categoryDetails[0].effectiveDate;
      for (final detail in answer.categoryDetails) {
        if (detail.effectiveDate.isAfter(lastModificationDate!)) {
          lastModificationDate = detail.effectiveDate;
        }
      }
    }
    final categoriesUpdated = habitudesDeVieListState.categories.map((categorie) {
      if (categorie.code == answer.categoryCode) {
        return categorie.clone(
          lastModifiedDateOptional: Optional.ofNullable(
            lastModificationDate != null ? EnsDateUtils.formatddmmyyyy(lastModificationDate) : null,
          ),
        );
      }
      return categorie;
    }).toList();

    newHabitudeDeVieAnswers.addEntries({answer.categoryCode: answer.categoryDetails}.entries);
    return state.clone(
      habitudesDeVieState: state.habitudesDeVieState.clone(
        habitudesDeVieListState: state.habitudesDeVieState.habitudesDeVieListState.clone(
          status: AllPurposesStatus.SUCCESS,
          categories: categoriesUpdated,
        ),
        habitudesDeVieAnswersState: state.habitudesDeVieState.habitudesDeVieAnswersState.clone(
          status: AllPurposesStatus.SUCCESS,
          answers: newHabitudeDeVieAnswers,
        ),
      ),
    );
  }

  static EnsState _onProcessFetchHabitudesVieAnswerErrorAction(
    EnsState state,
    ProcessFetchHabitudesVieAnswerErrorAction action,
  ) {
    return state.clone(
      habitudesDeVieState: state.habitudesDeVieState.clone(
        habitudesDeVieAnswersState: state.habitudesDeVieState.habitudesDeVieAnswersState.clone(
          status: AllPurposesStatus.ERROR,
        ),
      ),
    );
  }
}
