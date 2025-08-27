/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/viewmodels/called_es_or_ps_detail_screen_from.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/viewmodels/professionnel_de_sante_detail_screen_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/type_of_ps_profession.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_professionnels_de_sante.dart';
import 'package:fr_cnamts_ens/tags/tags_documents.dart';
import 'package:fr_cnamts_ens/tags/tags_messagerie.dart';

class ActeurDeSanteTagHelper {
  static void tagPage(
    BuildContext context, {
    required CalledESorPSDetailScreenFrom fromScreen,
    required bool isEs,
  }) {
    switch (fromScreen) {
      case CalledESorPSDetailScreenFrom.PS_SCREEN:
        context.tagAction(TagsProfessionnelsDeSante.tag_514_professionnels_sante_detail);
      case CalledESorPSDetailScreenFrom.MESSAGERIE_SCREEN:
        if (isEs) {
          context.tagAction(TagsMessagerie.tag_597_info_es);
        } else {
          context.tagAction(TagsMessagerie.tag_554_info_ps);
        }
      case CalledESorPSDetailScreenFrom.DOCUMENT_SCREEN:
        if (isEs) {
          context.tagAction(TagsDocuments.tag_635_info_es);
        } else {
          context.tagAction(TagsDocuments.tag_556_info_ps);
        }
      default:
        return;
    }
  }

  static void tagAddressClicked(BuildContext context, CalledESorPSDetailScreenFrom fromScreen, bool isEs) {
    switch (fromScreen) {
      case CalledESorPSDetailScreenFrom.PS_SCREEN:
        if (isEs) {
          context.tagAction(TagsProfessionnelsDeSante.tag_etablissement_sante_adresse);
        } else {
          context.tagAction(TagsProfessionnelsDeSante.tag_professionnel_sante_adresse);
        }
      case CalledESorPSDetailScreenFrom.MESSAGERIE_SCREEN:
        if (isEs) {
          context.tagAction(TagsMessagerie.tag_641_etablissement_sante_adresse);
        } else {
          context.tagAction(TagsMessagerie.tag_593_professionnel_sante_adresse);
        }
      case CalledESorPSDetailScreenFrom.DOCUMENT_SCREEN:
        if (isEs) {
          context.tagAction(TagsDocuments.tag_645_etablissement_sante_adresse);
        } else {
          context.tagAction(TagsDocuments.tag_643_professionnel_sante_adresse);
        }
      default:
        return;
    }
  }

  static void tagPhoneClicked(BuildContext context, CalledESorPSDetailScreenFrom fromScreen, bool isEs) {
    switch (fromScreen) {
      case CalledESorPSDetailScreenFrom.PS_SCREEN:
        if (isEs) {
          context.tagAction(TagsProfessionnelsDeSante.tag_etablissement_sante_tel);
        } else {
          context.tagAction(TagsProfessionnelsDeSante.tag_professionnel_sante_tel);
        }
      case CalledESorPSDetailScreenFrom.MESSAGERIE_SCREEN:
        if (isEs) {
          context.tagAction(TagsMessagerie.tag_642_etablissement_sante_tel);
        } else {
          context.tagAction(TagsMessagerie.tag_594_professionnel_sante_tel);
        }
      case CalledESorPSDetailScreenFrom.DOCUMENT_SCREEN:
        if (isEs) {
          context.tagAction(TagsDocuments.tag_646_etablissement_sante_tel);
        } else {
          context.tagAction(TagsDocuments.tag_644_professionnel_sante_tel);
        }
      default:
        return;
    }
  }

  static void tagValidateRemoveEtablissementDeSanteClick(
    BuildContext context,
    CalledESorPSDetailScreenFrom fromScreen,
  ) {
    switch (fromScreen) {
      case CalledESorPSDetailScreenFrom.MESSAGERIE_SCREEN:
        context.tagAction(TagsMessagerie.tag_730_button_valider_retirer_es);
      case CalledESorPSDetailScreenFrom.DOCUMENT_SCREEN:
        context.tagAction(TagsDocuments.tag_731_button_valider_retirer_es);
      default:
        break;
    }
  }

  static void tagAddEtablissementDeSanteClick(BuildContext context, CalledESorPSDetailScreenFrom fromScreen) {
    switch (fromScreen) {
      case CalledESorPSDetailScreenFrom.PS_SCREEN:
        context.tagAction(TagsProfessionnelsDeSante.tag_976_button_ajouter_es);
      case CalledESorPSDetailScreenFrom.MESSAGERIE_SCREEN:
        context.tagAction(TagsMessagerie.tag_705_button_ajouter_es);
      case CalledESorPSDetailScreenFrom.DOCUMENT_SCREEN:
        context.tagAction(TagsDocuments.tag_729_button_ajouter_es);
      default:
        break;
    }
  }

  static void tagValidateRemovePsClick(BuildContext context, CalledESorPSDetailScreenFrom fromScreen) {
    switch (fromScreen) {
      case CalledESorPSDetailScreenFrom.PS_SCREEN:
        context.tagAction(TagsProfessionnelsDeSante.tag_365_button_delete_professionnel_de_sante);
      case CalledESorPSDetailScreenFrom.MESSAGERIE_SCREEN:
        context.tagAction(TagsMessagerie.tag_557_button_valider_retirer_ps);
      case CalledESorPSDetailScreenFrom.DOCUMENT_SCREEN:
        context.tagAction(TagsDocuments.tag_587_button_valider_retirer_ps);
      default:
        return;
    }
  }

  static void tagAddPsClick(BuildContext context, CalledESorPSDetailScreenFrom fromScreen) {
    switch (fromScreen) {
      case CalledESorPSDetailScreenFrom.MESSAGERIE_SCREEN:
        context.tagAction(TagsMessagerie.tag_555_button_ajouter_ps);
      case CalledESorPSDetailScreenFrom.DOCUMENT_SCREEN:
        context.tagAction(TagsDocuments.tag_586_button_ajouter_ps);
      default:
        return;
    }
  }

  static void tagRemovePsRoleClick(BuildContext context, ProfessionnelSanteDisplayModel? psDisplayModel) {
    switch (psDisplayModel?.professionLinkToRole) {
      case PsProfessionLinkToRole.SAGE_FEMME:
        context.tagAction(TagsProfessionnelsDeSante.tag_2487_link_ps_sage_femme_referente_retirer_role);
      case PsProfessionLinkToRole.PHARMACIEN:
        context.tagAction(TagsProfessionnelsDeSante.tag_2488_link_ps_pharmacien_correspondant_retirer_role);
      default:
        return;
    }
  }

  static void tagAddPsRoleClick(BuildContext context, ProfessionnelSanteDisplayModel? psDisplayModel) {
    switch (psDisplayModel?.professionLinkToRole) {
      case PsProfessionLinkToRole.SAGE_FEMME:
        context.tagAction(TagsProfessionnelsDeSante.tag_2485_link_ps_sage_femme_referente_attribuer_role);
      case PsProfessionLinkToRole.PHARMACIEN:
        context.tagAction(TagsProfessionnelsDeSante.tag_2486_link_ps_pharmacien_correspondant_attribuer_role);
      default:
        return;
    }
  }
}
