/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/utils/wordings_extension.dart';

enum RecherchePSType {
  ADD_PS,
  ADD_MEDECIN_TRAITANT,
  ADD_PS_FROM_HOME,
  SELECTION_AGENDA_PS,
  SELECTION_VACCINATEUR,
  BLOQUER_PS;

  String get getTitle {
    return switch (this) {
      RecherchePSType.ADD_PS || RecherchePSType.ADD_PS_FROM_HOME => 'Ajouter un professionnel de santé',
      RecherchePSType.ADD_MEDECIN_TRAITANT => 'Rechercher mon médecin traitant',
      RecherchePSType.SELECTION_AGENDA_PS ||
      RecherchePSType.SELECTION_VACCINATEUR =>
        'Rechercher un professionnel de santé',
      RecherchePSType.BLOQUER_PS => 'Bloquer un professionnel de santé',
    };
  }

  String getHeaderText(ProfilType profilType) {
    return switch (this) {
      RecherchePSType.ADD_PS ||
      RecherchePSType.ADD_PS_FROM_HOME =>
        'Je recherche un professionnel que je veux ajouter à ma liste'
            .resolveWith(isProfilPrincipal: profilType.isProfilPrincipal),
      RecherchePSType.ADD_MEDECIN_TRAITANT =>
        'Je peux indiquer un ou plusieurs critères.\nSi mon médecin traitant n’est pas enregistré auprès de ma caisse d’assurance maladie, je prends contact avec lui pour réaliser la déclaration.',
      RecherchePSType.SELECTION_AGENDA_PS => 'Je recherche un professionnel que je veux ajouter au rendez-vous',
      RecherchePSType.SELECTION_VACCINATEUR => 'Je recherche un professionnel que je veux ajouter à ma vaccination.',
      RecherchePSType.BLOQUER_PS => 'Je recherche un professionnel que je veux bloquer',
    };
  }

  String get getButtonLabel {
    return switch (this) {
      RecherchePSType.ADD_PS || RecherchePSType.ADD_PS_FROM_HOME => 'Ajouter',
      RecherchePSType.ADD_MEDECIN_TRAITANT => 'Sélectionner',
      RecherchePSType.SELECTION_AGENDA_PS || RecherchePSType.SELECTION_VACCINATEUR => 'Sélectionner',
      RecherchePSType.BLOQUER_PS => 'Bloquer',
    };
  }

  Color get getButtonBackgroundColor {
    return switch (this) {
      RecherchePSType.ADD_PS ||
      RecherchePSType.ADD_PS_FROM_HOME ||
      RecherchePSType.ADD_MEDECIN_TRAITANT ||
      RecherchePSType.SELECTION_AGENDA_PS ||
      RecherchePSType.SELECTION_VACCINATEUR =>
        EnsColors.primary,
      RecherchePSType.BLOQUER_PS => Colors.white,
    };
  }

  Color get getButtonBordersColor {
    return switch (this) {
      RecherchePSType.ADD_PS ||
      RecherchePSType.ADD_PS_FROM_HOME ||
      RecherchePSType.ADD_MEDECIN_TRAITANT ||
      RecherchePSType.SELECTION_AGENDA_PS ||
      RecherchePSType.SELECTION_VACCINATEUR =>
        Colors.transparent,
      RecherchePSType.BLOQUER_PS => EnsColors.error,
    };
  }

  TextStyle get getButtonLabelTextStyle {
    return switch (this) {
      RecherchePSType.ADD_PS ||
      RecherchePSType.ADD_PS_FROM_HOME ||
      RecherchePSType.ADD_MEDECIN_TRAITANT ||
      RecherchePSType.SELECTION_AGENDA_PS ||
      RecherchePSType.SELECTION_VACCINATEUR =>
        EnsTextStyle.text14_w600_normal_light,
      RecherchePSType.BLOQUER_PS => EnsTextStyle.text14_w700_error,
    };
  }

  bool shouldShowButton(bool isPsActive) {
    if (isPsActive) {
      return true;
    }
    return switch (this) {
      RecherchePSType.ADD_PS || RecherchePSType.ADD_PS_FROM_HOME || RecherchePSType.ADD_MEDECIN_TRAITANT => false,
      RecherchePSType.SELECTION_AGENDA_PS ||
      RecherchePSType.SELECTION_VACCINATEUR ||
      RecherchePSType.BLOQUER_PS =>
        true,
    };
  }
}
