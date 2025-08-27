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
import 'package:fr_cnamts_ens/documents/screens/filter_result_screen.dart';
import 'package:fr_cnamts_ens/documents/screens/viewmodels/documents_screen_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:intl/intl.dart';
import 'package:redux/redux.dart';

class FilterResultScreenViewModel extends AnalyticsViewModel with EquatableMixin {
  final Store<EnsState> store;
  final AllPurposesStatus documentsStatus;
  final List<EnsDocument> filteredDocuments;
  final List<EnsDocumentCategorie> currentActiveFilters;
  final String? dossierId;
  final String? epinglerDocumentsCount;
  final void Function() loadDocuments;

  const FilterResultScreenViewModel._internal(
    this.store, {
    required this.documentsStatus,
    required this.filteredDocuments,
    required this.currentActiveFilters,
    this.dossierId,
    this.epinglerDocumentsCount,
    required this.loadDocuments,
  }) : super(store);

  factory FilterResultScreenViewModel.from(Store<EnsState> store, FilterResultScreenArgument argument) {
    final documentsListState = store.state.documentsState.documentsListState;

    List<EnsDocument> filteredDocuments;
    switch (argument.filterMode) {
      case FilterMode.BY_EPINGLE:
        filteredDocuments = DocumentsSelectors.getDocumentsEpingles(store.state);
      case FilterMode.BY_CATEGORIE:
        filteredDocuments = DocumentsSelectors.getDocumentsByCategories(
          store.state,
          argument.currentActiveFilters,
          argument.dossierId,
        );
    }

    final currentSortingOption = store.state.documentsState.currentDocumentSortingMethod;
    final filteredSortedDocs = currentSortingOption
        .sort(filteredDocuments.map((doc) => ViewItemDocument(document: doc)).toList())
        .whereType<ViewItemDocument>()
        .toList();

    return FilterResultScreenViewModel._internal(
      store,
      documentsStatus: documentsListState.status,
      filteredDocuments: filteredSortedDocs.map((doc) => doc.document).toList(),
      currentActiveFilters: argument.currentActiveFilters,
      dossierId: argument.dossierId,
      epinglerDocumentsCount: argument.filterMode == FilterMode.BY_EPINGLE
          ? Intl.plural(
              filteredDocuments.length,
              one: '1 document épinglé',
              other: '${filteredDocuments.length} documents épinglés',
            )
          : null,
      loadDocuments: () => store.dispatch(FetchDocumentsAction()),
    );
  }

  @override
  List<Object?> get props => [
        documentsStatus,
        filteredDocuments,
        currentActiveFilters,
        dossierId,
        epinglerDocumentsCount,
      ];
}
