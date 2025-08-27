/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_selectors.dart';
import 'package:fr_cnamts_ens/documents/widgets/viewmodels/dossier_representation.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:redux/redux.dart';

class DossierItemViewModel extends Equatable {
  final bool hasSelectedDocuments;

  const DossierItemViewModel._internal({required this.hasSelectedDocuments});

  factory DossierItemViewModel.from(Store<EnsState> store, String dossierId) {
    final selectedDocumentsIds = store.state.documentsState.selectedDocumentsIds;
    final documentsListState = store.state.documentsState.documentsListState;
    DossierRepresentation? dossier;

    if (documentsListState.status.isSuccess()) {
      final dossiersRepresentations = DocumentsSelectors.getDossiersRepresentations(store.state);
      dossier = dossiersRepresentations.firstWhereOrNull((dossier) => dossier.dossierId == dossierId);
    }

    return DossierItemViewModel._internal(
      hasSelectedDocuments: dossier?.documentIds.any((docId) => selectedDocumentsIds.contains(docId)) ?? false,
    );
  }

  @override
  List<Object?> get props => [hasSelectedDocuments];
}
