/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'messagerie_redux.dart';

class FetchMessagerieAction {
  final bool force;

  const FetchMessagerieAction({this.force = false});
}

class ProcessFetchedMessagerieSuccessAction {
  final Messagerie messagerie;

  ProcessFetchedMessagerieSuccessAction(this.messagerie);
}

class ProcessFetchedMessagerieErrorAction {}

class AcknowledgeConversationAction {
  final String conversationId;

  AcknowledgeConversationAction(this.conversationId);
}

class FetchConversationContentAction {
  final String? conversationId;
  final String? messageId;
  final bool autoRetry;

  FetchConversationContentAction({this.conversationId, this.messageId, this.autoRetry = false});
}

class ProcessFetchedConversationContentSuccessAction {
  final String conversationId;
  final ConversationContent conversationContent;

  ProcessFetchedConversationContentSuccessAction(this.conversationId, this.conversationContent);
}

class ProcessFetchedConversationContentErrorAction {
  final String? conversationId;
  final FetchConversionContentErrorType errorType;

  ProcessFetchedConversationContentErrorAction({
    this.conversationId,
    this.errorType = FetchConversionContentErrorType.GENERIC_ERROR,
  });
}

enum FetchConversionContentErrorType { NOT_FOUND_ERROR, GENERIC_ERROR }

class InitNewConversationAction {
  final String? conversationId;

  InitNewConversationAction({required this.conversationId});
}

class InitSendMessageAction {
  const InitSendMessageAction();
}

class InitConversationContentStateAction {}

class PharmacieAddedAsRecipientAction {}

class SendMessageAction {
  final SendMessageInput sendMessageInput;

  SendMessageAction(this.sendMessageInput);
}

class SaveDraftAction {
  final SendMessageInput sendMessageInput;
  final bool shouldDisplaySnackBar;
  final bool shouldCheckInactifsPsContactsStatus;

  SaveDraftAction({
    required this.sendMessageInput,
    required this.shouldDisplaySnackBar,
    this.shouldCheckInactifsPsContactsStatus = false,
  });
}

class ProcessSendMessagesResultSuccessAction {
  final SendMessageResult sendMessageResult;

  ProcessSendMessagesResultSuccessAction(this.sendMessageResult);
}

class ProcessSendMessagesResultErrorAction {}

class FetchAttachmentContentAction {
  final String attachmentId;

  FetchAttachmentContentAction(this.attachmentId);
}

class ProcessFetchedAttachmentContentSuccessAction {
  final String attachmentId;
  final AttachmentContent attachmentContent;

  ProcessFetchedAttachmentContentSuccessAction(this.attachmentId, this.attachmentContent);
}

class ProcessFetchedAttachmentContentErrorAction {
  final String attachmentId;

  ProcessFetchedAttachmentContentErrorAction(this.attachmentId);
}

class DownloadAttachmentOnDeviceAction {
  final AttachmentContent attachmentContent;

  DownloadAttachmentOnDeviceAction(this.attachmentContent);
}

class DeleteDraftAction {
  final String conversationId;
  final bool shouldDisplaySnackBar;

  DeleteDraftAction({required this.conversationId, required this.shouldDisplaySnackBar});
}

class ProcessDeleteDraftSuccessAction {
  final Messagerie newMessagerie;

  ProcessDeleteDraftSuccessAction(this.newMessagerie);
}

class UploadAttachmentAction {
  final SendMessageInput sendMessageInput;
  final bool isAPharmacie;

  UploadAttachmentAction(this.sendMessageInput, this.isAPharmacie);
}

class ProcessUploadAttachmentSuccessAction {
  final SendMessageResult sendMessageResult;

  ProcessUploadAttachmentSuccessAction(this.sendMessageResult);
}

class ProcessUploadAttachmentErrorAction {}

class DeleteAttachmentAction {
  final String attachmentIdToRemove;
  final SendMessageInput sendMessageInput;

  DeleteAttachmentAction(this.sendMessageInput, {required this.attachmentIdToRemove});
}

class DeleteAttachmentFinishedAction {}

class UpdateConversationAction {
  final SendMessageResult sendMessageResult;

  UpdateConversationAction(this.sendMessageResult);
}

class DeleteConversationAction {
  final String conversationId;

  DeleteConversationAction(this.conversationId);
}

class ProcessDeleteConversationSuccessAction {}

class ProcessDeleteConversationErrorAction {}

class CreateContactAction {
  final String email;
  final String fullName;
  final String esId;

  CreateContactAction({
    required this.email,
    required this.fullName,
    required this.esId,
  });
}

class _ProcessCreatedContactSuccessAction {
  final String contactId;
  final String contactName;

  _ProcessCreatedContactSuccessAction({required this.contactId, required this.contactName});
}

class _ProcessCreatedContactErrorAction {}

class InitCreateContactAction {
  const InitCreateContactAction();
}

class CheckInactifsPsContactsStatusAction {
  final List<ContactDetails> contacts;

  CheckInactifsPsContactsStatusAction({required this.contacts});
}

class _ProcessCheckInactifsPsContactsStatusSuccessAction {
  final List<InactifPsContact> inactifPsContacts;

  _ProcessCheckInactifsPsContactsStatusSuccessAction({required this.inactifPsContacts});
}

class _ProcessCheckInactifsPsContactsStatusErrorAction {}

class ReinitCheckInactifsPsContactsStatusAction {}
