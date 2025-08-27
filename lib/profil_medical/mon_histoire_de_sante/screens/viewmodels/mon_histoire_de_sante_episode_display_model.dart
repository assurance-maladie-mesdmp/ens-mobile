/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/domain/models/mon_histoire_de_sante_episode.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';

class DisplayableActeurDeSante extends Equatable {
  final String nom;
  final String id;
  final bool isPs;
  final String? professionLabel;
  final String? specialites;

  const DisplayableActeurDeSante({
    required this.nom,
    required this.id,
    required this.isPs,
    this.professionLabel,
    this.specialites,
  });

  String get capitalizedNom => nom.capitalizeName();

  @override
  List<Object?> get props => [nom, id, isPs, professionLabel, specialites];
}

class MonHistoireDeSanteDetailEpisodeDisplayModel extends Equatable {
  final MonHistoireDeSanteEpisode episode;
  final String categorieLabel;
  final DisplayableActeurDeSante? displayableAuteur;
  final DisplayableActeurDeSante? displayableDelivreur;

  const MonHistoireDeSanteDetailEpisodeDisplayModel({
    required this.episode,
    required this.categorieLabel,
    this.displayableAuteur,
    this.displayableDelivreur,
  });

  factory MonHistoireDeSanteDetailEpisodeDisplayModel.mapToDisplayModel(
    MonHistoireDeSanteEpisode episode,
    DisplayableActeurDeSante? displayableAuteur,
    DisplayableActeurDeSante? displayablePrescripteur,
  ) {
    return MonHistoireDeSanteDetailEpisodeDisplayModel(
      episode: episode,
      categorieLabel: _getCategoryLabel(episode),
      displayableAuteur: displayableAuteur,
      displayableDelivreur: displayablePrescripteur,
    );
  }

  static String _getCategoryLabel(MonHistoireDeSanteEpisode episode) {
    if (episode.categorie == EpisodeSanteCategorie.MALADIE) {
      return (episode as MonHistoireDeSanteEpisodeMaladie).nom;
    } else {
      return episode.categorie.toLabel;
    }
  }

  @override
  List<Object?> get props => [episode, categorieLabel, displayableAuteur, displayableDelivreur];
}
