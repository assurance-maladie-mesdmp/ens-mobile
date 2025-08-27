/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/messagerie/attachment_display/screens/attachment_display_screen.dart';
import 'package:fr_cnamts_ens/messagerie/widgets/file_attachment_widget.dart';
import 'package:fr_cnamts_ens/tags/tags_messagerie.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/dynamic_action_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class ChooseAttachmentActionController {
  static void openChooseAttachmentActionBottomSheet(
    BuildContext context,
    FileAttachmentDisplayModel attachmentDM,
  ) {
    context.tagAction(TagsMessagerie.tag_popin_consulter_PJ_actions);
    DynamicActionBottomSheet.showOptionsBottomSheet(
      [
        _buildDisplayAttachmentAction(context, attachmentDM),
        _buildDownloadAttachmentAction(context, attachmentDM),
        _buildAddToDocumentsAction(context, attachmentDM),
      ],
      context,
      title: 'Sélectionner une action',
    );
  }

  static BottomSheetAction _buildDownloadAttachmentAction(
    BuildContext context,
    FileAttachmentDisplayModel attachmentDM,
  ) {
    return BottomSheetAction(
      assetName: EnsImages.ic_download,
      label: 'Télécharger',
      execution: () {
        context.tagAction(TagsMessagerie.tag_button_telecharger_PJ_local);
        _openAttachmentDisplayScreen(context, attachmentDM, ActionMode.DOWNLOAD);
      },
    );
  }

  static BottomSheetAction _buildDisplayAttachmentAction(
    BuildContext context,
    FileAttachmentDisplayModel attachmentDM,
  ) {
    return BottomSheetAction(
      assetName: EnsImages.ic_show,
      label: 'Visualiser',
      execution: () {
        context.tagAction(TagsMessagerie.tag_button_visualiser_PJ);
        _openAttachmentDisplayScreen(context, attachmentDM, ActionMode.DISPLAY);
      },
    );
  }

  static BottomSheetAction _buildAddToDocumentsAction(
    BuildContext context,
    FileAttachmentDisplayModel attachmentDM,
  ) {
    return BottomSheetAction(
      assetName: EnsImages.ic_folder_open_padding,
      label: 'Enregistrer dans mes documents de santé',
      execution: () {
        context.tagAction(TagsMessagerie.tag_button_enregistrer_PJ_mesDocuments);
        _openAttachmentDisplayScreen(context, attachmentDM, ActionMode.ADD_TO_DOCUMENTS);
      },
    );
  }

  static void _openAttachmentDisplayScreen(
    BuildContext context,
    FileAttachmentDisplayModel attachment,
    ActionMode actionMode,
  ) {
    final arguments = AttachmentDisplayScreenArguments(attachmentDisplayModel: attachment, actionMode: actionMode);
    Navigator.pushNamed(context, AttachmentDisplayScreen.routeName, arguments: arguments);
  }
}

enum ActionMode { DISPLAY, DOWNLOAD, ADD_TO_DOCUMENTS }
