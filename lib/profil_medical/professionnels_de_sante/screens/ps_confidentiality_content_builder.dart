/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/aide/nous_contacter/screens/nous_contacter_screen.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/bottom_navigation_tabs/bottom_navigation_tabs_screen.dart';
import 'package:fr_cnamts_ens/guestmode/guest_mode_helper.dart';
import 'package:fr_cnamts_ens/helpdesk/screens/signalement_helper.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/matrice_habilitation/screens/detail_droits_access_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/professionnel_de_sante_signaler_acces_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/ps_confidentiality_content.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_professionnels_de_sante.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet_default_text_content.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_rich_text.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class PsConfidentialityContentBuilder {
  static PsConfidentialityActionItem buildBlockPsActionItem(
    BuildContext context, {
    required String title,
    required void Function() blockPs,
  }) {
    return PsConfidentialityActionItem(
      icon: EnsImages.ic_lock,
      title: title,
      onTap: () {
        context.tagAction(TagsProfessionnelsDeSante.tag_2406_button_ps_opposition_acces);
        _showBlockPsBottomSheet(context, blockPs);
      },
    );
  }

  static PsConfidentialityInformationItem buildDroitAccesItem(
    BuildContext context, {
    required String title,
  }) {
    return PsConfidentialityInformationItem(
      icon: EnsImages.ic_confidentiality_acces,
      title: title,
      buttonName: 'Voir le détail',
      onTap: () {
        context.tagAction(TagsProfessionnelsDeSante.tag_2403_link_ps_confidentialite);
        Navigator.pushNamed(context, DetailDroitsAccesScreen.routeName);
      },
    );
  }

  static PsConfidentialityInformationItem buildAccesDocumentItem(BuildContext context) {
    return PsConfidentialityInformationItem(
      icon: EnsImages.ic_confidentiality_hide,
      title: 'Aucun professionnel ne peut accéder aux documents que j\'ai masqués.',
      buttonName: 'Gérer les documents',
      onTap: () {
        context.tagAction(TagsProfessionnelsDeSante.tag_2467_link_gerer_document);
        Navigator.popUntil(context, (route) => route.isFirst);
        BottomNavigationTabsScreen.navigateToTab(BottomTabs.DOCUMENTS);
      },
    );
  }

  static PsConfidentialityInformationItem buildSignalementItem(
    BuildContext context, {
    required String? formattedLastReportDate,
    required bool isReportLimitExceeded,
    required String idNat,
    required String psFullName,
  }) {
    return PsConfidentialityInformationItem(
      icon: EnsImages.ic_signaler,
      richTextTitle: formattedLastReportDate != null
          ? EnsRichText(
              text: TextSpan(
                text:
                    'J\'ai signalé ce professionnel le $formattedLastReportDate. Je peux retrouver mon signalement dans la rubrique ',
                style: EnsTextStyle.text14_w400_normal_body,
                children: [
                  TextSpan(
                    text: 'nous contacter',
                    style: EnsTextStyle.text14_w600_normal_primary_underline,
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => Navigator.pushNamed(context, NousContacterScreen.routeName),
                  ),
                ],
              ),
            )
          : null,
      title: formattedLastReportDate == null ? 'Si nécessaire, je peux signaler un accès non autorisé.' : null,
      buttonName: 'Signaler',
      onTap: () {
        GuestModeHelper.showUnavailableSnackbarIfGuestMode(
          context: context,
          onAuthenticatedMode: () {
            SignalementHelper.showSnackbarOnLimitExceeded(
              context,
              isLimitExceeded: isReportLimitExceeded,
              onLimitNotExceeded: () {
                Navigator.pushNamed(
                  context,
                  ProfessionnelDeSanteSignalerAccesScreen.routeName,
                  arguments: ProfessionnelDeSanteSignalerAccesScreenArguments(psIdNat: idNat, psFullName: psFullName),
                );
              },
            );
          },
        );
      },
    );
  }

  static void _showBlockPsBottomSheet(BuildContext context, void Function() blockPs) {
    context.tagAction(TagsProfessionnelsDeSante.tag_2407_popin_ps_bloquer_acces);
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return ConfirmationBottomSheet(
          title: 'Bloquer l\'accès ?',
          content: const ConfirmationBottomSheetDefaultTextContent(
            'Si je ne souhaite plus que le professionnel de santé consulte mes informations de santé, je peux lui bloquer l\'accès. Il pourra toujours déposer des documents.',
          ),
          positiveButtonLabel: 'Bloquer l\'accès',
          negativeButtonLabel: 'Annuler',
          positiveButtonHandler: () {
            context.tagAction(TagsProfessionnelsDeSante.tag_2408_button_ps_bloquer_acces);
            blockPs();
          },
        );
      },
    );
  }

  static void showUnblockPsBottomSheet(BuildContext context, void Function() unblockPs) {
    context.tagAction(TagsProfessionnelsDeSante.tag_2409_popin_ps_debloquer_acces);
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return ConfirmationBottomSheet(
          title: 'Débloquer l\'accès ?',
          content: const ConfirmationBottomSheetDefaultTextContent(
            'Si je souhaite que le professionnel de santé puisse à nouveau consulter mes informations de santé, je peux lui débloquer l\'accès.\nDans ce cas, il devra à nouveau me demander mon accord oral.',
          ),
          positiveButtonLabel: 'Débloquer l\'accès',
          positiveButtonColor: EnsColors.primary,
          negativeButtonLabel: 'Annuler',
          positiveButtonHandler: () {
            context.tagAction(TagsProfessionnelsDeSante.tag_2410_button_ps_debloquer_acces);
            unblockPs();
          },
        );
      },
    );
  }
}
