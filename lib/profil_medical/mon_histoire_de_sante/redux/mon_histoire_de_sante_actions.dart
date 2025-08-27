/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'mon_histoire_de_sante_redux.dart';

class FetchMonHistoireDeSanteAction {
  final bool force;

  const FetchMonHistoireDeSanteAction({this.force = false});
}

class FetchMonHistoireDeSanteEpisodesAction {
  final bool force;

  const FetchMonHistoireDeSanteEpisodesAction({this.force = false});
}

class ProcessFetchMonHistoireDeSanteEpisodesSuccessAction {
  final List<MonHistoireDeSanteEpisode> episodes;
  final int maxEpisodes;

  ProcessFetchMonHistoireDeSanteEpisodesSuccessAction({required this.episodes, required this.maxEpisodes});
}

class ProcessFetchMonHistoireDeSanteEpisodesErrorAction {}

class FetchMonHistoireDeSanteEpisodesNextPageAction {}

class _ProcessFetchMonHistoireDeSanteEpisodesNextPageSuccessAction {
  final List<MonHistoireDeSanteEpisode> episodes;
  final int currentPage;
  final int maxEpisodes;

  _ProcessFetchMonHistoireDeSanteEpisodesNextPageSuccessAction({
    required this.episodes,
    required this.currentPage,
    required this.maxEpisodes,
  });
}

class _ProcessFetchMonHistoireDeSanteEpisodesNextPageErrorAction {}

class FetchMaladiesInProgressAction {
  final bool force;

  const FetchMaladiesInProgressAction({this.force = false});
}

class ProcessFetchMaladiesInProgressSuccessAction {
  final List<MonHistoireDeSanteEpisodeMaladie> maladiesInProgress;

  ProcessFetchMaladiesInProgressSuccessAction(this.maladiesInProgress);
}

class ProcessFetchMaladiesInProgressErrorAction {}

class UpdateMonHistoireDeSanteFiltersAction {
  final List<EpisodeSanteCategorie> filteredCategories;

  UpdateMonHistoireDeSanteFiltersAction(this.filteredCategories);
}

class FetchMonHistoireDeSanteTutorialAction {}

class UpdateMonHistoireDeSanteTutorialAction {}

class _ProcessFetchMonHistoireDeSanteTutorialSuccessAction {
  final bool shouldDisplayMhsTutorial;

  _ProcessFetchMonHistoireDeSanteTutorialSuccessAction(this.shouldDisplayMhsTutorial);
}
