/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/interruption_services/domain/interruption_de_service_info.dart';
import 'package:fr_cnamts_ens/interruption_services/redux/interruption_selectors.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/domain/models/mon_histoire_de_sante_episode.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/displayModel/mon_histoire_de_sante_display_model.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/viewmodels/mon_histoire_de_sante_episode_display_model.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/viewmodels/mon_histoire_de_sante_episode_view_model_extension.dart';
import 'package:redux/redux.dart';

class MonHistoireDeSanteEpisodeJourItemViewModel extends Equatable {
  final String title;
  final String? subTitle;
  final String? maladieFormattedDate;
  final MonHistoireDeSanteEpisode episode;
  final MonHistoireDeSanteDetailEpisodeDisplayModel itemDisplayModel;
  final String? interruptionServiceSnackbarMessage;

  const MonHistoireDeSanteEpisodeJourItemViewModel._internal({
    required this.itemDisplayModel,
    required this.title,
    required this.maladieFormattedDate,
    required this.subTitle,
    required this.episode,
    this.interruptionServiceSnackbarMessage,
  });

  factory MonHistoireDeSanteEpisodeJourItemViewModel.from(
    Store<EnsState> store,
    MonHistoireDeSanteEpisodeDisplayModel displayModel,
  ) {
    DisplayableActeurDeSante? displayableAuteur;
    DisplayableActeurDeSante? displayableDelivreur;
    String? pathologies;

    final interruptionServiceSnackbarMessage = InterruptionSelectors.getCurrentInterruptionInfos(
      state: store.state,
      domaine: DomaineInterruption.VACCINATION,
    )?.messageSnackbar;

    if (displayModel.auteur != null) {
      displayableAuteur = displayModel.auteur!.mapToDisplayableActeurSante();
    }

    if (displayModel.delivreur != null) {
      displayableDelivreur = displayModel.delivreur!.mapToDisplayableActeurSante();
    }

    if (displayModel.episode.categorie == EpisodeSanteCategorie.VACCINATION) {
      final episode = displayModel.episode as MonHistoireDeSanteEpisodeVaccination;
      pathologies = episode.patologies;
    }

    final itemDisplayModel = MonHistoireDeSanteDetailEpisodeDisplayModel.mapToDisplayModel(
      displayModel.episode,
      displayableAuteur,
      displayableDelivreur,
    );

    final maladieDate = displayModel.episode.categorie == EpisodeSanteCategorie.MALADIE
        ? (displayModel.episode as MonHistoireDeSanteEpisodeMaladie).getMaladieEpisodeDate()
        : null;

    return MonHistoireDeSanteEpisodeJourItemViewModel._internal(
      itemDisplayModel: itemDisplayModel,
      episode: displayModel.episode,
      title: _getItemJourTitle(displayModel.episode, displayableAuteur?.professionLabel),
      subTitle: _getItemJourSubtitle(
        displayModel.episode,
        displayableAuteur,
        displayableDelivreur,
        pathologies,
      ),
      maladieFormattedDate: maladieDate,
      interruptionServiceSnackbarMessage: interruptionServiceSnackbarMessage,
    );
  }

  static String _getItemJourTitle(MonHistoireDeSanteEpisode episode, String? profession) {
    if (episode.categorie == EpisodeSanteCategorie.SOINS) {
      return profession ?? episode.categorie.toLabel;
    } else {
      return episode.categorie.toLabel;
    }
  }

  static String? _getItemJourSubtitle(
    MonHistoireDeSanteEpisode episode,
    DisplayableActeurDeSante? auteur,
    DisplayableActeurDeSante? delivreur,
    String? pathology,
  ) {
    switch (episode.categorie) {
      case EpisodeSanteCategorie.HOSPITALISATION:
        return auteur?.nom;
      case EpisodeSanteCategorie.VACCINATION:
        return pathology;
      case EpisodeSanteCategorie.MALADIE:
        return episode is MonHistoireDeSanteEpisodeMaladie ? episode.nom : null;
      case EpisodeSanteCategorie.MEDICAMENTS:
      case EpisodeSanteCategorie.VACCIN:
        return delivreur?.nom ?? auteur?.nom;
      default:
        return auteur?.nom ?? delivreur?.nom;
    }
  }

  @override
  List<Object?> get props => [
        itemDisplayModel,
        title,
        subTitle,
        episode,
        maladieFormattedDate,
        interruptionServiceSnackbarMessage,
      ];
}
