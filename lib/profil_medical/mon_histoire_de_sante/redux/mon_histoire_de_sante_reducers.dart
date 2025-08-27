/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'mon_histoire_de_sante_redux.dart';

class MonHistoireDeSanteReducers {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, FetchMonHistoireDeSanteEpisodesAction>(
          MonHistoireDeSanteReducers._onFetchMonHistoireDeSanteEpisodesAction,
        ).call,
        TypedReducer<EnsState, ProcessFetchMonHistoireDeSanteEpisodesSuccessAction>(
          MonHistoireDeSanteReducers._onProcessFetchMonHistoireDeSanteEpisodesSuccessAction,
        ).call,
        TypedReducer<EnsState, ProcessFetchMonHistoireDeSanteEpisodesErrorAction>(
          MonHistoireDeSanteReducers._onProcessFetchMonHistoireDeSanteEpisodesErrorAction,
        ).call,
        TypedReducer<EnsState, FetchMonHistoireDeSanteEpisodesNextPageAction>(
          MonHistoireDeSanteReducers._onFetchMonHistoireDeSanteEpisodesNextPageAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchMonHistoireDeSanteEpisodesNextPageSuccessAction>(
          MonHistoireDeSanteReducers._onProcessFetchMonHistoireDeSanteEpisodesNextPageSuccessAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchMonHistoireDeSanteEpisodesNextPageErrorAction>(
          MonHistoireDeSanteReducers._onProcessFetchMonHistoireDeSanteEpisodesNextPageErrorAction,
        ).call,
        TypedReducer<EnsState, FetchMaladiesInProgressAction>(
          MonHistoireDeSanteReducers._onFetchMaladiesInProgressAction,
        ).call,
        TypedReducer<EnsState, ProcessFetchMaladiesInProgressSuccessAction>(
          MonHistoireDeSanteReducers._onProcessFetchMaladiesInProgressSuccessAction,
        ).call,
        TypedReducer<EnsState, ProcessFetchMaladiesInProgressErrorAction>(
          MonHistoireDeSanteReducers._onProcessFetchMaladiesInProgressErrorAction,
        ).call,
        TypedReducer<EnsState, UpdateMonHistoireDeSanteFiltersAction>(
          MonHistoireDeSanteReducers._onUpdateMonHistoireDeSanteFiltersAction,
        ).call,
        TypedReducer<EnsState, _ProcessFetchMonHistoireDeSanteTutorialSuccessAction>(
          MonHistoireDeSanteReducers._onProcessFetchMonHistoireDeSanteTutorialSuccessAction,
        ).call,
        TypedReducer<EnsState, UpdateMonHistoireDeSanteTutorialAction>(
          MonHistoireDeSanteReducers._onUpdateMonHistoireDeSanteTutorialAction,
        ).call,
      ];

  static EnsState _onFetchMonHistoireDeSanteEpisodesAction(
    EnsState state,
    FetchMonHistoireDeSanteEpisodesAction action,
  ) {
    if (action.force || state.monHistoireDeSanteState.monHistoireDeSanteEpisodesState.status.isNotSuccess()) {
      return state.clone(
        monHistoireDeSanteState: state.monHistoireDeSanteState.clone(
          monHistoireDeSanteEpisodesState: state.monHistoireDeSanteState.monHistoireDeSanteEpisodesState.clone(
            status: AllPurposesStatus.LOADING,
          ),
        ),
      );
    } else {
      return state;
    }
  }

  static EnsState _onProcessFetchMonHistoireDeSanteEpisodesSuccessAction(
    EnsState state,
    ProcessFetchMonHistoireDeSanteEpisodesSuccessAction action,
  ) {
    return state.clone(
      monHistoireDeSanteState: state.monHistoireDeSanteState.clone(
        monHistoireDeSanteEpisodesState: state.monHistoireDeSanteState.monHistoireDeSanteEpisodesState.clone(
          status: AllPurposesStatus.SUCCESS,
          episodes: action.episodes,
          currentPage: 1,
          hasNextPage: action.episodes.length < action.maxEpisodes,
        ),
      ),
    );
  }

  static EnsState _onProcessFetchMonHistoireDeSanteEpisodesErrorAction(
    EnsState state,
    ProcessFetchMonHistoireDeSanteEpisodesErrorAction action,
  ) {
    return state.clone(
      monHistoireDeSanteState: state.monHistoireDeSanteState.clone(
        monHistoireDeSanteEpisodesState: state.monHistoireDeSanteState.monHistoireDeSanteEpisodesState.clone(
          status: AllPurposesStatus.ERROR,
        ),
      ),
    );
  }

  static EnsState _onFetchMonHistoireDeSanteEpisodesNextPageAction(
    EnsState state,
    FetchMonHistoireDeSanteEpisodesNextPageAction action,
  ) {
    return state.clone(
      monHistoireDeSanteState: state.monHistoireDeSanteState.clone(
        monHistoireDeSanteEpisodesState: state.monHistoireDeSanteState.monHistoireDeSanteEpisodesState.clone(
          paginationStatus: AllPurposesStatus.LOADING,
        ),
      ),
    );
  }

  static EnsState _onProcessFetchMonHistoireDeSanteEpisodesNextPageSuccessAction(
    EnsState state,
    _ProcessFetchMonHistoireDeSanteEpisodesNextPageSuccessAction action,
  ) {
    final newEpisodes =
        List<MonHistoireDeSanteEpisode>.from(state.monHistoireDeSanteState.monHistoireDeSanteEpisodesState.episodes)
          ..addAll(action.episodes);
    return state.clone(
      monHistoireDeSanteState: state.monHistoireDeSanteState.clone(
        monHistoireDeSanteEpisodesState: state.monHistoireDeSanteState.monHistoireDeSanteEpisodesState.clone(
          paginationStatus: AllPurposesStatus.SUCCESS,
          episodes: newEpisodes,
          currentPage: action.currentPage,
          hasNextPage: newEpisodes.length < action.maxEpisodes,
        ),
      ),
    );
  }

  static EnsState _onProcessFetchMonHistoireDeSanteEpisodesNextPageErrorAction(
    EnsState state,
    _ProcessFetchMonHistoireDeSanteEpisodesNextPageErrorAction action,
  ) {
    return state.clone(
      monHistoireDeSanteState: state.monHistoireDeSanteState.clone(
        monHistoireDeSanteEpisodesState: state.monHistoireDeSanteState.monHistoireDeSanteEpisodesState.clone(
          paginationStatus: AllPurposesStatus.ERROR,
        ),
      ),
    );
  }

  static EnsState _onFetchMaladiesInProgressAction(
    EnsState state,
    FetchMaladiesInProgressAction action,
  ) {
    if (action.force || state.monHistoireDeSanteState.monHistoireDeSanteMaladieInProgressState.status.isNotSuccess()) {
      return state.clone(
        monHistoireDeSanteState: state.monHistoireDeSanteState.clone(
          monHistoireDeSanteMaladieInProgressState:
              state.monHistoireDeSanteState.monHistoireDeSanteMaladieInProgressState.clone(
            status: AllPurposesStatus.LOADING,
          ),
        ),
      );
    } else {
      return state;
    }
  }

  static EnsState _onProcessFetchMaladiesInProgressSuccessAction(
    EnsState state,
    ProcessFetchMaladiesInProgressSuccessAction action,
  ) {
    return state.clone(
      monHistoireDeSanteState: state.monHistoireDeSanteState.clone(
        monHistoireDeSanteMaladieInProgressState:
            state.monHistoireDeSanteState.monHistoireDeSanteMaladieInProgressState.clone(
          status: AllPurposesStatus.SUCCESS,
          episodesMaladiesInProgress: action.maladiesInProgress,
        ),
      ),
    );
  }

  static EnsState _onProcessFetchMaladiesInProgressErrorAction(
    EnsState state,
    ProcessFetchMaladiesInProgressErrorAction action,
  ) {
    return state.clone(
      monHistoireDeSanteState: state.monHistoireDeSanteState.clone(
        monHistoireDeSanteMaladieInProgressState:
            state.monHistoireDeSanteState.monHistoireDeSanteMaladieInProgressState.clone(
          status: AllPurposesStatus.ERROR,
        ),
      ),
    );
  }

  static EnsState _onUpdateMonHistoireDeSanteFiltersAction(
    EnsState state,
    UpdateMonHistoireDeSanteFiltersAction action,
  ) {
    return state.clone(
      monHistoireDeSanteState: state.monHistoireDeSanteState.clone(filteredCategories: action.filteredCategories),
    );
  }

  static EnsState _onProcessFetchMonHistoireDeSanteTutorialSuccessAction(
    EnsState state,
    _ProcessFetchMonHistoireDeSanteTutorialSuccessAction action,
  ) {
    return state.clone(
      monHistoireDeSanteState: state.monHistoireDeSanteState.clone(
        monHistoireDeSanteTutorialState: MonHistoireDeSanteTutorialState(
          shouldDisplayMhsTutorial: action.shouldDisplayMhsTutorial,
        ),
      ),
    );
  }

  static EnsState _onUpdateMonHistoireDeSanteTutorialAction(
    EnsState state,
    UpdateMonHistoireDeSanteTutorialAction action,
  ) {
    return state.clone(
      monHistoireDeSanteState: state.monHistoireDeSanteState.clone(
        monHistoireDeSanteTutorialState: const MonHistoireDeSanteTutorialState(shouldDisplayMhsTutorial: false),
      ),
    );
  }
}
