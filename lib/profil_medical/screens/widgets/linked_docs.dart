/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/messagerie/widgets/file_attachment_widget.dart';
import 'package:fr_cnamts_ens/profil_medical/screens/widgets/form_document_section.dart';

class LinkedDocs extends StatelessWidget {
  final List<DocumentEditionCreation> documentsToCreateAndLink;
  final List<LinkedDocumentDisplayModel> documentsListDisplayModel;
  final void Function(String) onRemoveLinkedDoc;
  final void Function(DocumentEditionCreation) onRemoveDocumentEditionCreation;

  const LinkedDocs({
    required this.documentsToCreateAndLink,
    required this.documentsListDisplayModel,
    super.key,
    required this.onRemoveLinkedDoc,
    required this.onRemoveDocumentEditionCreation,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        ...documentsListDisplayModel.expand(
          (linkedDocument) => [
            FileAttachmentWidget(
              dm: FileAttachmentDisplayModel(documentId: linkedDocument.id, name: linkedDocument.name),
              onRemove: () => onRemoveLinkedDoc(linkedDocument.id),
            ),
            const SizedBox(height: 8),
          ],
        ),
        ...documentsToCreateAndLink.expand(
          (docCreation) {
            final id = UniqueKey();
            return [
              FileAttachmentWidget(
                key: id,
                dm: FileAttachmentDisplayModel(documentId: id.toString(), name: docCreation.name),
                onRemove: () => onRemoveDocumentEditionCreation(docCreation),
              ),
              const SizedBox(height: 8),
            ];
          },
        ),
      ],
    );
  }
}
