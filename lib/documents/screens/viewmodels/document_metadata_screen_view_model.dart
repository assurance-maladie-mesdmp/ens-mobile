/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/utils/screen_status.dart';
import 'package:redux/redux.dart';

class DocumentMetadataScreenViewModel extends Equatable {
  final bool shouldDisplayEditAction;
  final EnsDocument? documentToDisplay;
  final ScreenStatus docMetadataStatus;
  final void Function() loadDocuments;

  const DocumentMetadataScreenViewModel._internal({
    required this.documentToDisplay,
    required this.shouldDisplayEditAction,
    required this.docMetadataStatus,
    required this.loadDocuments,
  });

  factory DocumentMetadataScreenViewModel.from(Store<EnsState> store, String docToDisplayId) {
    final documentsListState = store.state.documentsState.documentsListState;
    ScreenStatus docMetadataStatus = ScreenStatus.LOADING;
    EnsDocument? documentToDisplay;

    if (documentsListState.status.isSuccess()) {
      docMetadataStatus = ScreenStatus.SUCCESS;
      documentToDisplay = store.state.documentsState.documentsListState.documents[docToDisplayId];
      if (documentToDisplay == null) docMetadataStatus = ScreenStatus.ERROR;
    } else if (documentsListState.status.isError()) {
      docMetadataStatus = ScreenStatus.ERROR;
    }

    return DocumentMetadataScreenViewModel._internal(
      documentToDisplay: documentToDisplay,
      shouldDisplayEditAction: documentToDisplay?.updatable ?? false,
      docMetadataStatus: docMetadataStatus,
      loadDocuments: () => store.dispatch(FetchDocumentsAction(force: true)),
    );
  }

  @override
  List<Object?> get props => [shouldDisplayEditAction, documentToDisplay, docMetadataStatus];
}
