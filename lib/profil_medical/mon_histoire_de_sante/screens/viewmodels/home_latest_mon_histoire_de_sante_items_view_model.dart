/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/domain/models/mon_histoire_de_sante_episode.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/domain/models/mon_histoire_de_sante_item.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/redux/mon_histoire_de_sante_selectors.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/displayModel/mon_histoire_de_sante_display_model.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/viewmodels/mon_histoire_de_sante_screen_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/redux/vaccinations_redux.dart';
import 'package:fr_cnamts_ens/utils/ens_date_utils.dart';
import 'package:fr_cnamts_ens/utils/extensions/profil_extension.dart';
import 'package:redux/redux.dart';

class HomeLatestMonHistoireDeSanteItemsViewModel extends Equatable {
  final HistoireDeSanteListStatus status;
  final List<MonHistoireDeSanteDisplayModel> displayModels;
  final bool isMainProfile;
  final String mainFirstName;
  final void Function() fetchVaccinationsWhenNeeded;

  const HomeLatestMonHistoireDeSanteItemsViewModel._internal({
    required this.status,
    required this.displayModels,
    required this.isMainProfile,
    required this.mainFirstName,
    required this.fetchVaccinationsWhenNeeded,
  });

  factory HomeLatestMonHistoireDeSanteItemsViewModel.from(Store<EnsState> store) {
    final userState = store.state.userState;
    final monHistoireDeSanteEpisodesState = store.state.monHistoireDeSanteState.monHistoireDeSanteEpisodesState;
    HistoireDeSanteListStatus status = HistoireDeSanteListStatus.LOADING;
    final List<MonHistoireDeSanteDisplayModel> displayModels = [];

    if (monHistoireDeSanteEpisodesState.status.isSuccess()) {
      status = monHistoireDeSanteEpisodesState.episodes.isEmpty
          ? HistoireDeSanteListStatus.EMPTY
          : HistoireDeSanteListStatus.SUCCESS;
      final episodes = MonHistoireDeSanteSelectors.getLastDayMonHistoireDeSanteEpisodes(store.state);

      DateTime? dateProcessed;
      for (final episode in episodes) {
        if (dateProcessed == null || dateProcessed != episode.date) {
          final DateTime newDate = episode.date;
          dateProcessed = newDate;
          displayModels.add(
            MonHistoireDeSanteDisplayModel.date(EnsDateUtils.formatDayPlainTextMonthAndYear(newDate)),
          );
        }
        displayModels.add(
          MonHistoireDeSanteDisplayModel.episode(
            episode: episode,
            auteur: _getAuteur(episode),
            delivreur: _getDelivreur(episode),
          ),
        );
      }
    } else if (monHistoireDeSanteEpisodesState.status.isError()) {
      status = HistoireDeSanteListStatus.ERROR;
    }

    return HomeLatestMonHistoireDeSanteItemsViewModel._internal(
      status: status,
      displayModels: displayModels,
      isMainProfile: userState.isMainProfile,
      mainFirstName: userState.currentProfile.mainFirstName,
      fetchVaccinationsWhenNeeded: () {
        final episodeVaccination = displayModels.firstWhereOrNull(
          (displayModel) =>
              displayModel is MonHistoireDeSanteEpisodeDisplayModel &&
              displayModel.episode.categorie == EpisodeSanteCategorie.VACCINATION,
        );
        if (episodeVaccination != null) {
          store.dispatch(const FetchVaccinationsAction());
        }
      },
    );
  }

  @override
  List<Object?> get props => [status, displayModels, isMainProfile, mainFirstName];
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
    default:
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
