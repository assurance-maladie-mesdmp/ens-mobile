/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'messagerie_redux.dart';

class MessagerieState extends Equatable {
  static const Set<String> EMPTY_SET = {};

  final HomeMessagerieState homeMessagerieState;
  final ConversationContentState conversationContentState;
  final SendMessageState sendMessageState;
  final AttachmentContentState attachmentContentState;
  final UploadAttachmentState uploadAttachmentState;
  final DeleteAttachmentState deleteAttachmentState;
  final DeleteConversationState deleteConversationState;
  final CreateContactState createContactState;
  final InactifPsContactsState inactifPsContactsState;
  final Set<String> conversationsBeingDeleted;

  const MessagerieState({
    this.homeMessagerieState = const HomeMessagerieState(),
    this.conversationContentState = const ConversationContentState(),
    this.sendMessageState = const SendMessageState(),
    this.attachmentContentState = const AttachmentContentState(),
    this.uploadAttachmentState = const UploadAttachmentState(),
    this.deleteAttachmentState = const DeleteAttachmentState(),
    this.deleteConversationState = const DeleteConversationState(),
    this.createContactState = const CreateContactState(),
    this.inactifPsContactsState = const InactifPsContactsState(),
    this.conversationsBeingDeleted = EMPTY_SET,
  });

  MessagerieState clone({
    HomeMessagerieState? homeMessagerieState,
    ConversationContentState? conversationContentState,
    SendMessageState? sendMessageState,
    AttachmentContentState? attachmentContentState,
    UploadAttachmentState? uploadAttachmentState,
    DeleteAttachmentState? deleteAttachmentState,
    DeleteConversationState? deleteConversationState,
    CreateContactState? createContactState,
    InactifPsContactsState? inactifPsContactsState,
    Set<String>? conversationsBeingDeleted,
  }) {
    return MessagerieState(
      homeMessagerieState: homeMessagerieState ?? this.homeMessagerieState,
      conversationContentState: conversationContentState ?? this.conversationContentState,
      sendMessageState: sendMessageState ?? this.sendMessageState,
      attachmentContentState: attachmentContentState ?? this.attachmentContentState,
      uploadAttachmentState: uploadAttachmentState ?? this.uploadAttachmentState,
      deleteAttachmentState: deleteAttachmentState ?? this.deleteAttachmentState,
      deleteConversationState: deleteConversationState ?? this.deleteConversationState,
      createContactState: createContactState ?? this.createContactState,
      inactifPsContactsState: inactifPsContactsState ?? this.inactifPsContactsState,
      conversationsBeingDeleted: conversationsBeingDeleted ?? this.conversationsBeingDeleted,
    );
  }

  @override
  List<Object?> get props => [
        homeMessagerieState,
        conversationContentState,
        sendMessageState,
        attachmentContentState,
        uploadAttachmentState,
        deleteAttachmentState,
        deleteConversationState,
        createContactState,
        inactifPsContactsState,
        conversationsBeingDeleted,
      ];
}

class HomeMessagerieState extends Equatable {
  final AllPurposesStatus status;
  final Messagerie? messagerie;
  final bool isReloading;

  const HomeMessagerieState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.messagerie,
    this.isReloading = false,
  });

  bool get isSuccessWithData => status.isSuccess() && messagerie != null;

  bool get isErrorOrSuccessWithoutData => status.isError() || (status.isSuccess() && messagerie == null);

  @override
  List<Object?> get props => [status, messagerie, isReloading];
}

class ConversationContentState extends Equatable {
  final AllPurposesStatus status;
  final String? conversationId;
  final ConversationContent? conversationContent;
  final FetchConversionContentErrorType? errorType;

  const ConversationContentState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.conversationId,
    this.conversationContent,
    this.errorType,
  });

  bool get isSuccessWithData => status.isSuccess() && conversationContent != null;

  bool get isErrorOrSuccessWithoutData => status.isError() || (status.isSuccess() && conversationContent == null);

  @override
  List<Object?> get props => [status, conversationId, conversationContent, errorType];
}

class SendMessageState extends Equatable {
  final AllPurposesStatus status;

  const SendMessageState({this.status = AllPurposesStatus.NOT_LOADED});

  @override
  List<Object?> get props => [status];
}

class AttachmentContentState extends Equatable {
  final AllPurposesStatus status;
  final String? attachmentId;
  final AttachmentContent? attachmentContent;

  const AttachmentContentState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.attachmentId,
    this.attachmentContent,
  });

  bool get isSuccessWithData => status.isSuccess() && attachmentContent != null;

  bool get isErrorOrSuccessWithoutData => status.isError() || (status.isSuccess() && attachmentContent == null);

  @override
  List<Object?> get props => [status, attachmentId, attachmentContent];
}

class UploadAttachmentState extends Equatable {
  final AllPurposesStatus status;

  const UploadAttachmentState({this.status = AllPurposesStatus.NOT_LOADED});

  @override
  List<Object?> get props => [status];
}

enum DeleteAttachmentStatus { NOT_LOADED, LOADING }

class DeleteAttachmentState extends Equatable {
  final DeleteAttachmentStatus status;
  final String? attachmentId;

  const DeleteAttachmentState({this.status = DeleteAttachmentStatus.NOT_LOADED, this.attachmentId});

  @override
  List<Object?> get props => [status, attachmentId];
}

class DeleteConversationState extends Equatable {
  final AllPurposesStatus status;
  final String? conversationId;

  const DeleteConversationState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.conversationId,
  });

  @override
  List<Object?> get props => [status, conversationId];
}

class CreateContactState extends Equatable {
  final AllPurposesStatus status;
  final String? contactId;
  final String? contactName;

  const CreateContactState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.contactId,
    this.contactName,
  });

  @override
  List<Object?> get props => [status, contactId, contactName];
}

class InactifPsContactsState extends Equatable {
  final AllPurposesStatus status;
  final List<InactifPsContact> contacts;

  const InactifPsContactsState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.contacts = const [],
  });

  @override
  List<Object?> get props => [status, contacts];
}
