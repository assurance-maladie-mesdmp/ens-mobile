/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_selectors.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:redux/redux.dart';

class GetSelectedDocumentIdsViewModel extends Equatable {
  final List<EnsDocument> selectedDocuments;

  const GetSelectedDocumentIdsViewModel._internal(this.selectedDocuments);

  factory GetSelectedDocumentIdsViewModel(Store<EnsState> store) {
    final documents = DocumentsSelectors.getLoadedDocuments(store.state);
    final Set<String> selectedDocumentIds = store.state.documentsState.selectedDocumentsIds;
    final selectedDocument = documents.where((document) => selectedDocumentIds.contains(document.id)).toList();

    return GetSelectedDocumentIdsViewModel._internal(selectedDocument);
  }

  @override
  List<Object?> get props => [selectedDocuments];
}
