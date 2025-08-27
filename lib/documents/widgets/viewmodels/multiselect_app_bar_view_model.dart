/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_redux.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_selectors.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:intl/intl.dart';
import 'package:redux/redux.dart';

class MultiselectAppBarViewModel extends Equatable {
  final String appBarLabel;
  final bool areActionButtonsEnabled;
  final MultiselectDeletionStatus Function() getMultiselectDeletionStatus;
  final List<String> Function() getUndeletableDocumentsNames;
  final void Function() deleteMultipleDocuments;
  final void Function(String) moveMultipleDocuments;
  final int Function() getNumberOfSelectedDocuments;

  const MultiselectAppBarViewModel._internal({
    required this.appBarLabel,
    required this.areActionButtonsEnabled,
    required this.getMultiselectDeletionStatus,
    required this.getUndeletableDocumentsNames,
    required this.deleteMultipleDocuments,
    required this.moveMultipleDocuments,
    required this.getNumberOfSelectedDocuments,
  });

  factory MultiselectAppBarViewModel(Store<EnsState> store) {
    final numberOfSelectedDocs = store.state.documentsState.selectedDocumentsIds.length;
    return MultiselectAppBarViewModel._internal(
      areActionButtonsEnabled: numberOfSelectedDocs != 0,
      getMultiselectDeletionStatus: () => _getMultiselectDeletionStatus(store),
      getUndeletableDocumentsNames: () => _getUndeletableDocumentsNames(store),
      deleteMultipleDocuments: () => _deleteMultipleDocuments(store),
      moveMultipleDocuments: (String targetFolderId) => _moveMultipleDocuments(store, targetFolderId),
      appBarLabel: Intl.plural(
        numberOfSelectedDocs,
        zero: '0 sélectionné',
        one: '1 sélectionné',
        other: '$numberOfSelectedDocs sélectionnés',
      ),
      getNumberOfSelectedDocuments: () => store.state.documentsState.selectedDocumentsIds.length,
    );
  }

  @override
  List<Object?> get props => [appBarLabel, areActionButtonsEnabled];
}

MultiselectDeletionStatus _getMultiselectDeletionStatus(Store<EnsState> store) {
  final selectedDocsIds = store.state.documentsState.selectedDocumentsIds;
  if (selectedDocsIds.length > 10) return MultiselectDeletionStatus.NUMBER_OF_DOCS_EXCEEDED;
  final selectedDocs = selectedDocsIds.map((docId) => DocumentsSelectors.getLoadedDocumentById(store.state, docId));
  if (selectedDocs.every((doc) => doc.deletable)) return MultiselectDeletionStatus.DELETABLE;
  if (selectedDocs.any((doc) => doc.deletable)) return MultiselectDeletionStatus.SOME_UNDELETABLE;
  return MultiselectDeletionStatus.ALL_UNDELETABLE;
}

List<String> _getUndeletableDocumentsNames(Store<EnsState> store) {
  final selectedDocsIds = store.state.documentsState.selectedDocumentsIds;
  final selectedDocs = selectedDocsIds.map((docId) => DocumentsSelectors.getLoadedDocumentById(store.state, docId));
  return selectedDocs.where((doc) => !doc.deletable).map((doc) => doc.title).toList();
}

void _deleteMultipleDocuments(Store<EnsState> store) {
  final selectedDocsIds = store.state.documentsState.selectedDocumentsIds;
  final selectedDocs = selectedDocsIds.map((docId) => DocumentsSelectors.getLoadedDocumentById(store.state, docId));
  store.dispatch(
    DeleteDocumentsAction(documentsIds: selectedDocs.where((doc) => doc.deletable).map((doc) => doc.id).toList()),
  );
}

void _moveMultipleDocuments(Store<EnsState> store, String targetFolderId) {
  final selectedDocsIds = store.state.documentsState.selectedDocumentsIds;
  store.dispatch(MoveDocumentsAction(documentsIds: selectedDocsIds.toList(), targetFolderId: targetFolderId));
}

enum MultiselectDeletionStatus { DELETABLE, SOME_UNDELETABLE, ALL_UNDELETABLE, NUMBER_OF_DOCS_EXCEEDED }
