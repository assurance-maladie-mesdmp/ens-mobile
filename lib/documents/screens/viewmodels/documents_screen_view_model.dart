/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/bottom_navigation_tabs/redux/main_app_bar_actions.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_item_sorting_method.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_redux.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_selectors.dart';
import 'package:fr_cnamts_ens/documents/widgets/viewmodels/dossier_representation.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:redux/redux.dart';

class DocumentsScreenViewModel extends Equatable {
  final DocumentsScreenDisplayModel displayModel;
  final bool shouldDisplayAddDocumentFab;
  final Set<String> listOfSelectedDocumentsIds;
  final void Function(String) addDocToSelectionList;
  final void Function() resetSelectedDocumentsList;
  final void Function() toggleMainAppBarVisibility;
  final bool shouldDisplayMultiSelectButton;
  final bool shouldDisplayCreateAvisArretDeTravailDossierBottomSheet;
  final bool hasNouvelItemToHighlight;
  final bool isProfilPrincipal;
  final void Function() refreshDocuments;
  final void Function(String dossierId) supprimerDossier;

  const DocumentsScreenViewModel._internal({
    required this.displayModel,
    required this.shouldDisplayAddDocumentFab,
    required this.listOfSelectedDocumentsIds,
    required this.addDocToSelectionList,
    required this.resetSelectedDocumentsList,
    required this.toggleMainAppBarVisibility,
    this.shouldDisplayMultiSelectButton = false,
    this.shouldDisplayCreateAvisArretDeTravailDossierBottomSheet = false,
    this.hasNouvelItemToHighlight = false,
    this.isProfilPrincipal = true,
    required this.refreshDocuments,
    required this.supprimerDossier,
  });

  factory DocumentsScreenViewModel.from(
    Store<EnsState> store, {
    bool shouldFilterOnPiecesAdministrative = false,
    bool shouldFilterOnAvisArretDeTravail = false,
  }) {
    bool shouldDisplayAddDocumentFab = false;
    final documentsState = store.state.documentsState;

    final documentsListState = documentsState.documentsListState;
    final editionStatus = documentsState.editionStatus;
    final selectedSortingMethod = documentsState.currentDocumentSortingMethod;
    final shouldDisplayMultiSelectButton = documentsState.documentsListState.dossiers.isNotEmpty;
    final numberOfDocuments = documentsState.documentsListState.documents.length;
    final documentsEpingles = DocumentsSelectors.getDocumentsEpingles(store.state);
    final isProfilPrincipal = ProfilsUtils.getCurrentProfilType(store.state).isProfilPrincipal;

    bool shouldDisplayCreateAvisArretDeTravailDossierBottomSheet = false;
    if (documentsListState.status.isSuccess()) {
      final dossiersRepresentations = DocumentsSelectors.getDossiersRepresentations(store.state);
      shouldDisplayAddDocumentFab = editionStatus is! DocumentEditionUploading &&
          (dossiersRepresentations.length > 1 || dossiersRepresentations[0].documentIds.isNotEmpty) &&
          store.state.displayMainAppBar;

      final documentsArretAvisDeTravail = DocumentsSelectors.getAvisArretDeTravail(store.state);
      shouldDisplayCreateAvisArretDeTravailDossierBottomSheet =
          documentsState.shouldDisplayCreateAvisArretDeTravailDossierBottomSheet &&
              documentsArretAvisDeTravail.isNotEmpty;
    }

    final displayModel = _buildDisplayModel(
      store,
      shouldFilterOnPiecesAdministrative: shouldFilterOnPiecesAdministrative,
      shouldFilterOnAvisArretDeTravail: shouldFilterOnAvisArretDeTravail,
      selectedSortingMethod: selectedSortingMethod,
      shouldDisplayFilter: numberOfDocuments > 1,
      shouldDisplayEpingler: documentsEpingles.isNotEmpty,
    );

    bool hasNouvelItemToHighlight() {
      if (displayModel is DocumentsScreenDisplayModelSuccess) {
        final items = displayModel.documentsViewItems;
        if (items.any((item) => item.isNouvelItemToHighlight)) {
          return true;
        }
      }
      return false;
    }

    return DocumentsScreenViewModel._internal(
      displayModel: displayModel,
      shouldDisplayAddDocumentFab: shouldDisplayAddDocumentFab,
      listOfSelectedDocumentsIds: documentsState.selectedDocumentsIds,
      addDocToSelectionList: (String docId) {
        store.dispatch(AddDocumentToSelectionAction(isSelected: true, documentId: docId));
      },
      resetSelectedDocumentsList: () => store.dispatch(InitSelectedDocumentsAction(selectedDocumentsIds: [])),
      toggleMainAppBarVisibility: () => _toggleMainAppBarVisibility(store),
      shouldDisplayMultiSelectButton: shouldDisplayMultiSelectButton,
      shouldDisplayCreateAvisArretDeTravailDossierBottomSheet: shouldDisplayCreateAvisArretDeTravailDossierBottomSheet,
      hasNouvelItemToHighlight: hasNouvelItemToHighlight(),
      isProfilPrincipal: isProfilPrincipal,
      refreshDocuments: () => store.dispatch(FetchDocumentsAction(force: true)),
      supprimerDossier: (dossierId) => store.dispatch(DeleteDossierAction(dossierId: dossierId)),
    );
  }

  @override
  List<Object?> get props => [
        displayModel,
        shouldDisplayAddDocumentFab,
        listOfSelectedDocumentsIds,
        shouldDisplayMultiSelectButton,
        shouldDisplayCreateAvisArretDeTravailDossierBottomSheet,
        hasNouvelItemToHighlight,
        isProfilPrincipal,
      ];

  static DocumentsScreenDisplayModel _buildDisplayModel(
    Store<EnsState> store, {
    required bool shouldFilterOnPiecesAdministrative,
    required bool shouldFilterOnAvisArretDeTravail,
    required EnsItemSortingMethod selectedSortingMethod,
    required bool shouldDisplayFilter,
    required bool shouldDisplayEpingler,
  }) {
    final documentsState = store.state.documentsState;
    final documentsListState = documentsState.documentsListState;
    final editionStatus = documentsState.editionStatus;

    if (editionStatus is DocumentEditionUploading) {
      return DocumentsScreenDisplayModel.updating(editionStatus.info);
    }
    switch (documentsListState.status) {
      case AllPurposesStatus.SUCCESS:
        {
          final dossiersRepresentations = DocumentsSelectors.getDossiersRepresentations(store.state);
          final List<ViewItem> documentsViewItems = [];
          documentsViewItems.add(ViewItemInfoHeader());
          documentsViewItems.add(
            ViewItemFilter(shouldDisplayFilter: shouldDisplayFilter, shouldDisplayEpingler: shouldDisplayEpingler),
          );
          if (dossiersRepresentations.length > 1) {
            documentsViewItems.add(ViewItemDossiersHeader(dossiersRepresentations.length - 1));
            final nouveauDossierId = documentsState.nouveauDossierId;
            final viewItemDossiers = dossiersRepresentations
                .where((dossierRepresentation) => dossierRepresentation.dossierId != null)
                .map(
                  (dossierRepresentation) => ViewItemDossier(
                    id: dossierRepresentation.dossierId!,
                    title: DocumentsSelectors.getDossierTitleFromId(store.state, dossierRepresentation.dossierId!),
                    numberOfFiles: dossierRepresentation.documentIds.length,
                    isNouvelItemToHighlight: dossierRepresentation.dossierId! == nouveauDossierId,
                  ),
                )
                .toList();
            documentsViewItems.addAll(selectedSortingMethod.sort(viewItemDossiers).whereType<ViewItemDossier>());
          }
          final DossierRepresentation dossierRacine = dossiersRepresentations.firstWhere(
            (dossier) => dossier.dossierId == null,
          );
          if (dossierRacine.documentIds.isNotEmpty) {
            final documentsList = dossierRacine.documentIds
                .map(
                  (docId) => DocumentsSelectors.getLoadedDocumentById(store.state, docId),
                )
                .toList();
            documentsViewItems.add(ViewItemDocumentsHeader(dossierRacine.documentIds.length));
            final nouveauDocumentId = documentsState.nouveauDocumentId;
            final viewItemDocument = documentsList
                .map(
                  (doc) => ViewItemDocument(
                    document: doc,
                    isNouvelItemToHighlight: doc.id == nouveauDocumentId,
                  ),
                )
                .toList();
            documentsViewItems.addAll(selectedSortingMethod.sort(viewItemDocument).whereType<ViewItemDocument>());
          }
          return DocumentsScreenDisplayModel.success(documentsViewItems);
        }
      case AllPurposesStatus.ERROR:
        return const DocumentsScreenDisplayModel.error();
      default:
        return const DocumentsScreenDisplayModel.loading();
    }
  }
}

abstract class DocumentsScreenDisplayModel extends Equatable {
  const DocumentsScreenDisplayModel._internal();

  const factory DocumentsScreenDisplayModel.loading() = DocumentsScreenDisplayModelLoading._internal;

  const factory DocumentsScreenDisplayModel.updating(String documentUpdatingInfoText) =
      DocumentsScreenDisplayModelUpdating._internal;

  const factory DocumentsScreenDisplayModel.error() = DocumentsScreenDisplayModelError._internal;

  const factory DocumentsScreenDisplayModel.success(List<ViewItem> dossiersDisplayModels) =
      DocumentsScreenDisplayModelSuccess._internal;
}

class DocumentsScreenDisplayModelLoading extends DocumentsScreenDisplayModel {
  const DocumentsScreenDisplayModelLoading._internal() : super._internal();

  @override
  List<Object?> get props => [];
}

class DocumentsScreenDisplayModelUpdating extends DocumentsScreenDisplayModel {
  final String documentUpdatingInfoText;

  const DocumentsScreenDisplayModelUpdating._internal(this.documentUpdatingInfoText) : super._internal();

  @override
  List<Object?> get props => [documentUpdatingInfoText];
}

class DocumentsScreenDisplayModelError extends DocumentsScreenDisplayModel {
  const DocumentsScreenDisplayModelError._internal() : super._internal();

  @override
  List<Object?> get props => [];
}

class DocumentsScreenDisplayModelSuccess extends DocumentsScreenDisplayModel {
  final List<ViewItem> documentsViewItems;

  const DocumentsScreenDisplayModelSuccess._internal(this.documentsViewItems) : super._internal();

  bool get isNotEmpty => documentsViewItems.any(
        (element) => element.runtimeType == ViewItemDossier || element.runtimeType == ViewItemDocument,
      );

  @override
  List<Object?> get props => [documentsViewItems];
}

abstract class ViewItem extends Equatable {
  final bool isNouvelItemToHighlight;

  const ViewItem({this.isNouvelItemToHighlight = false});

  @override
  List<Object?> get props => [isNouvelItemToHighlight];
}

class ViewItemFilter extends ViewItem {
  final bool shouldDisplayFilter;
  final bool shouldDisplayEpingler;

  const ViewItemFilter({required this.shouldDisplayFilter, required this.shouldDisplayEpingler});

  @override
  List<Object?> get props => [...super.props, shouldDisplayFilter, shouldDisplayEpingler];
}

class ViewItemInfoHeader extends ViewItem {}

class ViewItemDossiersHeader extends ViewItem {
  final int dossiersCount;

  const ViewItemDossiersHeader(this.dossiersCount);

  @override
  List<Object?> get props => [dossiersCount];
}

class ViewItemDocumentsHeader extends ViewItem {
  final int documentsCount;

  const ViewItemDocumentsHeader(this.documentsCount);

  @override
  List<Object?> get props => [documentsCount];
}

class ViewItemDossier extends ViewItem {
  final String id;
  final String title;
  final int numberOfFiles;

  const ViewItemDossier({
    required this.id,
    required this.title,
    required this.numberOfFiles,
    super.isNouvelItemToHighlight,
  });

  @override
  List<Object?> get props => [id, title, numberOfFiles, isNouvelItemToHighlight];
}

class ViewItemDocument extends ViewItem {
  final EnsDocument document;

  const ViewItemDocument({
    required this.document,
    super.isNouvelItemToHighlight,
  });

  @override
  List<Object?> get props => [document, isNouvelItemToHighlight];
}

void _toggleMainAppBarVisibility(Store<EnsState> store) => store.dispatch(ToggleMainAppBarVisibilityAction());
