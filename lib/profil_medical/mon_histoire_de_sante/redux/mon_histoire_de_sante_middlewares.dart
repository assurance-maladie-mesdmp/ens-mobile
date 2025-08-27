/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'mon_histoire_de_sante_redux.dart';

class MonHistoireDeSanteMiddlewares {
  final IMonHistoireDeSanteRepository monHistoireDeSanteRepository;
  final ISecureStorageRepository secureStorageRepository;

  MonHistoireDeSanteMiddlewares(
    this.monHistoireDeSanteRepository,
    this.secureStorageRepository,
  );

  static List<Middleware<EnsState>> create(
    IMonHistoireDeSanteRepository monHistoireDeSanteRepository,
    ISecureStorageRepository secureStorageRepository,
  ) {
    final middlewares = MonHistoireDeSanteMiddlewares(monHistoireDeSanteRepository, secureStorageRepository);

    return [
      TypedMiddleware<EnsState, FetchMonHistoireDeSanteAction>(middlewares._onFetchMonHistoireDeSanteAction).call,
      TypedMiddleware<EnsState, FetchMonHistoireDeSanteEpisodesAction>(
        middlewares._onFetchMonHistoireDeSanteEpisodesAction,
      ).call,
      TypedMiddleware<EnsState, FetchMonHistoireDeSanteEpisodesNextPageAction>(
        middlewares._onFetchMonHistoireDeSanteEpisodesNextPageAction,
      ).call,
      TypedMiddleware<EnsState, FetchMaladiesInProgressAction>(middlewares._onFetchMaladiesInProgressAction).call,
      TypedMiddleware<EnsState, FetchMonHistoireDeSanteTutorialAction>(
        middlewares._onFetchMonHistoireDeSanteTutorialAction,
      ).call,
      TypedMiddleware<EnsState, UpdateMonHistoireDeSanteTutorialAction>(
        middlewares._onUpdateMonHistoireDeSanteTutorialAction,
      ).call,
    ];
  }

  Future<void> _onFetchMonHistoireDeSanteAction(
    Store<EnsState> store,
    FetchMonHistoireDeSanteAction action,
    NextDispatcher next,
  ) async {
    next(action);
    store.dispatch(FetchMonHistoireDeSanteEpisodesAction(force: action.force));
    store.dispatch(FetchMaladiesInProgressAction(force: action.force));
  }

  Future<void> _onFetchMonHistoireDeSanteEpisodesAction(
    Store<EnsState> store,
    FetchMonHistoireDeSanteEpisodesAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    if (action.force || store.state.monHistoireDeSanteState.monHistoireDeSanteEpisodesState.status.isNotSuccess()) {
      final result = await monHistoireDeSanteRepository.getMonHistoireDeSanteEpisodes(patientId: patientId);
      result.onSuccess((successResult) {
        store.dispatch(
          ProcessFetchMonHistoireDeSanteEpisodesSuccessAction(
            episodes: successResult.episodes,
            maxEpisodes: successResult.maxEpisodes,
          ),
        );
      }).onError((error) {
        store.dispatch(ProcessFetchMonHistoireDeSanteEpisodesErrorAction());
      });
    }
  }

  Future<void> _onFetchMonHistoireDeSanteEpisodesNextPageAction(
    Store<EnsState> store,
    FetchMonHistoireDeSanteEpisodesNextPageAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final nextPage = store.state.monHistoireDeSanteState.monHistoireDeSanteEpisodesState.currentPage + 1;
    final result = await monHistoireDeSanteRepository.getMonHistoireDeSanteEpisodes(
      patientId: patientId,
      page: nextPage,
    );
    result.onSuccess((successResult) {
      store.dispatch(
        _ProcessFetchMonHistoireDeSanteEpisodesNextPageSuccessAction(
          episodes: successResult.episodes,
          currentPage: nextPage,
          maxEpisodes: successResult.maxEpisodes,
        ),
      );
    }).onError((error) {
      store.dispatch(_ProcessFetchMonHistoireDeSanteEpisodesNextPageErrorAction());
      store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
    });
  }

  Future<void> _onFetchMaladiesInProgressAction(
    Store<EnsState> store,
    FetchMaladiesInProgressAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    if (action.force ||
        store.state.monHistoireDeSanteState.monHistoireDeSanteMaladieInProgressState.status.isNotSuccess()) {
      final result = await monHistoireDeSanteRepository.getMaladiesInProgress(patientId);
      result.onSuccess((successResult) {
        store.dispatch(ProcessFetchMaladiesInProgressSuccessAction(successResult));
      }).onError((error) {
        store.dispatch(ProcessFetchMaladiesInProgressErrorAction());
      });
    }
  }

  Future<void> _onFetchMonHistoireDeSanteTutorialAction(
    Store<EnsState> store,
    FetchMonHistoireDeSanteTutorialAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getConnectedUserPatientId(store.state);
    final shouldDisplayMhsTutorial = await secureStorageRepository.readShouldDisplayMhsTutorial(patientId);
    store.dispatch(_ProcessFetchMonHistoireDeSanteTutorialSuccessAction(shouldDisplayMhsTutorial));
  }

  Future<void> _onUpdateMonHistoireDeSanteTutorialAction(
    Store<EnsState> store,
    UpdateMonHistoireDeSanteTutorialAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getConnectedUserPatientId(store.state);
    await secureStorageRepository.writeShouldDisplayMhsTutorial(patientId);
  }
}
