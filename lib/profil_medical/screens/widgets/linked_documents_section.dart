/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/documents/screens/document_preview_screen.dart';
import 'package:fr_cnamts_ens/interruption_services/widget/interruption_service_helper.dart';
import 'package:fr_cnamts_ens/messagerie/widgets/file_attachment_widget.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_divider.dart';
import 'package:fr_cnamts_ens/ui/widgets/viewmodels/linked_documents_section_display_model.dart';
import 'package:fr_cnamts_ens/utils/wordings_extension.dart';

class LinkedDocumentsSection extends StatelessWidget {
  final LinkedDocumentsSectionDisplayModel displayModel;
  final String noDocumentText;
  final Function(String docId) onRemoveLinkedDocument;
  final ProfilType profilType;

  const LinkedDocumentsSection({
    required this.displayModel,
    required this.noDocumentText,
    required this.onRemoveLinkedDocument,
    required this.profilType,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const EnsDivider(paddingTop: 16, paddingBottom: 16),
        const Text('Documents', style: EnsTextStyle.text14_w600_normal_title),
        if (displayModel.linkedDocuments.isEmpty) ...[
          const SizedBox(height: 4),
          Text(
            noDocumentText,
            style: EnsTextStyle.text14_w400_normal_body,
          ),
        ] else
          _LinkedDocumentsItems(
            displayModel.linkedDocuments,
            onRemoveLinkedDocument,
            displayModel.interruptionServiceSnackbarMessage,
            profilType,
          ),
      ],
    );
  }
}

class _LinkedDocumentsItems extends StatelessWidget {
  final List<FileAttachmentDisplayModel> linkedDocsDisplayModels;
  final Function(String docId) onRemoveLinkedDocument;
  final String? interruptionServiceSnackbarMessage;
  final ProfilType profilType;

  const _LinkedDocumentsItems(
    this.linkedDocsDisplayModels,
    this.onRemoveLinkedDocument,
    this.interruptionServiceSnackbarMessage,
    this.profilType,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        ...linkedDocsDisplayModels.expand(
          (dm) => [
            FileAttachmentWidget(
              dm: dm,
              onTap: () {
                InterruptionServiceHelper.showSnackbarOnInterruption(
                  context,
                  interruptionServiceSnackbarMessage: interruptionServiceSnackbarMessage,
                  onNotInterrompu: () async {
                    final navigationValue = await Navigator.pushNamed(
                      context,
                      DocumentPreviewScreen.routeName,
                      arguments: DocumentPreviewScreenArgument(
                        documentToDisplayId: dm.documentId,
                        isLinkedToEntity: true,
                      ),
                    );

                    if (navigationValue as bool? ?? false) {
                      onRemoveLinkedDocument(dm.documentId);
                    }
                  },
                );
              },
            ),
            const SizedBox(height: 16),
          ],
        ),
        Text(
          'Retrouvez aussi ces documents dans la liste de vos documents de santé.'
              .resolveWith(isProfilPrincipal: profilType.isProfilPrincipal),
          style: EnsTextStyle.text14_w400_normal_body,
        ),
      ],
    );
  }
}
