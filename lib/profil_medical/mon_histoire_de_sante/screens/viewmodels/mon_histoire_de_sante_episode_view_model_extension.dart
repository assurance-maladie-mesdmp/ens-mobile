/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/domain/models/mon_histoire_de_sante_item.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/viewmodels/mon_histoire_de_sante_episode_display_model.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';

extension MonHistoireDeSanteEpisodeViewModelExtension on EpisodeActeurSante {
  DisplayableActeurDeSante mapToDisplayableActeurSante() {
    final episodeActeurSante = this;
    switch (episodeActeurSante) {
      case EpisodePs():
        return DisplayableActeurDeSante(
          nom: nom.capitalizeName(),
          id: id,
          isPs: true,
          professionLabel: episodeActeurSante.profession.firstOrNull?.capitalize(),
          specialites: episodeActeurSante.specialites.isNotEmpty
              ? episodeActeurSante.specialites.map((specialite) => specialite.capitalize()).join(', ')
              : null,
        );
      case EpisodeEs():
        return DisplayableActeurDeSante(
          nom: nom.capitalizeName(),
          id: id,
          isPs: false,
        );
    }
  }
}

extension MonHistoireDeSanteEpisodeViewModelNameExtension on String? {
  bool isNameFilled() {
    return this != null && this != 'Non renseigné' && this!.isNotEmpty;
  }
}
