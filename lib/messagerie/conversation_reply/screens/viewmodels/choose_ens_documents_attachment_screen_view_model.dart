/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:redux/redux.dart';

class ChooseEnsDocumentsAttachmentScreenViewModel extends Equatable {
  final AttachmentDocStatus attachmentDocStatus;

  const ChooseEnsDocumentsAttachmentScreenViewModel._internal(this.attachmentDocStatus);

  factory ChooseEnsDocumentsAttachmentScreenViewModel(Store<EnsState> store) {
    final uploadAttachmentState = store.state.messagerieState.uploadAttachmentState;
    AttachmentDocStatus attachmentDocStatus = AttachmentDocStatus.INIT;
    if (uploadAttachmentState.status.isSuccess()) {
      attachmentDocStatus = AttachmentDocStatus.SUCCESS;
    } else if (uploadAttachmentState.status.isLoading()) {
      attachmentDocStatus = AttachmentDocStatus.LOADING;
    }
    return ChooseEnsDocumentsAttachmentScreenViewModel._internal(attachmentDocStatus);
  }

  @override
  List<Object?> get props => [attachmentDocStatus];
}

enum AttachmentDocStatus { INIT, LOADING, SUCCESS }
