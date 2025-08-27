/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/interruption_services/widget/interruption_service_helper.dart';
import 'package:fr_cnamts_ens/profil_medical/domain/models/ens_pml_section.dart';
import 'package:fr_cnamts_ens/profil_medical/screens/widgets/add_linked_document.dart';
import 'package:fr_cnamts_ens/profil_medical/screens/widgets/linked_docs.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';

class LinkedDocumentDisplayModel extends Equatable {
  final String id;
  final String name;

  const LinkedDocumentDisplayModel(this.id, this.name);

  @override
  List<Object?> get props => [id, name];
}

class FormDocumentsSection extends StatelessWidget {
  final List<LinkedDocumentDisplayModel> linkedDocumentsFromExistingMES;
  final List<DocumentEditionCreation> linkedDocumentToCreate;
  final Function(String) onRemoveLinkedDoc;
  final Function(List<EnsDocument>) onDocumentSelected;
  final Function(DocumentEditionCreation) onRemoveDocumentEditionCreation;
  final EnsPmlSection displayLocation;
  final String? interruptionServiceSnackbarMessage;
  final ProfilType profilType;

  const FormDocumentsSection({
    required this.linkedDocumentsFromExistingMES,
    required this.linkedDocumentToCreate,
    required this.onRemoveLinkedDoc,
    required this.onDocumentSelected,
    required this.onRemoveDocumentEditionCreation,
    required this.displayLocation,
    required this.interruptionServiceSnackbarMessage,
    required this.profilType,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Documents (facultatif)', style: EnsTextStyle.text16_w600_title),
        const SizedBox(height: 8),
        if (linkedDocumentsFromExistingMES.isNotEmpty || linkedDocumentToCreate.isNotEmpty)
          LinkedDocs(
            documentsListDisplayModel: linkedDocumentsFromExistingMES,
            documentsToCreateAndLink: linkedDocumentToCreate,
            onRemoveLinkedDoc: (name) {
              InterruptionServiceHelper.showSnackbarOnInterruption(
                context,
                interruptionServiceSnackbarMessage: interruptionServiceSnackbarMessage,
                onNotInterrompu: () {
                  onRemoveLinkedDoc(name);
                },
              );
            },
            onRemoveDocumentEditionCreation: onRemoveDocumentEditionCreation,
          ),
        AddLinkedDocumentWidget(
          isAttachedFile: true,
          alreadySelectedDocsIds: linkedDocumentsFromExistingMES.map((linkedDoc) => linkedDoc.id).toList(),
          pmlSection: displayLocation,
          onExistingMESDocsSelectedCallback: onDocumentSelected,
          interruptionServiceSnackbarMessage: interruptionServiceSnackbarMessage,
          profilType: profilType,
        ),
      ],
    );
  }
}
