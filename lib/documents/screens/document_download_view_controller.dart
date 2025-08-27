/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/documents/screens/viewmodels/document_actions_helper.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/tags/tags_documents.dart';
import 'package:fr_cnamts_ens/traces/domain/ens_send_trace.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet_default_text_content.dart';

class DocumentDownloadViewController {
  static void downloadDocument(BuildContext context, EnsDocument document) {
    final navigatorKey = EnsModuleContainer.currentInjector.getNavigatorKey();
    if (navigatorKey.currentContext != null) {
      showModalBottomSheet(
        isScrollControlled: true,
        context: navigatorKey.currentContext!,
        builder: (_) {
          return ConfirmationBottomSheet(
            title: 'Télécharger ce document ?',
            content: const ConfirmationBottomSheetDefaultTextContent(
              'Vos documents de santé sont sensibles et sont stockés de manière sécurisée dans Mon espace santé.\n'
              'Une fois téléchargés, assurez-vous de les conserver en toute sécurité et de limiter leur partage.',
            ),
            positiveButtonLabel: 'Télécharger',
            positiveButtonColor: EnsColors.primary,
            positiveButtonHandler: () {
              context.tagAction(TagsDocuments.tag_845_button_telecharger_sensibilisation);
              context.traceAction(
                EnsTraceType.TELECHARGEMENT_DOC,
                params: {'nomDocument': document.title},
              );
              DocumentActionsHelper.downloadDocument(context, docToDisplay: document);
            },
            negativeButtonHandler: () {
              context.tagAction(TagsDocuments.tag_846_button_annuler_sensibilisation);
            },
          );
        },
      );
    }
  }
}
