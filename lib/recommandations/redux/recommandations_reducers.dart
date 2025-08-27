/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'recommandations_redux.dart';

class RecommandationsReducers {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, ProcessFetchRecommandationsSuccessAction>(
          RecommandationsReducers._onProcessFetchedRecommandationsSuccessAction,
        ).call,
        TypedReducer<EnsState, ProcessFetchRecommandationsErrorAction>(
          RecommandationsReducers._onProcessFetchRecommandationsErrorAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchRecommandationDiffereeSuccessAction>(
          RecommandationsReducers._onProcessFetchRecommandationDiffereeSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessDismissRecommandationSuccessAction>(
          RecommandationsReducers._onProcessDismissRecommandationSuccessAction,
        ).call,
      ];

  static EnsState _onProcessFetchedRecommandationsSuccessAction(
    EnsState state,
    ProcessFetchRecommandationsSuccessAction action,
  ) {
    final recommandationsResponse = action.recommandationsResponse;
    return state.clone(
      recommandationsState: state.recommandationsState.clone(
        status: AllPurposesStatus.SUCCESS,
        recommandations: recommandationsResponse.recommandations,
      ),
      questionnaireAgesClesState: state.questionnaireAgesClesState.clone(
        questionnaireVersionState: state.questionnaireAgesClesState.questionnaireVersionState.clone(
          questionnaireCode: recommandationsResponse.questionnaireCode,
          questionnaireVersionOptional: Optional.ofNullable(recommandationsResponse.questionnaireVersion),
          questionnaireLastVersionOptional: Optional.ofNullable(recommandationsResponse.questionnaireLastVersion),
        ),
      ),
    );
  }

  static EnsState _onProcessFetchRecommandationsErrorAction(
    EnsState state,
    ProcessFetchRecommandationsErrorAction action,
  ) {
    return state.clone(recommandationsState: state.recommandationsState.clone(status: AllPurposesStatus.ERROR));
  }

  static EnsState _onProcessFetchRecommandationDiffereeSuccessAction(
    EnsState state,
    _ProcessFetchRecommandationDiffereeSuccessAction action,
  ) {
    return state.clone(
      recommandationsState: state.recommandationsState.clone(
        recommandationDiffereeOptional: Optional.ofNullable(action.recommandationDifferee),
      ),
    );
  }

  static EnsState _onProcessDismissRecommandationSuccessAction(
    EnsState state,
    _ProcessDismissRecommandationSuccessAction action,
  ) {
    return state.clone(
      recommandationsState: state.recommandationsState.clone(
        recommandationDiffereeOptional: Optional.ofNullable(null),
      ),
    );
  }
}
