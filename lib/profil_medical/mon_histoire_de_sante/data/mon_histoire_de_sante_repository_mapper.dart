/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_acteur_sante_auteur.fragment.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_histoire_sante.fragment.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_maladie_en_cours.fragment.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mhs_get_histoire_de_sante_episodes.query.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/domain/models/mon_histoire_de_sante_episode.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/domain/models/mon_histoire_de_sante_item.dart';

class MonHistoireDeSanteRepositoryMapper {
  static List<MonHistoireDeSanteEpisode> mapToEnsMonHistoireDeSanteEpisodesFromRepo(
    Iterable<Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes> episodes,
  ) {
    final List<MonHistoireDeSanteEpisode> episodesSante = [];
    for (final episode in episodes) {
      switch (episode) {
        case GepisodeBiologie _:
          episodesSante.add(_mapToEnsMonHistoireDeSanteEpisodesBiologie(episode as GepisodeBiologie));
        case GepisodeMedicament _:
          episodesSante.add(_mapToEnsMonHistoireDeSanteEpisodesMedicament(episode as GepisodeMedicament));
        case GepisodeSoinDentaire _:
          episodesSante.add(_mapToEnsMonHistoireDeSanteEpisodesSoins(episode as GepisodeSoinDentaire));
        case GepisodeHospitalisation _:
          episodesSante.add(_mapToEnsMonHistoireDeSanteEpisodesHospitalisation(episode as GepisodeHospitalisation));
        case GepisodeRadiologie _:
          episodesSante.add(_mapToEnsMonHistoireDeSanteEpisodesRadiologie(episode as GepisodeRadiologie));
        case GepisodeDispositifMedical _:
          episodesSante
              .add(_mapToEnsMonHistoireDeSanteEpisodesDispositifsMedicaux(episode as GepisodeDispositifMedical));
        case GepisodeVaccin _:
          episodesSante.add(_mapToEnsMonHistoireDeSanteEpisodesVaccin(episode as GepisodeVaccin));
        case GepisodeVaccination _:
          episodesSante.add(_mapToEnsMonHistoireDeSanteEpisodesVaccination(episode as GepisodeVaccination));
        case GepisodeMaladie _:
          episodesSante.add(_mapToEnsMonHistoireDeSanteEpisodesMaladie(episode as GepisodeMaladie));
        default:
          break;
      }
    }
    return episodesSante;
  }

  static MonHistoireDeSanteEpisodeBiologie _mapToEnsMonHistoireDeSanteEpisodesBiologie(GepisodeBiologie episode) =>
      MonHistoireDeSanteEpisodeBiologie(
        date: DateTime.parse(episode.date),
        categorie: EpisodeSanteCategorie.BIOLOGIE,
        items: episode.items
            .map(
              (item) => MonHistoireDeSanteItemBiologie(
                nom: item.name,
                auteur: _mapToAuteur(item.episodePsAuthor, item.episodeEsAuthor),
              ),
            )
            .toList(),
      );

  static MonHistoireDeSanteEpisodeMedicaments _mapToEnsMonHistoireDeSanteEpisodesMedicament(
    GepisodeMedicament episode,
  ) =>
      MonHistoireDeSanteEpisodeMedicaments(
        date: DateTime.parse(episode.date),
        categorie: EpisodeSanteCategorie.MEDICAMENTS,
        items: episode.items
            .map(
              (item) => MonHistoireDeSanteItemMedicaments(
                dateDelivrance: DateTime.parse(item.deliveryDate),
                nom: item.name,
                groupeTherapeutique: item.therapeuticGroup,
                quantiteDeliveree: item.quantityDelivered,
                prescripteur: _mapToAuteur(item.episodePsAuthor, item.episodeEsAuthor),
                delivreur: _mapToAuteur(item.episodeDeliveredByPsAuthor, item.episodeDeliveredByEsAuthor),
              ),
            )
            .toList(),
      );

  static MonHistoireDeSanteEpisodeSoins _mapToEnsMonHistoireDeSanteEpisodesSoins(GepisodeSoinDentaire episode) =>
      MonHistoireDeSanteEpisodeSoins(
        date: DateTime.parse(episode.date),
        categorie: EpisodeSanteCategorie.SOINS,
        items: episode.items
            .map(
              (item) => MonHistoireDeSanteItemSoins(
                nom: item.name,
                auteur: _mapToAuteur(item.episodePsAuthor, item.episodeEsAuthor),
              ),
            )
            .toList(),
      );

  static EpisodeActeurSante? _mapToAuteur(GepisodePsAuteur? psAuteur, GepisodeEsAuteur? esAuteur) {
    if (psAuteur != null) {
      return EpisodePs(
        id: psAuteur.id,
        nom: psAuteur.fullName,
        profession: psAuteur.profession.toList(),
        specialites: psAuteur.specialities.toList(),
      );
    } else if (esAuteur != null) {
      return EpisodeEs(id: esAuteur.id, nom: esAuteur.name);
    }
    return null;
  }

  static MonHistoireDeSanteEpisodeHospitalisation _mapToEnsMonHistoireDeSanteEpisodesHospitalisation(
    GepisodeHospitalisation episode,
  ) =>
      MonHistoireDeSanteEpisodeHospitalisation(
        date: DateTime.parse(episode.date),
        categorie: EpisodeSanteCategorie.HOSPITALISATION,
        dateAdmission: DateTime.parse(episode.admissionDate),
        dateSortie: episode.releaseDate != null ? DateTime.parse(episode.releaseDate!) : null,
        nature: episode.nature,
        hopital: _mapToAuteur(null, episode.episodeEsAuthorHospitalization),
      );

  static MonHistoireDeSanteEpisodeRadiologie _mapToEnsMonHistoireDeSanteEpisodesRadiologie(
    GepisodeRadiologie episode,
  ) =>
      MonHistoireDeSanteEpisodeRadiologie(
        date: DateTime.parse(episode.date),
        categorie: EpisodeSanteCategorie.RADIOLOGIE,
        items: episode.items
            .map(
              (item) => MonHistoireDeSanteItemRadiologie(
                nom: item.name,
                auteur: _mapToAuteur(item.episodePsAuthor, item.episodeEsAuthor),
              ),
            )
            .toList(),
      );

  static MonHistoireDeSanteEpisodeDispositifsMedicaux _mapToEnsMonHistoireDeSanteEpisodesDispositifsMedicaux(
    GepisodeDispositifMedical episode,
  ) =>
      MonHistoireDeSanteEpisodeDispositifsMedicaux(
        date: DateTime.parse(episode.date),
        categorie: EpisodeSanteCategorie.DISPOSITIFS_MEDICAUX,
        items: episode.items
            .map(
              (item) => MonHistoireDeSanteItemDispositifsMedicaux(
                dateDelivrance: DateTime.parse(item.deliveryDate),
                nom: item.name,
                quantiteDelivree: item.quantityDelivered,
                prescripteur: _mapToAuteur(item.episodePsAuthor, item.episodeEsAuthor),
                delivreur: _mapToAuteur(null, item.episodeDeliveredByEsAuthor),
              ),
            )
            .toList(),
      );

  static MonHistoireDeSanteEpisodeVaccin _mapToEnsMonHistoireDeSanteEpisodesVaccin(GepisodeVaccin episodeVaccin) =>
      MonHistoireDeSanteEpisodeVaccin(
        date: DateTime.parse(episodeVaccin.date),
        categorie: EpisodeSanteCategorie.VACCIN,
        items: episodeVaccin.items
            .map(
              (item) => MonHistoireDeSanteItemVaccin(
                nom: item.name,
                vaccineValencia: item.vaccineValencia,
                typeCodage: item.typeCodage,
                codeCIP: item.codeCIP,
                prescripteur: _mapToAuteur(item.episodePsAuthor, item.episodeEsAuthor),
                delivreur: _mapToAuteur(item.episodeDeliveredByPsAuthor, item.episodeDeliveredByEsAuthor),
              ),
            )
            .toList(),
      );

  static MonHistoireDeSanteEpisodeVaccination _mapToEnsMonHistoireDeSanteEpisodesVaccination(
    GepisodeVaccination episodeVaccin,
  ) =>
      MonHistoireDeSanteEpisodeVaccination(
        date: DateTime.parse(episodeVaccin.date),
        categorie: EpisodeSanteCategorie.VACCINATION,
        id: episodeVaccin.id,
        name: episodeVaccin.name,
        patologies: episodeVaccin.pathologies,
      );

  static MonHistoireDeSanteEpisodeMaladie _mapToEnsMonHistoireDeSanteEpisodesMaladie(GepisodeMaladie episode) =>
      MonHistoireDeSanteEpisodeMaladie(
        date: DateTime.parse(episode.date),
        categorie: EpisodeSanteCategorie.MALADIE,
        startDate: episode.startDate,
        id: episode.diseaseId,
        nom: episode.name,
        eventType: _mapMaladieDateType(episode.eventType),
        comment: episode.comment,
        endDate: episode.endDate,
        hasOnlyYearInStartDate: episode.hasOnlyYearInStartDate,
        hasOnlyMonthAndYearInStartDate: episode.hasOnlyMonthAndYearInStartDate,
        hasOnlyYearInEndDate: episode.hasOnlyYearInEndDate,
        hasOnlyMonthAndYearInEndDate: episode.hasOnlyMonthAndYearInEndDate,
      );

  static EpisodeMaladieDateType _mapMaladieDateType(GDiseaseEpisodeType? diseaseEpisodeType) {
    switch (diseaseEpisodeType) {
      case GDiseaseEpisodeType.START:
        return EpisodeMaladieDateType.START;
      case GDiseaseEpisodeType.END:
        return EpisodeMaladieDateType.END;
      case GDiseaseEpisodeType.FULL:
        return EpisodeMaladieDateType.FULL;
      default:
        return EpisodeMaladieDateType.UNKNOWN;
    }
  }

  static List<MonHistoireDeSanteEpisodeMaladie> mapToEnsMonHistoireDeSanteMaladie(
    Iterable<GmaladieEnCours> maladiesEnCours,
  ) {
    return maladiesEnCours
        .map(
          (maladieEnCours) => MonHistoireDeSanteEpisodeMaladie(
            date: DateTime.parse(maladieEnCours.date),
            categorie: EpisodeSanteCategorie.MALADIE,
            startDate: maladieEnCours.startDate,
            id: maladieEnCours.diseaseId,
            nom: maladieEnCours.name,
            eventType: _mapMaladieDateType(maladieEnCours.eventType),
            comment: maladieEnCours.comment,
            endDate: maladieEnCours.endDate,
            hasOnlyYearInStartDate: maladieEnCours.hasOnlyYearInStartDate,
            hasOnlyMonthAndYearInStartDate: maladieEnCours.hasOnlyMonthAndYearInStartDate,
            hasOnlyYearInEndDate: maladieEnCours.hasOnlyYearInEndDate,
            hasOnlyMonthAndYearInEndDate: maladieEnCours.hasOnlyMonthAndYearInEndDate,
          ),
        )
        .toList();
  }
}
