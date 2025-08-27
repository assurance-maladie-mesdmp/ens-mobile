/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:built_collection/built_collection.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_messagerie_get_piece_jointe.query.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_messagerie_mailbox.fragment.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_messagerie_message_response.fragment.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/data/send_message_input.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/data/send_message_result.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/domain/conversation_content.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/domain/conversation_summary.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/domain/messagerie.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/domain/ps_contact.dart';
import 'package:fr_cnamts_ens/prevention/data/prevention_repository.dart';
import 'package:fr_cnamts_ens/utils/ens_date_utils.dart';

class MessagerieRepositoryMapper {
  static Messagerie? mapToMessagerie(GmailBox mailBox) {
    final resultConversation = mailBox.conversations;
    if (resultConversation != null) {
      final conversations = resultConversation
          .map(
            (item) => ConversationSummary(
              id: item.id,
              from: item.healthProfessionalNames.join(', '),
              date: DateTime.parse(item.date),
              hasAttachment: item.hasAttachment,
              hasDraft: item.hasDraft,
              subject: item.subject,
              read: item.read,
              isNewMessage: item.isNewMessage,
            ),
          )
          .toList();
      return Messagerie(
        userMail: mailBox.userMail,
        conversations: conversations,
        oneOrMoreUnreadConversation: mailBox.oneOrMoreUnreadConversation,
        contacts: mailBox.contacts.map((contact) => PsContact(id: contact.id, name: contact.fullName)).toList(),
      );
    }
    return null;
  }

  static ConversationContent? mapToConversationContent(GmessageResponse messageReponse) {
    final resultMessages = messageReponse.messages;
    if (resultMessages != null) {
      final messages = resultMessages.map(
        (msg) {
          final contactList = msg.contactDetails.map(mapToContactDetails).toList();
          return Message(
            id: msg.id,
            contactList: ContactsList(contactList),
            date: DateTime.parse(msg.date),
            content: msg.content,
            read: msg.read,
            fileDescriptors: msg.files.map((f) => FileDescriptor(id: f.id, name: f.name)).toList(),
          );
        },
      ).toList();
      final respTpl = messageReponse.responseTemplate;
      final responseTemplate = ResponseTemplate(
        conversationId: respTpl.conversationId,
        messageId: respTpl.messageId,
        replyOptions: _toReplyOptions(respTpl.replyOptions.toList()),
        conversationFinalizedBy: respTpl.conversationFinalizedBy,
        from: respTpl.from,
        to: respTpl.to,
        recipients: respTpl.recipients!.toList(),
        remainSizeFiles: respTpl.remainSizeFiles,
      );
      return ConversationContent(
        subject: messageReponse.subject,
        acknowledge: messageReponse.acknowledge,
        messages: messages,
        draft: mapToMessageDraft(messageReponse.draft),
        responseTemplate: responseTemplate,
      );
    }
    return null;
  }

  static ContactDetails mapToContactDetails(GmessageResponse_messages_contactDetails contactDetailModel) {
    return ContactDetails(
      name: contactDetailModel.name,
      typeContact: contactDetailModel.type,
      idNat: (contactDetailModel.idNat == null || contactDetailModel.idNat!.isEmpty) ? null : contactDetailModel.idNat,
      addressMailType: mapToTypeBal(contactDetailModel.typeBal),
    );
  }

  static AddressMailType mapToTypeBal(String? typeBalString) {
    switch (typeBalString) {
      case 'APP':
        return AddressMailType.APP;
      case 'ORG':
        return AddressMailType.ORG;
      case 'PER':
        return AddressMailType.PER;
      default:
        return AddressMailType.NONE;
    }
  }

  static MessageDraft? mapToMessageDraft(GmessageResponse_draft? draftModel) {
    if (draftModel == null) return null;
    final contactList = ContactsList(draftModel.contactDetails.map(mapToDraftContactDetails).toList());
    final draftContactList =
        draftModel.draftRecipients.to.map((contact) => PsContact(id: contact.id, name: contact.fullName)).toList();
    return MessageDraft(
      id: draftModel.id,
      parentId: draftModel.parentId ?? '',
      contactList: contactList,
      draftContactList: draftContactList,
      date: EnsDateUtils.parseDateTimeWithFallback(draftModel.date, DateTime.now()),
      content: draftModel.content,
      subject: draftModel.subject,
      remainSizeFiles: draftModel.remainSizeFiles,
      read: draftModel.read,
      fileDescriptors: draftModel.files.map((f) => FileDescriptor(id: f.id, name: f.name, size: f.size)).toList(),
      ensDocuments: const [],
    );
  }

  static ContactDetails mapToDraftContactDetails(
    GmessageResponse_draft_contactDetails draftContactDetailModel,
  ) {
    return ContactDetails(
      name: draftContactDetailModel.name,
      typeContact: draftContactDetailModel.type,
      idNat: (draftContactDetailModel.idNat == null || draftContactDetailModel.idNat!.isEmpty)
          ? null
          : draftContactDetailModel.idNat,
      addressMailType: mapToTypeBal(draftContactDetailModel.typeBal),
    );
  }

  static AttachmentContent mapToAttachmentContent(Gget_piece_jointeData_getMessageFile fileModel) {
    return AttachmentContent(
      id: fileModel.id,
      base64Content: fileModel.attachment.trim(),
      mimeType: fileModel.mimeType,
      name: fileModel.name,
      canAddToDMP: fileModel.canAddToDMP,
      createdAt: EnsDateUtils.parseDateTimeWithFallback(fileModel.createdAt, DateTime.now()),
    );
  }

  static List<ReplyOptionType> _toReplyOptions(List<GReplyTypeEnum> gqlReplyOptions) {
    final List<ReplyOptionType> replyOptionTypes = [];
    for (final gqlReplyOption in gqlReplyOptions) {
      switch (gqlReplyOption) {
        case GReplyTypeEnum.REPLY_TO_ALL:
          replyOptionTypes.add(ReplyOptionType.REPLY_TO_ALL);
        case GReplyTypeEnum.REPLY:
          replyOptionTypes.add(ReplyOptionType.REPLY);
        default:
          break;
      }
    }
    return replyOptionTypes;
  }

  static GSendResponseInput toGSendResponseInput(
    String patientId,
    SendMessageInput sendMessageInput,
    bool isDraft,
  ) {
    const String NOT_CREATED_CONVERSATION_ID = '-1';

    final attachments = sendMessageInput.ensFileContent.map(
      (efc) => GFileInput(
        (b) => b
          ..name = efc.filename
          ..attachment = efc.base64Content
          ..mimeType = efc.mimeType,
      ),
    );

    final ensDocuments = sendMessageInput.ensDocument.map(
      (document) => GEnsDocumentInput(
        (b) => b
          ..documentTitle = document.title
          ..documentId = document.id,
      ),
    );

    GRecipientsIdInputBuilder? recipientsIdInputBuilder;
    if (sendMessageInput.destinataireId != null) {
      final listBuilder = ListBuilder<String>([sendMessageInput.destinataireId]);
      final input = GRecipientsIdInput((input) => input..to = listBuilder);
      recipientsIdInputBuilder = GRecipientsIdInputBuilder();
      recipientsIdInputBuilder.replace(input);
    }

    return GSendResponseInput(
      (builder) => builder
        ..conversationId = sendMessageInput.conversationId
        ..messageId = sendMessageInput.messageId
        ..content = sendMessageInput.content
        ..patientId = patientId
        ..attachments.replace(attachments)
        ..replyType = sendMessageInput.conversationId == NOT_CREATED_CONVERSATION_ID
            ? GReplyTypeEnum.NEW_MESSAGE
            : sendMessageInput.replyType?.toReplyTypeEnum()
        ..filesId.replace(sendMessageInput.fileDescriptor.map((fd) => fd.id))
        ..draft = isDraft
        ..ensDocuments.replace(ensDocuments)
        ..medicalProfileFilename = sendMessageInput.withProfilMedical ? '' : null
        ..filters.withNewMessage = true
        ..subject = sendMessageInput.objet
        ..recipientsId = recipientsIdInputBuilder,
    );
  }

  static String cleanName(String fullName) {
    if (fullName.contains(' (')) return fullName.substringBefore(' (');
    return fullName;
  }
}
