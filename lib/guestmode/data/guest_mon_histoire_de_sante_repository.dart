/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_maladies_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/data/mon_histoire_de_sante_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/domain/models/mon_histoire_de_sante_episode.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/domain/models/mon_histoire_de_sante_episodes.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/domain/models/mon_histoire_de_sante_item.dart';

class GuestMonHistoireDeSanteRepository extends IMonHistoireDeSanteRepository {
  final List<MonHistoireDeSanteEpisode> _episodesSante = [
    MonHistoireDeSanteEpisodeSoins(
      date: DateTime(2021, 12, 14),
      categorie: EpisodeSanteCategorie.SOINS,
      items: const [
        MonHistoireDeSanteItemSoins(
          nom: 'Consultation médecine générale',
          auteur: null,
        ),
        MonHistoireDeSanteItemSoins(
          nom: 'Consultation médecine générale',
          auteur: null,
        ),
        MonHistoireDeSanteItemSoins(
          nom: 'Consultation médecine générale',
          auteur: null,
        ),
      ],
    ),
    MonHistoireDeSanteEpisodeMedicaments(
      date: DateTime(2021, 12, 13),
      categorie: EpisodeSanteCategorie.MEDICAMENTS,
      items: [
        MonHistoireDeSanteItemMedicaments(
          dateDelivrance: DateTime(2021, 12, 13),
          nom: 'Paracétamol 1g',
          groupeTherapeutique: null,
          quantiteDeliveree: 2,
          prescripteur: null,
          delivreur: null,
        ),
        MonHistoireDeSanteItemMedicaments(
          dateDelivrance: DateTime(2021, 12, 13),
          nom: 'Chlorehex 100 ML',
          groupeTherapeutique: null,
          quantiteDeliveree: 3,
          prescripteur: null,
          delivreur: null,
        ),
      ],
    ),
    MonHistoireDeSanteEpisodeVaccination(
      date: DateTime(2021, 12, 13),
      categorie: EpisodeSanteCategorie.VACCINATION,
      id: '0',
      name: 'PFIZER COMINARTY',
      patologies: '',
    ),
    MonHistoireDeSanteEpisodeSoins(
      date: DateTime(2021, 12, 02),
      categorie: EpisodeSanteCategorie.SOINS,
      items: const [
        MonHistoireDeSanteItemSoins(
          nom: 'Consultation médecine générale',
          auteur: null,
        ),
      ],
    ),
  ];

  @override
  Future<RequestResult<MonHistoireDeSanteEpisodes>> getMonHistoireDeSanteEpisodes({
    required String patientId,
    int page = 1,
  }) {
    return Future.value(
      RequestResultSuccess(MonHistoireDeSanteEpisodes(episodes: _episodesSante, maxEpisodes: _episodesSante.length)),
    );
  }

  @override
  Future<RequestResult<List<MonHistoireDeSanteEpisodeMaladie>>> getMaladiesInProgress(String patientId) async {
    final maladies = await GuestMaladiesRepository().getMaladies(patientId);
    final List<MonHistoireDeSanteEpisodeMaladie> episodesMaladies = [];
    maladies.onSuccess((response) {
      response.maladies.where((maladie) => maladie.endDate == null).forEach((maladieEnCours) {
        final episodeMaladie = MonHistoireDeSanteEpisodeMaladie(
          date: maladieEnCours.startDate.toDateTime() ?? DateTime(2021, 12, 13),
          categorie: EpisodeSanteCategorie.MALADIE,
          id: maladieEnCours.id,
          nom: maladieEnCours.name,
          startDate: maladieEnCours.startDate.toDateTime()?.toString() ?? '2021-12-13',
          eventType: EpisodeMaladieDateType.START,
          hasOnlyYearInStartDate: false,
          hasOnlyMonthAndYearInStartDate: true,
          hasOnlyYearInEndDate: false,
          hasOnlyMonthAndYearInEndDate: false,
        );
        episodesMaladies.add(episodeMaladie);
      });
    });
    return Future.value(RequestResultSuccess(episodesMaladies));
  }
}
