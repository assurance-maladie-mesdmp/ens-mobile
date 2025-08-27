/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_redux.dart';
import 'package:fr_cnamts_ens/files/domain/models/ens_file_content.dart';
import 'package:fr_cnamts_ens/infra/receive_sharing/redux/receive_sharing_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/tags/tags_documents.dart';
import 'package:redux/redux.dart';

class ReceiveSharingViewModel extends AnalyticsViewModel with EquatableMixin {
  final bool hasReceivedSharingFiles;
  final List<EnsFileContent> fileContents;
  final Function() resetReceiveSharing;

  const ReceiveSharingViewModel._internal(
    super.store, {
    required this.hasReceivedSharingFiles,
    required this.fileContents,
    required this.resetReceiveSharing,
  });

  factory ReceiveSharingViewModel.from(Store<EnsInitialState> store) {
    final fileContents = store.state.receiveSharingState.fileContents;

    return ReceiveSharingViewModel._internal(
      store,
      hasReceivedSharingFiles: fileContents.isNotEmpty,
      fileContents: fileContents,
      resetReceiveSharing: () {
        store.dispatch(ResetReceiveSharingAction());
      },
    );
  }

  bool isFirstPageToAdd(Store<EnsState> ensStateStore) {
    return ensStateStore.state.documentsState.multiPagesListState is MultiPagesListStateNotLoaded;
  }

  void addPage(Store<EnsState> ensStateStore) {
    ensStateStore.dispatch(AddDocumentPageAction(fileContents));
    tagAction(TagsDocuments.tag_825_ajouter_un_document_carrousel_depuis_partagedoc);
  }

  @override
  List<Object?> get props => [hasReceivedSharingFiles, fileContents];
}
