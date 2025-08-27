/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document_categorie.dart';
import 'package:fr_cnamts_ens/documents/screens/viewmodels/document_actions_helper.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet_default_text_content.dart';
import 'package:fr_cnamts_ens/utils/device_utils.dart';

class DocumentDeletionViewController {
  static void deleteDocument(
    BuildContext context,
    EnsDocument document,
  ) {
    DocumentActionsHelper.tagShowModal(context);
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext builderContext) {
        return ConfirmationBottomSheet(
          title: document.categorie.suppressionPopinTitleText,
          content: ConfirmationBottomSheetDefaultTextContent(document.categorie.suppressionPopinHelpText),
          positiveButtonLabel: 'Supprimer',
          positiveButtonHandler: () {
            DocumentActionsHelper.tagValidateClick(context);
            if (document.categorie == EnsDocumentCategorie.directivesAnticipees) {
              DocumentActionsHelper.deleteDirectivesAnticipees(context, document.id);
              return;
            } else {
              DocumentActionsHelper.deleteDocument(context, document.id);
            }
          },
          negativeButtonHandler: () => DocumentActionsHelper.tagCancelClick(context),
          areButtonsOnSameRow: !DeviceUtils.isSmallDevice(context),
        );
      },
    );
  }
}
