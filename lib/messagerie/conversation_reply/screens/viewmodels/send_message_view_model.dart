/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/files/domain/models/ens_file_content.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/data/send_message_input.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/redux/messagerie_redux.dart';
import 'package:redux/redux.dart';

abstract class SendMessageViewModel {
  final Store<EnsState> store;

  SendMessageViewModel(this.store);

  SendMessageInput? buildSendMessageInput({
    String? content,
    EnsFileContent? ensFileContent,
    bool withProfilMedical = false,
    String? recipientId,
    String? subject,
    String? fileIdToRemove,
    bool? replyAll,
    EnsDocument? docToShare,
  });

  void deleteDraft({bool shouldDisplaySnackBar = true}) {
    final conversationContentState = store.state.messagerieState.conversationContentState;
    final conversationContent = conversationContentState.conversationContent;
    if (conversationContentState.isSuccessWithData) {
      store.dispatch(
        DeleteDraftAction(
          conversationId: conversationContent!.responseTemplate.conversationId,
          shouldDisplaySnackBar: shouldDisplaySnackBar,
        ),
      );
      store.dispatch(const InitCreateContactAction());
    }
  }

  void finalizeSendMessage() {
    store.dispatch(const InitSendMessageAction());
    store.dispatch(const InitCreateContactAction());
  }

  void deleteAttachment({
    required String attachmentId,
    String? content,
    String? subject,
    String? recipientId,
  }) {
    final sendMessageInput = buildSendMessageInput(
      content: content,
      fileIdToRemove: attachmentId,
      subject: subject,
      recipientId: recipientId,
    );
    if (sendMessageInput != null) {
      store.dispatch(DeleteAttachmentAction(sendMessageInput, attachmentIdToRemove: attachmentId));
    }
  }

  void sendMessageContent({
    MessageContent? message,
    bool isDraft = false,
    bool shouldDisplaySnackBar = true,
    bool shouldCheckInactifsPsContactsStatus = false,
  }) {
    EnsDocument? docToShare;
    if (message != null && message.docToShareId != null) {
      docToShare = store.state.documentsState.documentsListState.documents[message.docToShareId];
    }
    final sendMessageInput = buildSendMessageInput(
      content: message?.content,
      subject: message?.subject,
      recipientId: message?.recipientId,
      replyAll: message?.replyAll,
      docToShare: docToShare,
    );
    if (sendMessageInput != null) {
      final sendAction = isDraft
          ? SaveDraftAction(
              sendMessageInput: sendMessageInput,
              shouldDisplaySnackBar: shouldDisplaySnackBar,
              shouldCheckInactifsPsContactsStatus: shouldCheckInactifsPsContactsStatus,
            )
          : SendMessageAction(sendMessageInput);
      store.dispatch(sendAction);
      store.dispatch(const InitCreateContactAction());
    }
  }

  void saveDraft({
    MessageContent? draft,
    bool shouldDisplaySnackBar = true,
    bool shouldCheckInactifsPsContactsStatus = false,
  }) {
    sendMessageContent(
      message: draft,
      isDraft: true,
      shouldDisplaySnackBar: shouldDisplaySnackBar,
      shouldCheckInactifsPsContactsStatus: shouldCheckInactifsPsContactsStatus,
    );
  }

  void uploadAttachment({required SendMessageInput sendMessageInput, required bool isAPharmacie}) {
    store.dispatch(UploadAttachmentAction(sendMessageInput, isAPharmacie));
  }
}

class MessageContent {
  final String? content;
  final String? subject;
  final String? recipientId;
  final bool replyAll;
  final String? docToShareId;

  MessageContent({this.content, this.subject, this.recipientId, this.replyAll = true, this.docToShareId});
}
