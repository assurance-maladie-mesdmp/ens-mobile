/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_dossier.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_redux.dart';
import 'package:fr_cnamts_ens/documents/redux/dossiers_selectors.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:redux/redux.dart';

class MoveDocumentViewModel extends Equatable {
  final List<EnsDossier> dossiers;
  final void Function(String) moveSelectedDocuments;
  final int Function() getNumberOfSelectedDocuments;

  const MoveDocumentViewModel._internal({
    required this.moveSelectedDocuments,
    required this.dossiers,
    required this.getNumberOfSelectedDocuments,
  });

  factory MoveDocumentViewModel.from({required Store<EnsState> store, String? docId, String? currentFolderId}) {
    final List<EnsDossier> dossiers = DossiersSelectors.getLoadedDossiers(store.state);
    dossiers.add(const EnsDossier.createRootFolder());
    if (currentFolderId != null) {
      dossiers.removeWhere((dossier) => dossier.id == currentFolderId);
    }
    final List<String> documentsIds = [];
    if (docId != null) {
      documentsIds.add(docId);
    } else {
      documentsIds.addAll(store.state.documentsState.selectedDocumentsIds);
    }
    return MoveDocumentViewModel._internal(
      dossiers: dossiers,
      moveSelectedDocuments: (String targetFolderId) => _moveSelectedDocuments(store, targetFolderId, documentsIds),
      getNumberOfSelectedDocuments: () => docId != null ? 1 : store.state.documentsState.selectedDocumentsIds.length,
    );
  }

  @override
  List<Object?> get props => [dossiers];
}

void _moveSelectedDocuments(Store<EnsState> store, String targetFolderId, List<String> documentsIds) {
  store.dispatch(MoveDocumentsAction(documentsIds: documentsIds, targetFolderId: targetFolderId));
}
