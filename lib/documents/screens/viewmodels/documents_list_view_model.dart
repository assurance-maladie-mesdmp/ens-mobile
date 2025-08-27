/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document_categorie.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_redux.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_selectors.dart';
import 'package:fr_cnamts_ens/documents/screens/viewmodels/documents_screen_view_model.dart';
import 'package:fr_cnamts_ens/documents/widgets/viewmodels/dossier_representation.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:redux/redux.dart';

class DocumentsListViewModel extends AnalyticsViewModel with EquatableMixin {
  final DocumentsListStatus listStatus;
  final List<ChooseEnsDocumentsScreenDisplayModelItem> displayModels;
  final bool piecesAdministrativesOnly;
  final bool avisArretDeTravailOnly;
  final String? currentFolderId;

  const DocumentsListViewModel._internal(
    super.store, {
    required this.listStatus,
    required this.displayModels,
    required this.piecesAdministrativesOnly,
    required this.avisArretDeTravailOnly,
    this.currentFolderId,
  });

  factory DocumentsListViewModel(
    Store<EnsState> store, {
    DocumentsListFilter filter = DocumentsListFilter.SANS_DOSSIER,
    String? dossierId,
  }) {
    final documentsListState = store.state.documentsState.documentsListState;
    var listStatus = DocumentsListStatus.LOADING;
    final List<ChooseEnsDocumentsScreenDisplayModelItem> displayModels = [];
    final selectedSortingMethod = store.state.documentsState.currentDocumentSortingMethod;

    if (documentsListState.status.isSuccess()) {
      listStatus = _getSuccessListStatus(store.state, filter);
      final List<EnsDocument> docs = _sortFiles(store, filter);
      final dossiers = _getDossiersFromState(
        documentsListState: documentsListState,
        state: store.state,
        documentsIds: docs.map((doc) => doc.id).toList(),
        filter: filter,
      );

      if (listStatus == DocumentsListStatus.SUCCESS) {
        displayModels.add(ChooseEnsDocumentsScreenHeaderDisplayModel());
        displayModels.add(ChooseEnsDocumentsListFilter());
        if (dossiers.isNotEmpty) {
          displayModels.add(ChooseEnsDossierListHeader(dossiers.length));
          displayModels.addAll(
            dossiers.map(
              (dossier) => ChooseEnsDossiersScreenItemDisplayModel(
                dossier,
                dossier.numberOfFiles > 0 && dossier.id != dossierId,
              ),
            ),
          );
        }
        displayModels.add(ChooseEnsDocumentsListHeader(docs.length));
        final sortedDocs = selectedSortingMethod
            .sort(docs.map((doc) => ViewItemDocument(document: doc)).toList())
            .whereType<ViewItemDocument>()
            .toList();
        displayModels.addAll(
          sortedDocs.map(
            (doc) => ChooseEnsDocumentsScreenDocItemDisplayModel(doc.document.id, doc.document.dossierId != null),
          ),
        );
      }
    } else if (documentsListState.status.isError()) {
      listStatus = DocumentsListStatus.ERROR;
    }

    return DocumentsListViewModel._internal(
      store,
      listStatus: listStatus,
      displayModels: displayModels,
      piecesAdministrativesOnly: filter == DocumentsListFilter.PIECES_ADMINISTRATIVES,
      avisArretDeTravailOnly: filter == DocumentsListFilter.AVIS_ARRET_DE_TRAVAIL,
      currentFolderId: dossierId,
    );
  }

  static DocumentsListStatus _getSuccessListStatus(EnsState state, DocumentsListFilter filter) {
    final documents = DocumentsSelectors.getLoadedDocuments(state);
    switch (filter) {
      case DocumentsListFilter.PIECES_ADMINISTRATIVES:
        return documents.any((doc) => doc.categorie == EnsDocumentCategorie.pieceAdministrative)
            ? DocumentsListStatus.SUCCESS
            : DocumentsListStatus.EMPTY;
      case DocumentsListFilter.AVIS_ARRET_DE_TRAVAIL:
        return documents.any((doc) => doc.type == EnsDocumentType.AVIS_ARRET_DE_TRAVAIL)
            ? DocumentsListStatus.SUCCESS
            : DocumentsListStatus.EMPTY;
      case DocumentsListFilter.PIECES_SANTE:
      case DocumentsListFilter.SANS_DOSSIER:
        return documents.isEmpty ? DocumentsListStatus.EMPTY : DocumentsListStatus.SUCCESS;
    }
  }

  static List<ViewItemDossier> _getDossiersFromState({
    required DocumentsListState documentsListState,
    required EnsState state,
    required List<String> documentsIds,
    required DocumentsListFilter filter,
  }) {
    final documents = state.documentsState.documentsListState.documents;
    final dossiers = _filteredDossier(state);
    final selectedSortingMethod = state.documentsState.currentDocumentSortingMethod;
    final viewItemDossiers = dossiers.map(
      (dossierRepresentation) {
        return ViewItemDossier(
          id: dossierRepresentation.dossierId!,
          title: DocumentsSelectors.getDossierTitleFromId(state, dossierRepresentation.dossierId!),
          numberOfFiles: _getNumberOfFileForFolder(dossierRepresentation, filter, documents),
        );
      },
    ).toList();
    return selectedSortingMethod.sort(viewItemDossiers).whereType<ViewItemDossier>().toList();
  }

  static int _getNumberOfFileForFolder(
    DossierRepresentation dossier,
    DocumentsListFilter filter,
    Map<String, EnsDocument> documents,
  ) {
    if (filter == DocumentsListFilter.PIECES_ADMINISTRATIVES) {
      return dossier.documentIds
          .where(
            (docId) =>
                documents[docId] != null && documents[docId]!.categorie == EnsDocumentCategorie.pieceAdministrative,
          )
          .length;
    } else if (filter == DocumentsListFilter.AVIS_ARRET_DE_TRAVAIL) {
      return dossier.documentIds
          .where(
            (docId) => documents[docId] != null && documents[docId]!.type == EnsDocumentType.AVIS_ARRET_DE_TRAVAIL,
          )
          .length;
    } else {
      return dossier.documentIds.length;
    }
  }

  static List<DossierRepresentation> _filteredDossier(EnsState state) {
    return DocumentsSelectors.getDossiersRepresentations(state)
        .where((dossierRepresentation) => dossierRepresentation.dossierId != null)
        .toList();
  }

  static List<EnsDocument> _sortFiles(Store<EnsState> store, DocumentsListFilter filter) {
    switch (filter) {
      case DocumentsListFilter.PIECES_ADMINISTRATIVES:
        return DocumentsSelectors.getPiecesAdministratives(store.state).where((doc) => doc.dossierId == null).toList();
      case DocumentsListFilter.AVIS_ARRET_DE_TRAVAIL:
        return DocumentsSelectors.getAvisArretDeTravail(store.state).where((doc) => doc.dossierId == null).toList();
      case DocumentsListFilter.PIECES_SANTE:
        return DocumentsSelectors.getPiecesSante(store.state);
      case DocumentsListFilter.SANS_DOSSIER:
        return DocumentsSelectors.getFolderlessDocument(store.state);
    }
  }

  @override
  List<Object?> get props => [
        listStatus,
        displayModels,
        piecesAdministrativesOnly,
        avisArretDeTravailOnly,
        currentFolderId,
      ];
}

enum DocumentsListFilter { PIECES_ADMINISTRATIVES, PIECES_SANTE, AVIS_ARRET_DE_TRAVAIL, SANS_DOSSIER }

enum DocumentsListStatus { LOADING, ERROR, SUCCESS, EMPTY }

abstract class ChooseEnsDocumentsScreenDisplayModelItem extends Equatable {
  @override
  List<Object?> get props => [];
}

class ChooseEnsDocumentsListFilter extends ChooseEnsDocumentsScreenDisplayModelItem {}

class ChooseEnsDocumentsScreenHeaderDisplayModel extends ChooseEnsDocumentsScreenDisplayModelItem {}

class ChooseEnsDocumentsListHeader extends ChooseEnsDocumentsScreenDisplayModelItem {
  final int nbDocs;

  ChooseEnsDocumentsListHeader(this.nbDocs);

  @override
  List<Object?> get props => [nbDocs];
}

class ChooseEnsDossierListHeader extends ChooseEnsDocumentsScreenDisplayModelItem {
  final int nbDossiers;

  ChooseEnsDossierListHeader(this.nbDossiers);

  @override
  List<Object?> get props => [nbDossiers];
}

class ChooseEnsDossiersScreenItemDisplayModel extends ChooseEnsDocumentsScreenDisplayModelItem {
  final ViewItemDossier dossier;
  final bool enabled;

  ChooseEnsDossiersScreenItemDisplayModel(this.dossier, [this.enabled = true]);

  @override
  List<Object?> get props => [dossier, enabled];
}

class ChooseEnsDocumentsScreenDocItemDisplayModel extends ChooseEnsDocumentsScreenDisplayModelItem {
  final String docId;
  final bool inFolder;

  ChooseEnsDocumentsScreenDocItemDisplayModel(this.docId, this.inFolder);

  @override
  List<Object?> get props => [docId, inFolder];
}
