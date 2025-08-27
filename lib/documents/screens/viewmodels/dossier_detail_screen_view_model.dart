/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document_categorie.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_redux.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_selectors.dart';
import 'package:fr_cnamts_ens/documents/screens/viewmodels/documents_screen_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/recommandations/redux/recommandations_redux.dart';
import 'package:redux/redux.dart';

class DossierDetailScreenViewModel extends Equatable {
  final String? dossierName;
  final List<ViewItem> items;
  final DossierDetailDisplayStatus status;
  final String dossierId;
  final String? documentUpdatingInfoText;
  final void Function() refreshDocuments;
  final void Function() moveDocuments;
  final void Function() supprimerDossier;
  final void Function(String) addDocToSelectionList;
  final void Function() resetSelectedDocumentsList;
  final bool shouldDisplayAddButtonFromMES;

  const DossierDetailScreenViewModel._({
    required this.dossierName,
    required this.items,
    required this.status,
    required this.dossierId,
    required this.refreshDocuments,
    required this.moveDocuments,
    required this.supprimerDossier,
    this.documentUpdatingInfoText,
    required this.addDocToSelectionList,
    required this.resetSelectedDocumentsList,
    required this.shouldDisplayAddButtonFromMES,
  });

  factory DossierDetailScreenViewModel.from(
    Store<EnsState> store, {
    required String dossierId,
    EnsDocumentCategorie? filterOnType,
  }) {
    final documentsState = store.state.documentsState;
    final ensDossier = documentsState.documentsListState.dossiers[dossierId];
    var status = DossierDetailDisplayStatus.LOADING;
    String? documentUpdatingInfoText;

    final selectedSortingMethod = store.state.documentsState.currentDocumentSortingMethod;
    final documentsListState = documentsState.documentsListState;
    final editionStatus = documentsState.editionStatus;
    final List<ViewItem> items = [];

    if (documentsListState.status.isSuccess() && ensDossier != null) {
      final dossiersRepresentations = DocumentsSelectors.getDossiersRepresentations(store.state);
      final dossierRepresentation = dossiersRepresentations.firstWhere(
        (element) => element.dossierId == dossierId,
      );
      if (dossierRepresentation.documentIds.isNotEmpty) {
        status = DossierDetailDisplayStatus.SUCCESS;
        final documentsList = dossierRepresentation.documentIds
            .map((docId) => DocumentsSelectors.getLoadedDocumentById(store.state, docId))
            .toList();
        if (filterOnType != null) {
          documentsList.removeWhere((doc) => doc.categorie != filterOnType);
        }
        items.add(
          ViewItemFilter(
            shouldDisplayEpingler: false,
            shouldDisplayFilter: documentsList.length > 1,
          ),
        );
        items.add(ViewItemDocumentsHeader(dossierRepresentation.documentIds.length));
        final viewItemDocument = documentsList.map(
          (doc) {
            return ViewItemDocument(
              document: doc,
              isNouvelItemToHighlight: doc.id == documentsState.nouveauDocumentId,
            );
          },
        ).toList();
        items.addAll(selectedSortingMethod.sort(viewItemDocument));
      } else {
        status = DossierDetailDisplayStatus.EMPTY;
      }
    } else if (documentsListState.status.isError()) {
      status = DossierDetailDisplayStatus.ERROR;
    } else if (ensDossier == null) {
      status = DossierDetailDisplayStatus.ERROR;
    }

    if (editionStatus is DocumentEditionUploading) {
      status = DossierDetailDisplayStatus.UPDATE_IN_PROGRESS;
      documentUpdatingInfoText = editionStatus.info;
    }

    return DossierDetailScreenViewModel._(
      dossierId: dossierId,
      dossierName: ensDossier?.name,
      items: items,
      status: status,
      documentUpdatingInfoText: documentUpdatingInfoText,
      refreshDocuments: () => store.dispatch(FetchDocumentsAction(force: true)),
      moveDocuments: () => _moveDocuments(store, dossierId),
      supprimerDossier: () => _deleteDocument(store, dossierId),
      addDocToSelectionList: (docId) => store.dispatch(
        AddDocumentToSelectionAction(isSelected: true, documentId: docId),
      ),
      resetSelectedDocumentsList: () => store.dispatch(InitSelectedDocumentsAction(selectedDocumentsIds: [])),
      shouldDisplayAddButtonFromMES: DocumentsSelectors.getLoadedDocuments(store.state).isNotEmpty,
    );
  }

  bool get shouldDisplayFloatingAddButton => items.isNotEmpty && status == DossierDetailDisplayStatus.SUCCESS;

  bool get hasNouveauDocumentToHighlight => items.any((item) => item.isNouvelItemToHighlight);

  static void _moveDocuments(Store<EnsState> store, String targetFolderId) {
    final selectedDocumentsIds = store.state.documentsState.selectedDocumentsIds.toList();
    if (selectedDocumentsIds.isNotEmpty) {
      store.dispatch(
        MoveDocumentsAction(
          documentsIds: store.state.documentsState.selectedDocumentsIds.toList(),
          targetFolderId: targetFolderId,
        ),
      );
    }
  }

  static void _deleteDocument(Store<EnsState> store, String dossierId) {
    final document = store.state.documentsState.documentsListState.documents[dossierId];
    if (document?.categorie == EnsDocumentCategorie.pieceAdministrative) {
      store.dispatch(const FetchRecommandationsAction(force: true));
    }
    store.dispatch(DeleteDossierAction(dossierId: dossierId));
  }

  @override
  List<Object?> get props => [
        dossierId,
        dossierName,
        items,
        status,
        documentUpdatingInfoText,
        shouldDisplayAddButtonFromMES,
      ];
}

enum DossierDetailDisplayStatus { SUCCESS, ERROR, LOADING, UPDATE_IN_PROGRESS, EMPTY }
