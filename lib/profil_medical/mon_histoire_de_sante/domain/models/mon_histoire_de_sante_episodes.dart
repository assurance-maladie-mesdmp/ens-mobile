/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/domain/models/mon_histoire_de_sante_episode.dart';

class MonHistoireDeSanteEpisodes extends Equatable {
  final List<MonHistoireDeSanteEpisode> episodes;
  final int maxEpisodes;

  const MonHistoireDeSanteEpisodes({required this.episodes, required this.maxEpisodes});

  @override
  List<Object?> get props => [episodes, maxEpisodes];
}
