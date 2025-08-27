/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/files/domain/models/ens_file_content.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/messagerie/conversation_reply/screens/messagerie_view_helper.dart';
import 'package:fr_cnamts_ens/messagerie/conversation_reply/screens/viewmodels/send_message_view_model.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/data/send_message_input.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/data/send_message_result.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/domain/conversation_content.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/redux/messagerie_redux.dart';
import 'package:fr_cnamts_ens/messagerie/new_conversation/screens/viewmodels/select_recipient_form_field_view_model.dart';
import 'package:fr_cnamts_ens/messagerie/widgets/file_attachment_widget.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/user/domain/model/ens_profil.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:fr_cnamts_ens/utils/extensions/profil_extension.dart';
import 'package:redux/redux.dart';

class NewConversationScreenViewModel extends SendMessageViewModel with EquatableMixin {
  final AllPurposesStatus screenStatus;
  final AllPurposesStatus sendMessageStatus;
  final AllPurposesStatus createContactStatus;
  final String? createContactId;
  final ConversationContent? conversationContent;
  final NewMessageInitialValues? newMessageInitialValues;
  final String? messageSignatureByAidant;
  final List<String> inactifPsContactNameList;
  final void Function(String? conversationId) refreshNewConversation;
  final VoidCallback onPharmacieAddedToRecipients;
  final ProfilType profilType;

  NewConversationScreenViewModel._internal(
    super.store, {
    required this.screenStatus,
    required this.sendMessageStatus,
    required this.createContactStatus,
    required this.createContactId,
    required this.newMessageInitialValues,
    required this.refreshNewConversation,
    required this.inactifPsContactNameList,
    required this.onPharmacieAddedToRecipients,
    this.messageSignatureByAidant,
    this.conversationContent,
    required this.profilType,
  });

  @override
  List<Object?> get props => [
        screenStatus,
        sendMessageStatus,
        createContactStatus,
        createContactId,
        conversationContent,
        newMessageInitialValues,
        messageSignatureByAidant,
        inactifPsContactNameList,
      ];

  factory NewConversationScreenViewModel.from(Store<EnsState> store, [String? docToShareId]) {
    final messagerieState = store.state.messagerieState;
    final sendMessageState = messagerieState.sendMessageState;
    final conversationContentState = messagerieState.conversationContentState;
    final deleteAttachmentState = messagerieState.deleteAttachmentState;
    final createContactState = messagerieState.createContactState;
    final uploadAttachmentStatus = messagerieState.uploadAttachmentState.status;
    final inactifPsContactsState = messagerieState.inactifPsContactsState;

    final profilType = ProfilsUtils.getCurrentProfilType(store.state);
    String? messageSignatureByAidant;
    if (profilType.isAide) {
      final mainUserDataState = store.state.userState.mainUserDataState;
      final userData = mainUserDataState.userData;
      messageSignatureByAidant = MessagerieViewHelper.messageSignatureByAidant(
        mainProfilFullName: userData?.nomComplet,
        profilFullName: store.state.userState.currentProfile.nomComplet,
      );
    }

    ConversationContent? conversationContent;

    final attachmentIdPendingRemove =
        deleteAttachmentState.status == DeleteAttachmentStatus.LOADING ? deleteAttachmentState.attachmentId : null;

    if (conversationContentState.status.isSuccess()) {
      conversationContent = conversationContentState.conversationContent;
    }

    return NewConversationScreenViewModel._internal(
      store,
      screenStatus: conversationContentState.status,
      sendMessageStatus: sendMessageState.status,
      createContactStatus: createContactState.status,
      createContactId: createContactState.contactId,
      conversationContent: conversationContent,
      newMessageInitialValues: _getInitialValues(
        conversationContent,
        uploadingFileStatus: uploadAttachmentStatus,
        attachmentIdPendingRemove: attachmentIdPendingRemove,
        docToShare: store.state.documentsState.documentsListState.documents[docToShareId],
        profileData: store.state.userState.currentProfile,
      ),
      messageSignatureByAidant: messageSignatureByAidant,
      inactifPsContactNameList: inactifPsContactsState.contacts.map((contact) => contact.fullName).toList(),
      refreshNewConversation: (conversationId) =>
          store.dispatch(InitNewConversationAction(conversationId: conversationId)),
      onPharmacieAddedToRecipients: () => store.dispatch(PharmacieAddedAsRecipientAction()),
      profilType: profilType,
    );
  }

  static NewMessageInitialValues? _getInitialValues(
    ConversationContent? conversationContent, {
    String? attachmentIdPendingRemove,
    EnsDocument? docToShare,
    EnsProfil? profileData,
    required AllPurposesStatus uploadingFileStatus,
  }) {
    final MessageDraft? draft = conversationContent?.draft;
    final List<FileAttachmentDisplayModel> fileAttachmentDm = [];
    if (draft != null) {
      fileAttachmentDm.addAll(
        draft.fileDescriptors.map(
          (file) => FileAttachmentDisplayModel(
            documentId: file.id,
            name: file.name,
            isEnabled: attachmentIdPendingRemove == null,
            isDeleting: file.id == attachmentIdPendingRemove,
          ),
        ),
      );
      fileAttachmentDm.addAll(
        draft.ensDocuments.map(
          (f) => FileAttachmentDisplayModel(
            documentId: f.id,
            name: f.title,
            isEnabled: attachmentIdPendingRemove == null,
            isDeleting: f.id == attachmentIdPendingRemove,
          ),
        ),
      );
      if (uploadingFileStatus.isLoading()) {
        fileAttachmentDm.add(const FileAttachmentDisplayModel(documentId: '', name: '', isUploading: true));
      }
      final recipient = draft.draftContactList.firstOrNull;
      return NewMessageInitialValues(
        recipient: recipient != null ? ContactItemDisplayModel.fromPsContact(recipient) : null,
        content: draft.content,
        subject: draft.subject,
        fileAttachmentDm: fileAttachmentDm,
      );
    }

    if (docToShare != null) {
      fileAttachmentDm.add(
        FileAttachmentDisplayModel(
          documentId: docToShare.id,
          name: docToShare.title,
          isEnabled: true,
        ),
      );
      return NewMessageInitialValues(
        recipient: null,
        content: _getShareDocumentDefaultMessageContent(profileData),
        subject: _getShareDocumentDefaultSubject(profileData),
        fileAttachmentDm: fileAttachmentDm,
      );
    }
    return null;
  }

  @override
  SendMessageInput? buildSendMessageInput({
    String? content,
    EnsFileContent? ensFileContent,
    bool withProfilMedical = false,
    String? recipientId,
    String? subject,
    String? fileIdToRemove,
    bool? replyAll,
    EnsDocument? docToShare,
  }) {
    final conversationContentState = store.state.messagerieState.conversationContentState;

    MessageDraft? draft;
    final conversationContent = conversationContentState.conversationContent;
    if (conversationContentState.isSuccessWithData) {
      draft = conversationContent!.draft;
    }

    List<FileDescriptor> fileAlreadyAddedToKeepList = [];
    if (draft != null) {
      fileAlreadyAddedToKeepList = draft.fileDescriptors;
      if (fileIdToRemove != null) {
        fileAlreadyAddedToKeepList = draft.fileDescriptors.where((fd) => fd.id != fileIdToRemove).toList();
      }
    }
    final String? conversationId = conversationContent?.responseTemplate.conversationId;
    return SendMessageInput(
      conversationId: conversationId ?? '-1',
      messageId: conversationContent?.draft?.id ?? '-1',
      content: content ?? '',
      ensFileContent: ensFileContent != null ? [ensFileContent] : [],
      withProfilMedical: withProfilMedical,
      ensDocument: docToShare != null && fileAlreadyAddedToKeepList.isEmpty ? [docToShare] : [],
      replyType: conversationId == null ? ReplyType.NEW_MESSAGE : null,
      destinataireId: recipientId,
      objet: subject ?? '',
      fileDescriptor: fileAlreadyAddedToKeepList,
    );
  }

  void sendMessage({
    required String recipientId,
    required String subject,
    required String content,
    bool isSuggestedHealthcareStructure = false,
    String? docToShareId,
  }) {
    if (isSuggestedHealthcareStructure) {
      final createContactState = store.state.messagerieState.createContactState;
      if (createContactState.status.isSuccess() && createContactState.contactId != null) {
        recipientId = createContactState.contactId!;
      }
    }
    _sendMessageContent(content: content, subject: subject, recipientId: recipientId, docToShareId: docToShareId);
  }

  void _sendMessageContent({
    String? content,
    String? subject,
    String? recipientId,
    String? docToShareId,
  }) {
    EnsDocument? docToShare;
    if (docToShareId != null) {
      docToShare = store.state.documentsState.documentsListState.documents[docToShareId];
    }
    final sendMessageInput = buildSendMessageInput(
      content: content,
      subject: subject,
      recipientId: recipientId,
      replyAll: true,
      docToShare: docToShare,
    );
    if (sendMessageInput != null) {
      store.dispatch(SendMessageAction(sendMessageInput));
    }
  }
}

class NewMessageInitialValues extends Equatable {
  final ContactItemDisplayModel? recipient;
  final String content;
  final String subject;
  final List<FileAttachmentDisplayModel> fileAttachmentDm;

  const NewMessageInitialValues({
    required this.recipient,
    required this.content,
    required this.subject,
    required this.fileAttachmentDm,
  });

  @override
  List<Object?> get props => [recipient, content, subject, fileAttachmentDm];
}

String _getShareDocumentDefaultMessageContent(EnsProfil? profile) =>
    'Bonjour,\n\nJe souhaite vous partager mon document.\n\nBonne réception.\n${profile.nomComplet}';

String _getShareDocumentDefaultSubject(EnsProfil? profile) => 'Document de ${profile.nomComplet}';
