/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/domain/models/mon_histoire_de_sante_episode.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';

extension EpisodeSanteCategoryPresenter on EpisodeSanteCategorie {
  Color get color {
    switch (this) {
      case EpisodeSanteCategorie.BIOLOGIE:
        return EnsColors.illustrative03;
      case EpisodeSanteCategorie.SOINS:
        return EnsColors.illustrative08;
      case EpisodeSanteCategorie.MEDICAMENTS:
        return EnsColors.success100;
      case EpisodeSanteCategorie.HOSPITALISATION:
        return EnsColors.illustrative07;
      case EpisodeSanteCategorie.DISPOSITIFS_MEDICAUX:
        return EnsColors.illustrative01;
      case EpisodeSanteCategorie.RADIOLOGIE:
        return EnsColors.illustrative02;
      case EpisodeSanteCategorie.VACCIN:
        return EnsColors.success100;
      case EpisodeSanteCategorie.VACCINATION:
        return EnsColors.illustrative04;
      case EpisodeSanteCategorie.MALADIE:
        return EnsColors.illustrative05;
    }
  }

  String getLabel({bool? currentMaladie}) {
    if (this == EpisodeSanteCategorie.MALADIE) {
      if (currentMaladie == null) {
        return '';
      }
      return currentMaladie ? 'Maladies et sujets de santé en cours' : 'Maladies et sujets de santé';
    } else {
      return toLabel;
    }
  }
}
