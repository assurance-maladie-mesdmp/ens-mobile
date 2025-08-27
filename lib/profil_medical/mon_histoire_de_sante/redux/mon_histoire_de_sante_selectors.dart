/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/domain/models/mon_histoire_de_sante_episode.dart';

class MonHistoireDeSanteSelectors {
  static const MAX_NUMBER_EPISODES = 4;

  static List<MonHistoireDeSanteEpisode> getLastDayMonHistoireDeSanteEpisodes(EnsState state) {
    final monHistoireDeSanteEpisodesState = state.monHistoireDeSanteState.monHistoireDeSanteEpisodesState;
    if (monHistoireDeSanteEpisodesState.status.isSuccess()) {
      return monHistoireDeSanteEpisodesState.episodes.take(MAX_NUMBER_EPISODES).toList();
    } else {
      return [];
    }
  }
}
