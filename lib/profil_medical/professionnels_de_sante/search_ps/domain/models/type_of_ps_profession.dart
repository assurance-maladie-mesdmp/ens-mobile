/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/professionnel_de_sante_display_model_role_enum.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/professionnel_de_sante.dart';

enum PsProfessionLinkToRole {
  SAGE_FEMME,
  PHARMACIEN;

  static PsProfessionLinkToRole? fromPsProfession(String? profession) {
    return switch (profession) {
      'Sage-Femme' => PsProfessionLinkToRole.SAGE_FEMME,
      'Pharmacien' => PsProfessionLinkToRole.PHARMACIEN,
      _ => null,
    };
  }

  PsRoleDisplayModel get getPsDisplayModelRole {
    return switch (this) {
      PsProfessionLinkToRole.SAGE_FEMME => PsRoleDisplayModel.SAGE_FEMME_REFERENTE,
      PsProfessionLinkToRole.PHARMACIEN => PsRoleDisplayModel.PHARMACIEN_CORRESPONDANT,
    };
  }

  PsRoleDomaine get getPsDomainRoleLinkToProfession {
    return switch (this) {
      PsProfessionLinkToRole.SAGE_FEMME => PsRoleDomaine.SAGE_FEMME_REFERENTE,
      PsProfessionLinkToRole.PHARMACIEN => PsRoleDomaine.PHARMACIEN_CORRESPONDANT,
    };
  }

  String get tagValue {
    return switch (this) {
      PsProfessionLinkToRole.SAGE_FEMME => 'sage_femme_referente',
      PsProfessionLinkToRole.PHARMACIEN => 'pharmacien_correspondant'
    };
  }

  String get addRoleButtonTitle {
    return switch (this) {
      PsProfessionLinkToRole.SAGE_FEMME => 'Attribuer le rôle de sage-femme référente',
      PsProfessionLinkToRole.PHARMACIEN => 'Attribuer le rôle de pharmacien correspondant'
    };
  }

  String get addPsWithRoleBottomSheetTitle {
    return switch (this) {
      PsProfessionLinkToRole.SAGE_FEMME => 'Cette sage-femme est-elle ma sage-femme référente ?',
      PsProfessionLinkToRole.PHARMACIEN => 'Ce professionnel est-il mon pharmacien correspondant ?'
    };
  }

  String get addPsWithRoleBottomSheetBody {
    return switch (this) {
      PsProfessionLinkToRole.SAGE_FEMME =>
        'Après déclaration auprès de l’assurance maladie, la sage-femme référente accompagne et coordonne les soins de la patiente tout au long de son parcours, pendant et après la grossesse.\n\nVous ne pouvez avoir qu’une seule sage-femme référente. Si vous en aviez déjà une dans votre liste, elle sera remplacée.',
      PsProfessionLinkToRole.PHARMACIEN =>
        'Après déclaration auprès de l’assurance maladie, le pharmacien correspondant peut, dans certaines conditions renouveler des traitements et ajuster leur posologie. \n\nVous ne pouvez avoir qu’un seul pharmacien correspondant. Si vous en avez déjà un dans votre liste, il sera remplacé.'
    };
  }

  String get addPsWithRoleBottomSheetUrl {
    return switch (this) {
      PsProfessionLinkToRole.SAGE_FEMME =>
        'https://www.ameli.fr/assure/sante/devenir-parent/grossesse/grossesse-en-bonne-sante/grossesse/sage-femme-referente-suivi-grossesse',
      PsProfessionLinkToRole.PHARMACIEN =>
        'https://www.ameli.fr/paris/assure/sante/medicaments/missions-pharmacien#text_197332'
    };
  }
}
