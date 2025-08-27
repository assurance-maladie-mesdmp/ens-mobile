/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/files/domain/models/ens_file_content.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/messagerie/conversation_content/screens/viewmodels/conversation_content_screen_view_model.dart';
import 'package:fr_cnamts_ens/messagerie/conversation_reply/screens/messagerie_view_helper.dart';
import 'package:fr_cnamts_ens/messagerie/conversation_reply/screens/viewmodels/send_message_view_model.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/data/send_message_input.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/data/send_message_result.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/domain/conversation_content.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/redux/messagerie_redux.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/screens/messagerie_view_model_helper.dart';
import 'package:fr_cnamts_ens/messagerie/widgets/file_attachment_widget.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/user/domain/model/ens_profil.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:fr_cnamts_ens/utils/extensions/profil_extension.dart';
import 'package:redux/redux.dart';

class ConversationReplyScreenViewModel extends SendMessageViewModel with EquatableMixin, AnalyticsMixin {
  final ConversationReplyScreenStatus screenStatus;
  final AllPurposesStatus sendStatus;
  final String? replySubject;
  final TypeOfContact? from;
  final List<TypeOfContact>? recipients;
  final String? replyDateLabel;
  final String? replyContent;
  final List<FileAttachmentDisplayModel>? replyFileAttachmentDM;
  final List<MessageItemDisplayModel>? messagesHistory;
  final List<String> inactifPsContactNamesList;
  final String? messageSignatureByAidant;
  final ProfilType profilType;

  ConversationReplyScreenViewModel._internal(
    super.store, {
    required this.screenStatus,
    required this.sendStatus,
    required this.inactifPsContactNamesList,
    this.from,
    this.recipients,
    this.replySubject,
    this.replyDateLabel,
    this.replyContent,
    this.replyFileAttachmentDM,
    this.messagesHistory,
    this.messageSignatureByAidant,
    required this.profilType,
  });

  factory ConversationReplyScreenViewModel(
    Store<EnsState> store,
    MessagerieViewModelHelper helper,
    bool replyAll,
  ) {
    final messagerieState = store.state.messagerieState;
    final conversationContentState = messagerieState.conversationContentState;
    final sendMessageState = messagerieState.sendMessageState;
    final deleteAttachmentState = messagerieState.deleteAttachmentState;
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

    final conversationContent = conversationContentState.conversationContent;
    if (conversationContentState.isSuccessWithData) {
      final profile = store.state.userState.currentProfile;
      final msgDisplayModels = _buildMessagesDisplayModel(conversationContent!.messages, helper, profile);

      final attachmentIdPendingRemove =
          deleteAttachmentState.status == DeleteAttachmentStatus.LOADING ? deleteAttachmentState.attachmentId : null;

      final replyInitialValues = _getReplyInitialValues(
        conversationContent,
        replyAll,
        helper,
        attachmentIdPendingRemove: attachmentIdPendingRemove,
        profileData: profile,
        uploadingStatus: uploadAttachmentStatus,
      );

      final profilType = ProfilsUtils.getCurrentProfilType(store.state);

      return ConversationReplyScreenViewModel._internal(
        store,
        screenStatus: ConversationReplyScreenStatus.SUCCESS,
        sendStatus: sendMessageState.status,
        replySubject: conversationContent.subject,
        replyDateLabel: helper.formatForMessagerie(replyInitialValues.replyDate),
        from: replyInitialValues.replyFrom,
        recipients: replyInitialValues.replyRecipients,
        replyContent: replyInitialValues.replyContent,
        replyFileAttachmentDM: replyInitialValues.replyFileAttachmentDm,
        messagesHistory: msgDisplayModels,
        messageSignatureByAidant: messageSignatureByAidant,
        inactifPsContactNamesList: inactifPsContactsState.contacts.map((contact) => contact.fullName).toList(),
        profilType: profilType,
      );
    } else {
      return ConversationReplyScreenViewModel._internal(
        store,
        screenStatus: ConversationReplyScreenStatus.ERROR,
        sendStatus: sendMessageState.status,
        messageSignatureByAidant: messageSignatureByAidant,
        inactifPsContactNamesList: const [],
        profilType: profilType,
      );
    }
  }

  static MessageReplyInitialValues _getReplyInitialValues(
    ConversationContent conversationContent,
    bool replyAll,
    MessagerieViewModelHelper helper, {
    String? attachmentIdPendingRemove,
    EnsProfil? profileData,
    required AllPurposesStatus uploadingStatus,
  }) {
    final MessageDraft? draft = conversationContent.draft;
    final ResponseTemplate responseTemplate = conversationContent.responseTemplate;
    TypeOfContact? fromContact;

    if (draft != null) {
      final from = draft.contactList.from;
      if (from != null) {
        fromContact = TypeOfContactFactory.handleContact(
          ContactDetails(
            name: helper.prepareEmailLabel(from.name, profileData),
            typeContact: from.typeContact,
            idNat: from.idNat,
            addressMailType: from.addressMailType,
          ),
        );
      }

      final List<TypeOfContact> recipients = draft.draftContactList
          .map(
            (contact) => TypeOfContact.user(contact.name),
          )
          .toList();

      final List<FileAttachmentDisplayModel> fileAttachmentDm = [];
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
      if (uploadingStatus.isLoading()) {
        fileAttachmentDm.add(const FileAttachmentDisplayModel(documentId: '', name: '', isUploading: true));
      }

      return MessageReplyInitialValues(
        replyDate: draft.date,
        replyFrom: fromContact,
        replyRecipients: recipients,
        replyContent: draft.content,
        replyFileAttachmentDm: fileAttachmentDm,
      );
    } else {
      final fromContact = TypeOfContact.user(helper.prepareEmailLabel(responseTemplate.from, profileData));
      final List<String> recipentsNames = replyAll ? responseTemplate.recipients : [responseTemplate.to];
      final recipients = recipentsNames
          .map(
            (e) => TypeOfContact.user(helper.prepareEmailLabel(e, profileData)),
          )
          .toList();

      return MessageReplyInitialValues(
        replyDate: DateTime.now(),
        replyFrom: fromContact,
        replyRecipients: recipients,
        replyContent: '',
        replyFileAttachmentDm: const [],
      );
    }
  }

  static List<MessageItemDisplayModel> _buildMessagesDisplayModel(
    List<Message> messages,
    MessagerieViewModelHelper helper,
    EnsProfil? profileData,
  ) {
    return messages
        .map(
          (msg) => MessageItemDisplayModel.build(
            helper,
            profileData,
            from: msg.contactList.from,
            date: msg.date,
            content: msg.content,
            recipients: msg.contactList.recipients,
            files: msg.fileDescriptors,
          ),
        )
        .toList();
  }

  void sendMessage(String content, bool replyAll) {
    sendMessageContent(
      message: MessageContent(content: content, replyAll: replyAll),
      isDraft: false,
    );
  }

  bool shouldPromptDraftBottomSheet(String content) {
    final withContent = content.isNotEmpty;
    final withAttachments = replyFileAttachmentDM?.isNotEmpty ?? false;
    final withSendMessagePending = sendStatus.isLoading();
    return withContent || withAttachments || withSendMessagePending;
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
    final conversationContent = conversationContentState.conversationContent;
    if (conversationContentState.isSuccessWithData) {
      final responseTemplate = conversationContent!.responseTemplate;
      final draft = conversationContent.draft;

      List<FileDescriptor> fileAlreadyAddedToKeepList = [];
      if (draft != null) {
        fileAlreadyAddedToKeepList = draft.fileDescriptors;
        if (fileIdToRemove != null) {
          fileAlreadyAddedToKeepList = draft.fileDescriptors.where((fd) => fd.id != fileIdToRemove).toList();
        }
      }
      ReplyType? replyType;
      if (replyAll != null) {
        replyType = replyAll ? ReplyType.REPLY_TO_ALL : ReplyType.REPLY;
      }
      return SendMessageInput(
        conversationId: responseTemplate.conversationId,
        messageId: responseTemplate.messageId,
        content: content ?? '',
        fileDescriptor: fileAlreadyAddedToKeepList,
        ensFileContent: ensFileContent != null ? [ensFileContent] : [],
        withProfilMedical: withProfilMedical,
        replyType: replyType,
      );
    }
    return null;
  }

  @override
  List<Object?> get props => [
        screenStatus,
        sendStatus,
        replySubject,
        from,
        recipients,
        replyContent,
        replyDateLabel,
        replyFileAttachmentDM,
        messagesHistory,
        messageSignatureByAidant,
        inactifPsContactNamesList,
      ];
}

enum ConversationReplyScreenStatus { SUCCESS, ERROR }

class MessageReplyInitialValues extends Equatable {
  final DateTime replyDate;
  final TypeOfContact? replyFrom;
  final List<TypeOfContact> replyRecipients;
  final String replyContent;
  final List<FileAttachmentDisplayModel> replyFileAttachmentDm;

  const MessageReplyInitialValues({
    required this.replyDate,
    this.replyFrom,
    required this.replyRecipients,
    required this.replyContent,
    required this.replyFileAttachmentDm,
  });

  @override
  List<Object?> get props => [replyDate, replyFrom, replyRecipients, replyContent, replyFileAttachmentDm];
}
