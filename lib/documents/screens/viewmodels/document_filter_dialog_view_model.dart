/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document_categorie.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_selectors.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/ui/widgets/dialogs/filter_dialog.dart';
import 'package:redux/redux.dart';

class DocumentFilterDialogViewModel extends Equatable {
  final List<CategoryFilterItem<EnsDocumentCategorie>> selectableFilters;

  const DocumentFilterDialogViewModel._internal({required this.selectableFilters});

  factory DocumentFilterDialogViewModel(
    Store<EnsState> store,
    List<EnsDocumentCategorie> preSelectedCategories,
    String? dossierToFilterId,
    bool isPersonalizedFilters,
  ) {
    return DocumentFilterDialogViewModel._internal(
      selectableFilters: isPersonalizedFilters
          ? _getPersonalizedFilters(
              DocumentsSelectors.getLoadedDocuments(store.state),
              dossierToFilterId,
              preSelectedCategories,
            )
          : _getSelectableFilters(preSelectedCategories),
    );
  }

  @override
  List<Object?> get props => [selectableFilters];
}

List<CategoryFilterItem<EnsDocumentCategorie>> _getPersonalizedFilters(
  List<EnsDocument> documents,
  String? dossierToFilterId,
  List<EnsDocumentCategorie> preSelectedCategories,
) {
  final filters = EnsDocumentCategorie.values
      .where(
        (categorie) => documents.any(
          (doc) => doc.categorie == categorie && (dossierToFilterId == null || doc.dossierId == dossierToFilterId),
        ),
      )
      .toList();

  return filters.map((filter) => CategoryFilterItem(filter, preSelectedCategories.contains(filter))).toList();
}

List<CategoryFilterItem<EnsDocumentCategorie>> _getSelectableFilters(List<EnsDocumentCategorie> preSelectedCategories) {
  final List<CategoryFilterItem<EnsDocumentCategorie>> availableFilters = [];
  final categories = EnsDocumentCategorie.values.where((value) => value.canBeFiltered).toList();
  for (final category in categories) {
    availableFilters.add(CategoryFilterItem(category, preSelectedCategories.contains(category)));
  }
  return availableFilters;
}
