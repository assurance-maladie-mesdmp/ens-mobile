/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/parameters/acces_ps_a_mes_donnees/confidentialite_documents/redux/confidentialite_documents_actions.dart';
import 'package:fr_cnamts_ens/parameters/acces_ps_a_mes_donnees/confidentialite_documents/screens/confidentialite_documents_screen_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/domain/models/mon_histoire_de_sante_episode.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/domain/models/mon_histoire_de_sante_item.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/redux/mon_histoire_de_sante_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/displayModel/mon_histoire_de_sante_display_model.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/displayModel/mon_histoire_de_sante_vue_mois_display_model.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/viewmodels/mon_histoire_de_sante_category.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/redux/vaccinations_redux.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/user/redux/user_selectors.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:fr_cnamts_ens/utils/ens_date_utils.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';
import 'package:redux/redux.dart';

class MonHistoireDeSanteScreenViewModel extends Equatable {
  final HistoireDeSanteListStatus listStatus;
  final AllPurposesStatus paginationStatus;
  final ConfidentialiteStatus confidentialiteStatus;
  final List<MonHistoireDeSanteDisplayModel> vueJoursDisplayModels;
  final List<MonHistoireDeSanteVueMoisDisplayModel> vueMoisDisplayModels;
  final MonHistoireDeSanteVueMoisCategoryDisplayModel? currentMaladiesDisplayModel;
  final List<EpisodeSanteCategorie> availableCategoriesForFilter;
  final List<EpisodeSanteCategorie> preSelectedCategories;
  final bool canModifyConfidentiality;
  final bool shouldDisplayMhsTutorial;
  final String? firstName;
  final void Function() fetchMonHistoireDeSante;
  final void Function() fetchMonHistoireDeSanteNextPageEpisodes;
  final ProfilType profilType;

  bool get isMasked => confidentialiteStatus == ConfidentialiteStatus.MASKED;

  const MonHistoireDeSanteScreenViewModel._internal({
    required this.listStatus,
    required this.paginationStatus,
    required this.confidentialiteStatus,
    required this.vueJoursDisplayModels,
    required this.vueMoisDisplayModels,
    required this.currentMaladiesDisplayModel,
    required this.availableCategoriesForFilter,
    required this.preSelectedCategories,
    required this.canModifyConfidentiality,
    required this.shouldDisplayMhsTutorial,
    required this.firstName,
    required this.fetchMonHistoireDeSante,
    required this.fetchMonHistoireDeSanteNextPageEpisodes,
    required this.profilType,
  });

  factory MonHistoireDeSanteScreenViewModel.from(Store<EnsState> store) {
    final monHistoireDeSanteState = store.state.monHistoireDeSanteState;
    final shouldDisplayMhsTutorial = monHistoireDeSanteState.monHistoireDeSanteTutorialState.shouldDisplayMhsTutorial;
    final defaultConfidentialityState = store.state.documentsState.defaultConfidentialityState;
    final profilType = ProfilsUtils.getCurrentProfilType(store.state);

    ConfidentialiteStatus confidentialiteStatus = ConfidentialiteStatus.LOADING;
    if (defaultConfidentialityState.isSuccessWithData) {
      confidentialiteStatus = defaultConfidentialityState.defaultConfidentiality == DefaultConfidentiality.MASKED
          ? ConfidentialiteStatus.MASKED
          : ConfidentialiteStatus.VISIBLE;
    } else if (defaultConfidentialityState.isErrorOrSuccessWithoutData) {
      confidentialiteStatus = ConfidentialiteStatus.ERROR;
    }

    final monHistoireDeSanteEpisodesState = monHistoireDeSanteState.monHistoireDeSanteEpisodesState;
    final monHistoireDeSanteMaladieInProgressState = monHistoireDeSanteState.monHistoireDeSanteMaladieInProgressState;
    var listStatus = HistoireDeSanteListStatus.LOADING;
    List<MonHistoireDeSanteDisplayModel> vueJoursDisplayModels = [];
    List<MonHistoireDeSanteVueMoisDisplayModel> vueMoisDisplayModels = [];
    List<EpisodeSanteCategorie> availableCategoriesForFilter = [];
    List<EpisodeSanteCategorie> preSelectedCategories = [];
    MonHistoireDeSanteVueMoisCategoryDisplayModel? currentMaladiesDisplayModel;
    bool canModifyConfidentiality = false;

    if (monHistoireDeSanteEpisodesState.status.isSuccess() &&
        monHistoireDeSanteMaladieInProgressState.status.isSuccess()) {
      final episodes = monHistoireDeSanteEpisodesState.episodes;
      final filteredCategories = monHistoireDeSanteState.filteredCategories;
      final filteredEpisodes = episodes
          .where((element) => filteredCategories.isEmpty || filteredCategories.contains(element.categorie))
          .toList();
      preSelectedCategories = filteredCategories.removeDuplicates();

      currentMaladiesDisplayModel = MonHistoireDeSanteVueMoisCategoryDisplayModel(
        _getMaladiesInProgressDisplayModels(monHistoireDeSanteMaladieInProgressState.episodesMaladiesInProgress),
        EpisodeSanteCategorie.MALADIE,
      );

      listStatus = monHistoireDeSanteEpisodesState.episodes.isEmpty &&
              _getMaladiesInProgressDisplayModels(monHistoireDeSanteMaladieInProgressState.episodesMaladiesInProgress)
                  .isEmpty
          ? HistoireDeSanteListStatus.EMPTY
          : HistoireDeSanteListStatus.SUCCESS;

      canModifyConfidentiality = _canModifyConfidentiality(episodes);
      vueJoursDisplayModels = _getVueJoursDisplayModels(filteredEpisodes, monHistoireDeSanteEpisodesState.hasNextPage);
      vueMoisDisplayModels = _getVueMoisDisplayModels(filteredEpisodes, monHistoireDeSanteEpisodesState.hasNextPage);
      availableCategoriesForFilter = _getAvailableCategoriesForFilter(episodes);
      availableCategoriesForFilter.sort((a, b) => a.getLabel().compareTo(b.getLabel()));
    } else if (monHistoireDeSanteEpisodesState.status.isError() ||
        monHistoireDeSanteMaladieInProgressState.status.isError()) {
      listStatus = HistoireDeSanteListStatus.ERROR;
    }

    return MonHistoireDeSanteScreenViewModel._internal(
      listStatus: listStatus,
      paginationStatus: monHistoireDeSanteEpisodesState.paginationStatus,
      confidentialiteStatus: confidentialiteStatus,
      vueJoursDisplayModels: vueJoursDisplayModels,
      vueMoisDisplayModels: vueMoisDisplayModels,
      currentMaladiesDisplayModel: currentMaladiesDisplayModel,
      availableCategoriesForFilter: availableCategoriesForFilter,
      preSelectedCategories: preSelectedCategories,
      canModifyConfidentiality: canModifyConfidentiality,
      shouldDisplayMhsTutorial: shouldDisplayMhsTutorial,
      firstName: UserSelectors.getFirstName(store.state),
      fetchMonHistoireDeSante: () {
        store.dispatch(const FetchMonHistoireDeSanteAction());
        store.dispatch(const FetchDefaultConfidentialityAction());
        store.dispatch(FetchMonHistoireDeSanteTutorialAction());
        store.dispatch(const FetchVaccinationsAction());
      },
      fetchMonHistoireDeSanteNextPageEpisodes: () => store.dispatch(FetchMonHistoireDeSanteEpisodesNextPageAction()),
      profilType: profilType,
    );
  }

  static bool _canModifyConfidentiality(List<MonHistoireDeSanteEpisode> episodes) {
    return episodes.any(
      (episode) =>
          episode.categorie != EpisodeSanteCategorie.VACCINATION && episode.categorie != EpisodeSanteCategorie.MALADIE,
    );
  }

  static List<MonHistoireDeSanteEpisodeDisplayModel> _getMaladiesInProgressDisplayModels(
    List<MonHistoireDeSanteEpisodeMaladie> episodes,
  ) {
    final List<MonHistoireDeSanteEpisodeDisplayModel> vueJoursDisplayModels = [];
    for (final episode in episodes) {
      vueJoursDisplayModels.add(MonHistoireDeSanteEpisodeDisplayModel(episode: episode, auteur: null, delivreur: null));
    }
    return vueJoursDisplayModels;
  }

  static List<EpisodeSanteCategorie> _getAvailableCategoriesForFilter(List<MonHistoireDeSanteEpisode> episodes) =>
      EpisodeSanteCategorie.values
          .where((category) => episodes.any((element) => element.categorie == category))
          .toList();

  static List<MonHistoireDeSanteDisplayModel> _getVueJoursDisplayModels(
    List<MonHistoireDeSanteEpisode> episodes,
    bool hasNextPage,
  ) {
    final List<MonHistoireDeSanteDisplayModel> vueJoursDisplayModels = [];
    String? yearProcessed;
    DateTime? dateProcessed;
    for (final episode in episodes) {
      if (yearProcessed == null || yearProcessed != episode.date.year.toString()) {
        final String newYear = episode.date.year.toString();
        yearProcessed = newYear;
        vueJoursDisplayModels.add(MonHistoireDeSanteDisplayModel.year(newYear));
      }
      if (dateProcessed == null || dateProcessed != episode.date) {
        final DateTime newDate = episode.date;
        dateProcessed = newDate;
        vueJoursDisplayModels.add(
          MonHistoireDeSanteDisplayModel.date(EnsDateUtils.formatDayPlainTextMonthAndYear(newDate)),
        );
      }
      vueJoursDisplayModels.add(
        MonHistoireDeSanteDisplayModel.episode(
          episode: episode,
          auteur: _getAuteur(episode),
          delivreur: _getDelivreur(episode),
        ),
      );
    }
    if (hasNextPage) {
      vueJoursDisplayModels.add(const MonHistoireDeSanteDisplayModel.displayMoreButton());
    }
    return vueJoursDisplayModels;
  }

  static List<MonHistoireDeSanteVueMoisDisplayModel> _getVueMoisDisplayModels(
    List<MonHistoireDeSanteEpisode> episodes,
    bool hasNextPage,
  ) {
    final List<MonHistoireDeSanteVueMoisDisplayModel> vueMoisDisplayModels = [];
    int? monthProcessed;
    int? yearProcessed;
    for (final episode in episodes) {
      if (monthProcessed == null ||
          monthProcessed != episode.date.month ||
          yearProcessed == null ||
          yearProcessed != episode.date.year) {
        final String newMonth = EnsDateUtils.formatPlainTextMonthAndYear(episode.date).capitalize();
        monthProcessed = episode.date.month;
        yearProcessed = episode.date.year;
        vueMoisDisplayModels.add(MonHistoireDeSanteVueMoisMonthDisplayModel(newMonth));
      }
      final categoryItemDisplayModel = _getCorrespondingCategory(vueMoisDisplayModels, episode);
      final ensMonHistoireDeSanteVueJoursDisplayModelForList = MonHistoireDeSanteDisplayModel.episode(
        episode: episode,
        auteur: _getAuteur(episode),
        delivreur: _getDelivreur(episode),
      ) as MonHistoireDeSanteEpisodeDisplayModel;
      if (categoryItemDisplayModel is MonHistoireDeSanteVueMoisCategoryDisplayModel) {
        categoryItemDisplayModel.items.add(
          ensMonHistoireDeSanteVueJoursDisplayModelForList,
        );
      } else {
        vueMoisDisplayModels.add(
          MonHistoireDeSanteVueMoisCategoryDisplayModel(
            [ensMonHistoireDeSanteVueJoursDisplayModelForList],
            ensMonHistoireDeSanteVueJoursDisplayModelForList.episode.categorie,
          ),
        );
      }
    }
    if (hasNextPage) {
      vueMoisDisplayModels.add(MonHistoireDeSanteVueMoisDisplayMoreButtonDisplayModel());
    }
    return vueMoisDisplayModels;
  }

  static MonHistoireDeSanteVueMoisDisplayModel? _getCorrespondingCategory(
    List<MonHistoireDeSanteVueMoisDisplayModel> vueMoisDisplayModels,
    MonHistoireDeSanteEpisode episode,
  ) {
    return vueMoisDisplayModels.firstWhereOrNull(
      (vueMoisDisplayModel) =>
          vueMoisDisplayModel is MonHistoireDeSanteVueMoisCategoryDisplayModel &&
          vueMoisDisplayModel.items.any(
            (existingItem) {
              final bool month = existingItem.episode.date.month == episode.date.month;
              final bool year = existingItem.episode.date.year == episode.date.year;
              bool category;
              if (existingItem.episode is MonHistoireDeSanteEpisodeMaladie) {
                final episodeMaladie = existingItem.episode as MonHistoireDeSanteEpisodeMaladie;
                category = episodeMaladie.categorie.getLabel(currentMaladie: false) ==
                    episode.categorie.getLabel(currentMaladie: false);
              } else {
                category = existingItem.episode.categorie.getLabel() == episode.categorie.getLabel();
              }
              return month && year && category;
            },
          ),
    );
  }

  @override
  List<Object?> get props => [
        listStatus,
        paginationStatus,
        vueJoursDisplayModels,
        confidentialiteStatus,
        vueMoisDisplayModels,
        currentMaladiesDisplayModel,
        availableCategoriesForFilter,
        preSelectedCategories,
        canModifyConfidentiality,
        shouldDisplayMhsTutorial,
        profilType,
        firstName,
      ];
}

EpisodeActeurSante? _getAuteur(MonHistoireDeSanteEpisode episode) {
  switch (episode.categorie) {
    case EpisodeSanteCategorie.SOINS:
      return (episode as MonHistoireDeSanteEpisodeSoins).items[0].auteur;
    case EpisodeSanteCategorie.BIOLOGIE:
      return (episode as MonHistoireDeSanteEpisodeBiologie).items[0].auteur;
    case EpisodeSanteCategorie.MEDICAMENTS:
      return (episode as MonHistoireDeSanteEpisodeMedicaments).items[0].prescripteur;
    case EpisodeSanteCategorie.RADIOLOGIE:
      return (episode as MonHistoireDeSanteEpisodeRadiologie).items[0].auteur;
    case EpisodeSanteCategorie.DISPOSITIFS_MEDICAUX:
      return (episode as MonHistoireDeSanteEpisodeDispositifsMedicaux).items[0].prescripteur;
    case EpisodeSanteCategorie.VACCIN:
      return (episode as MonHistoireDeSanteEpisodeVaccin).items[0].prescripteur;
    case EpisodeSanteCategorie.HOSPITALISATION:
      return (episode as MonHistoireDeSanteEpisodeHospitalisation).hopital;
    case EpisodeSanteCategorie.VACCINATION:
    case EpisodeSanteCategorie.MALADIE:
      return null;
  }
}

EpisodeActeurSante? _getDelivreur(MonHistoireDeSanteEpisode episode) {
  switch (episode.categorie) {
    case EpisodeSanteCategorie.MEDICAMENTS:
      return (episode as MonHistoireDeSanteEpisodeMedicaments).items[0].delivreur;
    case EpisodeSanteCategorie.VACCIN:
      return (episode as MonHistoireDeSanteEpisodeVaccin).items[0].delivreur;
    default:
      return null;
  }
}

enum HistoireDeSanteListStatus { LOADING, SUCCESS, EMPTY, ERROR }
