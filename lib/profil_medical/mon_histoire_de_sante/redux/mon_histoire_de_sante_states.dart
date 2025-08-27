/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'mon_histoire_de_sante_redux.dart';

class MonHistoireDeSanteState extends Equatable {
  final MonHistoireDeSanteEpisodesState monHistoireDeSanteEpisodesState;
  final MonHistoireDeSanteMaladieInProgressState monHistoireDeSanteMaladieInProgressState;
  final List<EpisodeSanteCategorie> filteredCategories;
  final MonHistoireDeSanteTutorialState monHistoireDeSanteTutorialState;

  const MonHistoireDeSanteState({
    this.monHistoireDeSanteEpisodesState = const MonHistoireDeSanteEpisodesState(),
    this.monHistoireDeSanteMaladieInProgressState = const MonHistoireDeSanteMaladieInProgressState(),
    this.filteredCategories = const [],
    this.monHistoireDeSanteTutorialState = const MonHistoireDeSanteTutorialState(),
  });

  MonHistoireDeSanteState clone({
    MonHistoireDeSanteEpisodesState? monHistoireDeSanteEpisodesState,
    MonHistoireDeSanteMaladieInProgressState? monHistoireDeSanteMaladieInProgressState,
    MonHistoireDeSanteTutorialState? monHistoireDeSanteTutorialState,
    List<EpisodeSanteCategorie>? filteredCategories,
  }) {
    return MonHistoireDeSanteState(
      monHistoireDeSanteEpisodesState: monHistoireDeSanteEpisodesState ?? this.monHistoireDeSanteEpisodesState,
      monHistoireDeSanteMaladieInProgressState:
          monHistoireDeSanteMaladieInProgressState ?? this.monHistoireDeSanteMaladieInProgressState,
      filteredCategories: filteredCategories ?? this.filteredCategories,
      monHistoireDeSanteTutorialState: monHistoireDeSanteTutorialState ?? this.monHistoireDeSanteTutorialState,
    );
  }

  @override
  List<Object?> get props => [
        monHistoireDeSanteEpisodesState,
        monHistoireDeSanteMaladieInProgressState,
        filteredCategories,
        monHistoireDeSanteTutorialState,
      ];
}

class MonHistoireDeSanteEpisodesState extends Equatable {
  final AllPurposesStatus status;
  final AllPurposesStatus paginationStatus;
  final List<MonHistoireDeSanteEpisode> episodes;
  final int currentPage;
  final bool hasNextPage;

  const MonHistoireDeSanteEpisodesState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.paginationStatus = AllPurposesStatus.NOT_LOADED,
    this.episodes = const [],
    this.currentPage = 0,
    this.hasNextPage = false,
  });

  MonHistoireDeSanteEpisodesState clone({
    AllPurposesStatus? status,
    AllPurposesStatus? paginationStatus,
    List<MonHistoireDeSanteEpisode>? episodes,
    int? currentPage,
    bool? hasNextPage,
  }) {
    return MonHistoireDeSanteEpisodesState(
      status: status ?? this.status,
      paginationStatus: paginationStatus ?? this.paginationStatus,
      episodes: episodes ?? this.episodes,
      currentPage: currentPage ?? this.currentPage,
      hasNextPage: hasNextPage ?? this.hasNextPage,
    );
  }

  @override
  List<Object?> get props => [status, paginationStatus, episodes, currentPage, hasNextPage];
}

class MonHistoireDeSanteMaladieInProgressState extends Equatable {
  final AllPurposesStatus status;
  final List<MonHistoireDeSanteEpisodeMaladie> episodesMaladiesInProgress;

  const MonHistoireDeSanteMaladieInProgressState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.episodesMaladiesInProgress = const [],
  });

  MonHistoireDeSanteMaladieInProgressState clone({
    AllPurposesStatus? status,
    List<MonHistoireDeSanteEpisodeMaladie>? episodesMaladiesInProgress,
  }) {
    return MonHistoireDeSanteMaladieInProgressState(
      status: status ?? this.status,
      episodesMaladiesInProgress: episodesMaladiesInProgress ?? this.episodesMaladiesInProgress,
    );
  }

  @override
  List<Object?> get props => [status, episodesMaladiesInProgress];
}

class MonHistoireDeSanteTutorialState extends Equatable {
  final bool shouldDisplayMhsTutorial;

  const MonHistoireDeSanteTutorialState({this.shouldDisplayMhsTutorial = false});

  @override
  List<Object?> get props => [shouldDisplayMhsTutorial];
}
