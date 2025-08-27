/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/domain/models/mon_histoire_de_sante_episode.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class MonHistoireDeSanteIcon extends StatelessWidget {
  final EpisodeSanteCategorie category;
  final double size;

  const MonHistoireDeSanteIcon({super.key, required this.category, required this.size});

  @override
  Widget build(BuildContext context) {
    return EnsSvg(_getEpisodeItemIcon(category), height: size, width: size);
  }

  String _getEpisodeItemIcon(EpisodeSanteCategorie category) {
    switch (category) {
      case EpisodeSanteCategorie.BIOLOGIE:
        return EnsImages.mhs_biologie;
      case EpisodeSanteCategorie.SOINS:
        return EnsImages.mhs_soins;
      case EpisodeSanteCategorie.MEDICAMENTS:
        return EnsImages.mhs_medicament;
      case EpisodeSanteCategorie.HOSPITALISATION:
        return EnsImages.mhs_hospitalisation;
      case EpisodeSanteCategorie.DISPOSITIFS_MEDICAUX:
        return EnsImages.mhs_dispositifs_medicaux;
      case EpisodeSanteCategorie.RADIOLOGIE:
        return EnsImages.mhs_radiologie;
      case EpisodeSanteCategorie.VACCIN:
        return EnsImages.mhs_medicament;
      case EpisodeSanteCategorie.VACCINATION:
        return EnsImages.mhs_vaccination;
      case EpisodeSanteCategorie.MALADIE:
        return EnsImages.mhs_maladie;
    }
  }
}
