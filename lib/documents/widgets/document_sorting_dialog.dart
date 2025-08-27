/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_item_sorting_method.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/ui/widgets/dialogs/sorting_dialog.dart';
import 'package:redux/redux.dart';

class DocumentSortingDialogViewModel {
  final Store<EnsState> store;
  final EnsItemSortingMethod selectedSortingMethod;

  DocumentSortingDialogViewModel._internal(this.store, this.selectedSortingMethod);

  factory DocumentSortingDialogViewModel(Store<EnsState> store) {
    final selectedSortingMethod = store.state.documentsState.currentDocumentSortingMethod;
    return DocumentSortingDialogViewModel._internal(store, selectedSortingMethod);
  }

  void updateDocumentSortingMethod(EnsItemSortingMethod sortingMethod) {
    store.dispatch(UpdateDocumentsSortingMethodAction(sortingMethod));
  }
}

class DocumentSortingDialog extends StatefulWidget {
  @override
  State<DocumentSortingDialog> createState() => _DocumentSortingDialogState();
}

class _DocumentSortingDialogState extends State<DocumentSortingDialog> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, DocumentSortingDialogViewModel>(
      converter: (store) => DocumentSortingDialogViewModel(store),
      distinct: true,
      builder: (BuildContext context, DocumentSortingDialogViewModel vm) => SortingDialog<EnsItemSortingMethod>(
        selectableSortingMethod: EnsItemSortingMethod.values,
        buttonLabel: 'Trier les documents',
        labelMapper: (item) => item.label,
        onValidateSortingMethodSelection: (sortingMethod) {
          vm.updateDocumentSortingMethod(sortingMethod);
        },
        reinitTag: const EnsTag(
          name: 'button_reinitialiser_trier',
          category: EnsAnalyticsCategory.CLICK,
          level1: 'documents',
          level2: 'document_tri',
        ),
        validedSortingTag: const EnsTag(
          name: 'documents_valider_trier',
          category: EnsAnalyticsCategory.CLICK,
          level1: 'documents',
          level2: 'document_tri',
        ),
        initialSelectedSortingMethod: vm.selectedSortingMethod,
        defaultValue: EnsItemSortingMethod.NEWEST,
      ),
    );
  }
}
