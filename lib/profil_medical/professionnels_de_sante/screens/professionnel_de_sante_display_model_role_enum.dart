/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/professionnel_de_sante.dart';

enum PsRoleDisplayModel {
  MEDECIN_TRAITANT(label: 'Médecin Traitant'),
  SAGE_FEMME_REFERENTE(label: 'Sage-femme référente'),
  PHARMACIEN_CORRESPONDANT(label: 'Pharmacien correspondant');

  const PsRoleDisplayModel({required this.label});

  final String label;

  PsRoleDomaine? get psRoleDomaine {
    return switch (this) {
      MEDECIN_TRAITANT => PsRoleDomaine.MEDECIN_TRAITANT,
      SAGE_FEMME_REFERENTE => PsRoleDomaine.SAGE_FEMME_REFERENTE,
      PHARMACIEN_CORRESPONDANT => PsRoleDomaine.PHARMACIEN_CORRESPONDANT,
    };
  }

  String get removePsRoleBottomSheetLabel {
    return switch (this) {
      PsRoleDisplayModel.SAGE_FEMME_REFERENTE => 'Retirer le rôle de sage-femme référente',
      PsRoleDisplayModel.PHARMACIEN_CORRESPONDANT => 'Retirer le rôle de pharmacien correspondant',
      PsRoleDisplayModel.MEDECIN_TRAITANT => 'Retirer le rôle de médecin traitant',
    };
  }
}
