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
import 'package:fr_cnamts_ens/profil_medical/vaccinations/redux/vaccinations_selectors.dart';
import 'package:fr_cnamts_ens/utils/ens_date_utils.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';
import 'package:redux/redux.dart';

class MonHistoireDeSanteEpisodeMoisItemViewModel extends Equatable {
  final String? title;
  final String? subtitle;
  final String formattedDate;
  final MonHistoireDeSanteEpisode episode;
  final MonHistoireDeSanteDetailEpisodeDisplayModel itemDisplayModel;
  final String? interruptionServiceSnackbarMessage;

  bool isEpisodeDeSoins() => episode.categorie == EpisodeSanteCategorie.SOINS;

  bool isEpisodeDeMaladie() => episode.categorie == EpisodeSanteCategorie.MALADIE;

  const MonHistoireDeSanteEpisodeMoisItemViewModel._internal({
    required this.itemDisplayModel,
    required this.title,
    required this.subtitle,
    required this.formattedDate,
    required this.episode,
    this.interruptionServiceSnackbarMessage,
  });

  factory MonHistoireDeSanteEpisodeMoisItemViewModel.from(
    Store<EnsState> store,
    MonHistoireDeSanteEpisodeDisplayModel displayModel,
  ) {
    DisplayableActeurDeSante? displayableAuteur;
    DisplayableActeurDeSante? displayableDelivreur;

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

    final itemDisplayModel = MonHistoireDeSanteDetailEpisodeDisplayModel.mapToDisplayModel(
      displayModel.episode,
      displayableAuteur,
      displayableDelivreur,
    );

    String? title;

    if (displayModel.episode.categorie == EpisodeSanteCategorie.SOINS) {
      title = _getSingleLabel(
        displayableAuteur,
        displayableDelivreur,
      );
    } else {
      title = _getActesLabel(displayModel.episode, store);
    }

    return MonHistoireDeSanteEpisodeMoisItemViewModel._internal(
      itemDisplayModel: itemDisplayModel,
      episode: displayModel.episode,
      title: title,
      subtitle: _getSubtitle(
        displayModel.episode,
        displayableAuteur,
        displayableDelivreur,
      ),
      formattedDate: _getDateDisplayLabel(displayModel.episode),
      interruptionServiceSnackbarMessage: interruptionServiceSnackbarMessage,
    );
  }

  static String _getDateDisplayLabel(MonHistoireDeSanteEpisode episode) {
    return episode.categorie == EpisodeSanteCategorie.MALADIE
        ? (episode as MonHistoireDeSanteEpisodeMaladie).getMaladieEpisodeDate()
        : EnsDateUtils.formatdMMMMyyyy(episode.date);
  }

  static String _getSingleLabel(
    DisplayableActeurDeSante? auteur,
    DisplayableActeurDeSante? delivreur,
  ) {
    return auteur?.capitalizedNom ?? delivreur?.capitalizedNom ?? 'Professionnel de santé non renseigné';
  }

  static String? _getActesLabel(MonHistoireDeSanteEpisode episode, Store<EnsState> store) {
    switch (episode) {
      case MonHistoireDeSanteEpisodeBiologie _:
        final acteLabels = episode.items.map((e) => e.capitalizedNom).toList();
        return acteLabels.join(', ');
      case MonHistoireDeSanteEpisodeMedicaments _:
        final acteLabels = episode.items.map((e) => e.capitalizedNom).toList();
        return acteLabels.join(', ');
      case MonHistoireDeSanteEpisodeRadiologie _:
        final acteLabels = episode.items.map((e) => e.capitalizedNom).toList();
        return acteLabels.join(', ');
      case MonHistoireDeSanteEpisodeDispositifsMedicaux _:
        final acteLabels = episode.items.map((e) => e.capitalizedNom).toList();
        return acteLabels.join(', ');
      case MonHistoireDeSanteEpisodeVaccin _:
        final acteLabels = episode.items.map((e) => e.capitalizedNom).toList();
        return acteLabels.join(', ');
      case MonHistoireDeSanteEpisodeHospitalisation _:
        return episode.nature.capitalize();
      case MonHistoireDeSanteEpisodeMaladie _:
        return episode.nom.capitalizeName();
      case MonHistoireDeSanteEpisodeVaccination _:
        final vaccinationsListState = store.state.vaccinationsState.vaccinationsListState;
        if (vaccinationsListState.status.isSuccess()) {
          final vaccination = VaccinationsSelectors.getVaccinationById(store.state, episode.id);
          return vaccination?.pathologies;
        } else {
          return episode.name.capitalizeName();
        }
      case MonHistoireDeSanteEpisodeSoins _:
        return null;
    }
  }

  static String? _getSubtitle(
    MonHistoireDeSanteEpisode episode,
    DisplayableActeurDeSante? auteur,
    DisplayableActeurDeSante? delivreur,
  ) {
    switch (episode.categorie) {
      case EpisodeSanteCategorie.HOSPITALISATION:
      case EpisodeSanteCategorie.BIOLOGIE:
      case EpisodeSanteCategorie.VACCINATION:
      case EpisodeSanteCategorie.RADIOLOGIE:
        return auteur?.nom;
      case EpisodeSanteCategorie.MALADIE:
        return null;
      case EpisodeSanteCategorie.MEDICAMENTS:
      case EpisodeSanteCategorie.DISPOSITIFS_MEDICAUX:
        return delivreur?.nom ?? auteur?.nom;
      case EpisodeSanteCategorie.SOINS:
        return auteur?.professionLabel;
      case EpisodeSanteCategorie.VACCIN:
        return auteur?.nom ?? delivreur?.nom;
    }
  }

  @override
  List<Object?> get props => [
        itemDisplayModel,
        title,
        subtitle,
        episode,
        formattedDate,
        interruptionServiceSnackbarMessage,
      ];
}
