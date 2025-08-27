/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document_categorie.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_redux.dart';
import 'package:fr_cnamts_ens/documents/screens/update_document_screen.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:redux/redux.dart';

class UpdateDocumentScreenViewModel extends AnalyticsViewModel with EquatableMixin {
  final Store<EnsState> _store;
  final UpdateDocumentStatus status;
  final EnsDocument docToUpdate;
  final EnsDocumentCategorie? forcedCategory;

  UpdateDocumentScreenViewModel._internal(
    this._store, {
    required this.status,
    required this.docToUpdate,
    this.forcedCategory,
  }) : super(_store);

  factory UpdateDocumentScreenViewModel(Store<EnsState> store, UpdateDocumentScreenArgument argument) {
    UpdateDocumentStatus status = UpdateDocumentStatus.INIT;
    final editionStatus = store.state.documentsState.editionStatus;

    if (editionStatus is DocumentEditionUploading) {
      status = UpdateDocumentStatus.UPLOADING;
    } else if (editionStatus is DocumentEditionUpdateSuccess) {
      status = UpdateDocumentStatus.SUCCESS;
    }
    return UpdateDocumentScreenViewModel._internal(
      store,
      status: status,
      docToUpdate: argument.docToUpdate,
      forcedCategory: argument.forcedCategory,
    );
  }

  void updateDoc(DocumentEdition newDoc) {
    _store.dispatch(UpdateDocumentAction(document: newDoc as DocumentEditionPropertiesUpdate));
  }

  @override
  List<Object?> get props => [status, docToUpdate, forcedCategory];
}

enum UpdateDocumentStatus { INIT, UPLOADING, SUCCESS }
