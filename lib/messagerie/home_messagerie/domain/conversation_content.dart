/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/domain/ps_contact.dart';
import 'package:optional/optional.dart';

class ConversationContent extends Equatable {
  final String id;
  final String subject;
  final bool acknowledge;
  final List<Message> messages;
  final MessageDraft? draft;
  final ResponseTemplate responseTemplate;

  const ConversationContent({
    this.id = '',
    required this.subject,
    required this.acknowledge,
    required this.messages,
    required this.draft,
    required this.responseTemplate,
  });

  ConversationContent withoutDraft() => ConversationContent(
        id: id,
        subject: subject,
        acknowledge: acknowledge,
        messages: messages,
        draft: null,
        responseTemplate: responseTemplate,
      );

  ConversationContent clone({
    String? id,
    String? subject,
    bool? acknowledge,
    List<Message>? messages,
    Optional<MessageDraft>? optionalDraft,
    ResponseTemplate? responseTemplate,
  }) =>
      ConversationContent(
        id: id ?? this.id,
        subject: subject ?? this.subject,
        acknowledge: acknowledge ?? this.acknowledge,
        messages: messages ?? this.messages,
        draft: optionalDraft != null ? optionalDraft.orElseNullable(null) : draft,
        responseTemplate: responseTemplate ?? this.responseTemplate,
      );

  List<ContactDetails> get allContactsDetails {
    final currentContactDetails = List<ContactDetails>.empty(growable: true);
    for (final message in messages) {
      currentContactDetails.addAll(message.contactList.contacts);
    }
    final draftContacts = draft?.contactList.contacts ?? [];
    currentContactDetails.addAll(draftContacts);
    return currentContactDetails;
  }

  @override
  List<Object?> get props => [id, subject, acknowledge, messages, draft, responseTemplate];
}

class MessageDraft extends Equatable {
  final String id;
  final String parentId;
  final ContactsList contactList;
  final List<PsContact> draftContactList;
  final DateTime date;
  final String content;
  final String subject;
  final double remainSizeFiles;
  final bool read;
  final List<FileDescriptor> fileDescriptors;
  final List<EnsDocument> ensDocuments;

  const MessageDraft({
    required this.id,
    required this.parentId,
    required this.contactList,
    required this.draftContactList,
    required this.date,
    required this.content,
    required this.subject,
    required this.remainSizeFiles,
    required this.read,
    required this.fileDescriptors,
    required this.ensDocuments,
  });

  @override
  List<Object?> get props => [
        id,
        parentId,
        contactList,
        date,
        content,
        remainSizeFiles,
        read,
        fileDescriptors,
        subject,
        draftContactList,
        ensDocuments,
      ];
}

class ResponseTemplate extends Equatable {
  final String conversationId;
  final String messageId;
  final List<ReplyOptionType> replyOptions;
  final String? conversationFinalizedBy;
  final String from;
  final String to;
  final List<String> recipients;
  final double remainSizeFiles;

  const ResponseTemplate({
    required this.conversationId,
    required this.messageId,
    required this.replyOptions,
    required this.conversationFinalizedBy,
    required this.from,
    required this.to,
    required this.recipients,
    required this.remainSizeFiles,
  });

  ResponseTemplate cloneWithNewConversationId(String newConversationId) => ResponseTemplate(
        conversationId: newConversationId,
        messageId: messageId,
        replyOptions: replyOptions,
        conversationFinalizedBy: conversationFinalizedBy,
        from: from,
        to: to,
        recipients: recipients,
        remainSizeFiles: remainSizeFiles,
      );

  @override
  List<Object?> get props => [
        conversationId,
        messageId,
        replyOptions,
        conversationFinalizedBy,
        from,
        to,
        recipients,
        remainSizeFiles,
      ];
}

class FileDescriptor extends Equatable {
  final String id;
  final String name;
  final double? size;

  const FileDescriptor({
    required this.id,
    required this.name,
    this.size,
  });

  @override
  List<Object?> get props => [id, name, size];
}

class AttachmentContent extends Equatable {
  final String id;
  final String base64Content;
  final String mimeType;
  final String name;
  final bool canAddToDMP;
  final DateTime createdAt;

  const AttachmentContent({
    required this.id,
    required this.base64Content,
    required this.mimeType,
    required this.name,
    required this.canAddToDMP,
    required this.createdAt,
  });

  @override
  List<Object?> get props => [id, base64Content, mimeType, name, canAddToDMP, createdAt];
}

enum AddressMailType {
  ORG,
  APP,
  PER,
  NONE;

  String? get mapToString {
    switch (this) {
      case AddressMailType.APP:
        return 'APP';
      case AddressMailType.ORG:
        return 'ORG';
      case AddressMailType.PER:
        return 'PER';
      case AddressMailType.NONE:
        return null;
    }
  }
}

class ContactDetails extends Equatable {
  final String name;
  final String typeContact;
  final String? idNat;
  final AddressMailType? addressMailType;

  const ContactDetails({required this.name, required this.typeContact, this.idNat, this.addressMailType});

  bool get isUsableContact => idNat != null && idNat!.trim().isNotEmpty && addressMailType?.mapToString != null;

  @override
  List<Object?> get props => [name, typeContact, idNat, addressMailType];
}

class Message extends Equatable {
  final String id;
  final ContactsList contactList;
  final DateTime date;
  final String content;
  final bool read;
  final List<FileDescriptor> fileDescriptors;

  const Message({
    required this.id,
    required this.contactList,
    required this.date,
    required this.content,
    required this.read,
    required this.fileDescriptors,
  });

  @override
  List<Object?> get props => [id, contactList, date, content, read, fileDescriptors];
}

class ContactsList extends Equatable {
  final List<ContactDetails> contacts;

  const ContactsList(this.contacts);

  @override
  List<Object?> get props => [contacts];

  ContactDetails? get from => contacts.firstWhereOrNull((contact) => contact.typeContact == 'f');

  List<ContactDetails> get recipients => contacts.where((contact) => contact.typeContact != 'f').toList();
}

enum ReplyOptionType { REPLY, REPLY_TO_ALL }

class TypeOfContactFactory {
  static TypeOfContact handleContact(ContactDetails contact) {
    final idNat = contact.idNat;
    if (idNat == null) {
      return TypeOfContact.user(contact.name);
    } else if (isContactEtablissementDeSante(contact.addressMailType, idNat)) {
      return TypeOfContact.es(contact.name, idNat);
    } else {
      return TypeOfContact.ps(contact.name, idNat);
    }
  }

  static bool isContactEtablissementDeSante(AddressMailType? letterBoxType, String idNat) {
    return letterBoxType == AddressMailType.ORG ||
        letterBoxType == AddressMailType.APP && idNat.characters.first == '1';
  }
}

enum SpecialContactType { ETABLISSEMENT, PROFESSIONNEL }

abstract class TypeOfContact extends Equatable {
  final String name;

  const TypeOfContact._(this.name);

  const factory TypeOfContact.user(String name) = DefaultContact;

  const factory TypeOfContact.ps(String name, String idNat) = ProfessionnelDeSanteContact;

  const factory TypeOfContact.es(String name, String idNat) = EtablissementDeSanteContact;

  @override
  List<Object?> get props => [name];
}

class DefaultContact extends TypeOfContact {
  const DefaultContact(super.name) : super._();
}

class ProfessionnelDeSanteContact extends TypeOfContact {
  final String idNat;

  const ProfessionnelDeSanteContact(super.name, this.idNat) : super._();

  @override
  List<Object?> get props => [idNat];
}

class EtablissementDeSanteContact extends TypeOfContact {
  final String idNat;

  const EtablissementDeSanteContact(super.name, this.idNat) : super._();

  @override
  List<Object?> get props => [idNat];
}
