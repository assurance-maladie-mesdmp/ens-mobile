/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_redux.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_selectors.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:redux/redux.dart';

class DocumentAttachmentItemViewModel extends Equatable {
  final EnsDocument document;
  final bool isSelected;
  final String? dossierName;
  final void Function() updateSelectedDocument;

  const DocumentAttachmentItemViewModel._internal({
    required this.document,
    required this.isSelected,
    this.dossierName,
    required this.updateSelectedDocument,
  });

  factory DocumentAttachmentItemViewModel(Store<EnsState> store, String idDocument) {
    final EnsDocument document = DocumentsSelectors.getLoadedDocumentById(store.state, idDocument);

    final bool isSelected = store.state.documentsState.selectedDocumentsIds.contains(idDocument);
    final String? dossierName =
        document.dossierId != null ? DocumentsSelectors.getDossierTitleFromId(store.state, document.dossierId!) : null;
    return DocumentAttachmentItemViewModel._internal(
      document: document,
      isSelected: isSelected,
      dossierName: dossierName,
      updateSelectedDocument: () {
        store.dispatch(
          AddDocumentToSelectionAction(
            isSelected: !isSelected,
            documentId: document.id,
          ),
        );
      },
    );
  }

  @override
  List<Object?> get props => [document, isSelected, dossierName];
}
