/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_redux.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_selectors.dart';
import 'package:fr_cnamts_ens/documents/screens/document_confidentiality_helper.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:redux/redux.dart';

class UpdateConfidentialiteDocumentScreenViewModel extends AnalyticsViewModel with EquatableMixin {
  final KindOfConfidentiality defaultValue;
  final void Function(KindOfConfidentiality) updateConfidentialites;

  const UpdateConfidentialiteDocumentScreenViewModel._internal(
    super.store, {
    required this.defaultValue,
    required this.updateConfidentialites,
  });

  factory UpdateConfidentialiteDocumentScreenViewModel(Store<EnsState> store, String docId) {
    return UpdateConfidentialiteDocumentScreenViewModel._internal(
      store,
      defaultValue: DocumentConfidentialityHelper.getKindOfConfidentiality(
        DocumentsSelectors.getLoadedDocumentById(store.state, docId).confidentialites,
      ),
      updateConfidentialites: (selectedConfidentiality) => store.dispatch(
        UpdateDocumentConfidentialitesAction(docId: docId, newConfidentialites: [selectedConfidentiality]),
      ),
    );
  }

  @override
  List<Object?> get props => [defaultValue];
}
