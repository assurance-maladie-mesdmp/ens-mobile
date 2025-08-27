/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'recommander_app_redux.dart';

class RecommanderAppReducers {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, _ProcessFetchedRecommanderAppAction>(
          RecommanderAppReducers._onProcessFetchedRecommanderAppAction,
        ).call,
        TypedReducer<EnsState, _ProcessSetRecommanderAppDoneAction>(
          RecommanderAppReducers._onProcessSetRecommanderAppDoneAction,
        ).call,
        TypedReducer<EnsState, _ProcessSetNextRecommanderAppDateAction>(
          RecommanderAppReducers._onProcessSetNextRecommanderAppDateAction,
        ).call,
        TypedReducer<EnsState, SetDoNotDisplayRecommanderAppAction>(
          RecommanderAppReducers._onSetDoNotDisplayRecommanderAppAction,
        ).call,
        TypedReducer<EnsState, TriggerRecommanderAppAction>(
          RecommanderAppReducers._onTriggerRecommanderAppAction,
        ).call,
      ];

  static EnsState _onProcessFetchedRecommanderAppAction(
    EnsState state,
    _ProcessFetchedRecommanderAppAction action,
  ) {
    return state.clone(
      recommanderAppState: state.recommanderAppState.clone(
        isRecommanderAppDone: action.isRecommanderAppDone,
        nextRecommanderAppDateOptional: Optional.ofNullable(action.nextRecommanderAppDate),
      ),
    );
  }

  static EnsState _onProcessSetRecommanderAppDoneAction(
    EnsState state,
    _ProcessSetRecommanderAppDoneAction action,
  ) {
    return state.clone(
      recommanderAppState: state.recommanderAppState.clone(
        isRecommanderAppDone: action.isRecommanderAppDone,
      ),
    );
  }

  static EnsState _onProcessSetNextRecommanderAppDateAction(
    EnsState state,
    _ProcessSetNextRecommanderAppDateAction action,
  ) {
    return state.clone(
      recommanderAppState: state.recommanderAppState.clone(
        nextRecommanderAppDateOptional: Optional.of(action.nextRecommanderAppDate),
      ),
    );
  }

  static EnsState _onSetDoNotDisplayRecommanderAppAction(
    EnsState state,
    SetDoNotDisplayRecommanderAppAction action,
  ) {
    return state.clone(
      recommanderAppState: state.recommanderAppState.clone(isOtherSurveyAlreadyTriggered: true),
    );
  }

  static EnsState _onTriggerRecommanderAppAction(
    EnsState state,
    TriggerRecommanderAppAction action,
  ) {
    return state.clone(
      recommanderAppState: state.recommanderAppState.clone(
        actionTriggeredFromOptional: Optional.of(action.actionTriggeredFrom),
      ),
    );
  }
}
