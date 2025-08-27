/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_redux.dart';
import 'package:fr_cnamts_ens/files/domain/models/ens_file_content.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:redux/redux.dart';

class ShareBottomSheetViewModel extends Equatable {
  final AllPurposesStatus status;
  final void Function(String, String) shareDocument;
  final void Function(EnsFileContent, String) shareDocumentContent;
  final void Function() reInitShareState;

  const ShareBottomSheetViewModel._({
    required this.status,
    required this.shareDocument,
    required this.shareDocumentContent,
    required this.reInitShareState,
  });

  factory ShareBottomSheetViewModel(Store<EnsState> store) {
    return ShareBottomSheetViewModel._(
      status: store.state.documentsState.shareStatus,
      shareDocument: (id, name) => store.dispatch(ShareDocumentAction(id, name)),
      shareDocumentContent: (file, name) => store.dispatch(ShareDocumentContentAction(file, name)),
      reInitShareState: () => store.dispatch(ReinitShareStateAction),
    );
  }

  @override
  List<Object?> get props => [status];
}
