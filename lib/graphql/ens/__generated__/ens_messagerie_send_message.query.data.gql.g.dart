// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_messagerie_send_message.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gsend_messageData> _$gsendMessageDataSerializer =
    new _$Gsend_messageDataSerializer();
Serializer<Gsend_messageData_sendMessage>
    _$gsendMessageDataSendMessageSerializer =
    new _$Gsend_messageData_sendMessageSerializer();
Serializer<Gsend_messageData_sendMessage_mailBoxModel>
    _$gsendMessageDataSendMessageMailBoxModelSerializer =
    new _$Gsend_messageData_sendMessage_mailBoxModelSerializer();
Serializer<Gsend_messageData_sendMessage_mailBoxModel_conversations>
    _$gsendMessageDataSendMessageMailBoxModelConversationsSerializer =
    new _$Gsend_messageData_sendMessage_mailBoxModel_conversationsSerializer();
Serializer<Gsend_messageData_sendMessage_mailBoxModel_contacts>
    _$gsendMessageDataSendMessageMailBoxModelContactsSerializer =
    new _$Gsend_messageData_sendMessage_mailBoxModel_contactsSerializer();
Serializer<Gsend_messageData_sendMessage_messageResponseModel>
    _$gsendMessageDataSendMessageMessageResponseModelSerializer =
    new _$Gsend_messageData_sendMessage_messageResponseModelSerializer();
Serializer<Gsend_messageData_sendMessage_messageResponseModel_messages>
    _$gsendMessageDataSendMessageMessageResponseModelMessagesSerializer =
    new _$Gsend_messageData_sendMessage_messageResponseModel_messagesSerializer();
Serializer<
        Gsend_messageData_sendMessage_messageResponseModel_messages_contactDetails>
    _$gsendMessageDataSendMessageMessageResponseModelMessagesContactDetailsSerializer =
    new _$Gsend_messageData_sendMessage_messageResponseModel_messages_contactDetailsSerializer();
Serializer<Gsend_messageData_sendMessage_messageResponseModel_messages_files>
    _$gsendMessageDataSendMessageMessageResponseModelMessagesFilesSerializer =
    new _$Gsend_messageData_sendMessage_messageResponseModel_messages_filesSerializer();
Serializer<Gsend_messageData_sendMessage_messageResponseModel_draft>
    _$gsendMessageDataSendMessageMessageResponseModelDraftSerializer =
    new _$Gsend_messageData_sendMessage_messageResponseModel_draftSerializer();
Serializer<
        Gsend_messageData_sendMessage_messageResponseModel_draft_contactDetails>
    _$gsendMessageDataSendMessageMessageResponseModelDraftContactDetailsSerializer =
    new _$Gsend_messageData_sendMessage_messageResponseModel_draft_contactDetailsSerializer();
Serializer<
        Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients>
    _$gsendMessageDataSendMessageMessageResponseModelDraftDraftRecipientsSerializer =
    new _$Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipientsSerializer();
Serializer<
        Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients_to>
    _$gsendMessageDataSendMessageMessageResponseModelDraftDraftRecipientsToSerializer =
    new _$Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients_toSerializer();
Serializer<Gsend_messageData_sendMessage_messageResponseModel_draft_files>
    _$gsendMessageDataSendMessageMessageResponseModelDraftFilesSerializer =
    new _$Gsend_messageData_sendMessage_messageResponseModel_draft_filesSerializer();
Serializer<Gsend_messageData_sendMessage_messageResponseModel_responseTemplate>
    _$gsendMessageDataSendMessageMessageResponseModelResponseTemplateSerializer =
    new _$Gsend_messageData_sendMessage_messageResponseModel_responseTemplateSerializer();

class _$Gsend_messageDataSerializer
    implements StructuredSerializer<Gsend_messageData> {
  @override
  final Iterable<Type> types = const [Gsend_messageData, _$Gsend_messageData];
  @override
  final String wireName = 'Gsend_messageData';

  @override
  Iterable<Object?> serialize(Serializers serializers, Gsend_messageData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'sendMessage',
      serializers.serialize(object.sendMessage,
          specifiedType: const FullType(Gsend_messageData_sendMessage)),
    ];

    return result;
  }

  @override
  Gsend_messageData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gsend_messageDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'sendMessage':
          result.sendMessage.replace(serializers.deserialize(value,
                  specifiedType: const FullType(Gsend_messageData_sendMessage))!
              as Gsend_messageData_sendMessage);
          break;
      }
    }

    return result.build();
  }
}

class _$Gsend_messageData_sendMessageSerializer
    implements StructuredSerializer<Gsend_messageData_sendMessage> {
  @override
  final Iterable<Type> types = const [
    Gsend_messageData_sendMessage,
    _$Gsend_messageData_sendMessage
  ];
  @override
  final String wireName = 'Gsend_messageData_sendMessage';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gsend_messageData_sendMessage object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'conversationId',
      serializers.serialize(object.conversationId,
          specifiedType: const FullType(String)),
      'mailBoxModel',
      serializers.serialize(object.mailBoxModel,
          specifiedType:
              const FullType(Gsend_messageData_sendMessage_mailBoxModel)),
      'messageResponseModel',
      serializers.serialize(object.messageResponseModel,
          specifiedType: const FullType(
              Gsend_messageData_sendMessage_messageResponseModel)),
    ];

    return result;
  }

  @override
  Gsend_messageData_sendMessage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gsend_messageData_sendMessageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'conversationId':
          result.conversationId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'mailBoxModel':
          result.mailBoxModel.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gsend_messageData_sendMessage_mailBoxModel))!
              as Gsend_messageData_sendMessage_mailBoxModel);
          break;
        case 'messageResponseModel':
          result.messageResponseModel.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gsend_messageData_sendMessage_messageResponseModel))!
              as Gsend_messageData_sendMessage_messageResponseModel);
          break;
      }
    }

    return result.build();
  }
}

class _$Gsend_messageData_sendMessage_mailBoxModelSerializer
    implements
        StructuredSerializer<Gsend_messageData_sendMessage_mailBoxModel> {
  @override
  final Iterable<Type> types = const [
    Gsend_messageData_sendMessage_mailBoxModel,
    _$Gsend_messageData_sendMessage_mailBoxModel
  ];
  @override
  final String wireName = 'Gsend_messageData_sendMessage_mailBoxModel';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gsend_messageData_sendMessage_mailBoxModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'userMail',
      serializers.serialize(object.userMail,
          specifiedType: const FullType(String)),
      'totalElements',
      serializers.serialize(object.totalElements,
          specifiedType: const FullType(int)),
      'totalPages',
      serializers.serialize(object.totalPages,
          specifiedType: const FullType(int)),
      'oneOrMoreUnreadConversation',
      serializers.serialize(object.oneOrMoreUnreadConversation,
          specifiedType: const FullType(bool)),
      'contacts',
      serializers.serialize(object.contacts,
          specifiedType: const FullType(BuiltList, const [
            const FullType(Gsend_messageData_sendMessage_mailBoxModel_contacts)
          ])),
    ];
    Object? value;
    value = object.conversations;
    if (value != null) {
      result
        ..add('conversations')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  Gsend_messageData_sendMessage_mailBoxModel_conversations)
            ])));
    }
    return result;
  }

  @override
  Gsend_messageData_sendMessage_mailBoxModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gsend_messageData_sendMessage_mailBoxModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'userMail':
          result.userMail = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'totalElements':
          result.totalElements = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'totalPages':
          result.totalPages = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'oneOrMoreUnreadConversation':
          result.oneOrMoreUnreadConversation = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'conversations':
          result.conversations.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gsend_messageData_sendMessage_mailBoxModel_conversations)
              ]))! as BuiltList<Object?>);
          break;
        case 'contacts':
          result.contacts.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gsend_messageData_sendMessage_mailBoxModel_contacts)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gsend_messageData_sendMessage_mailBoxModel_conversationsSerializer
    implements
        StructuredSerializer<
            Gsend_messageData_sendMessage_mailBoxModel_conversations> {
  @override
  final Iterable<Type> types = const [
    Gsend_messageData_sendMessage_mailBoxModel_conversations,
    _$Gsend_messageData_sendMessage_mailBoxModel_conversations
  ];
  @override
  final String wireName =
      'Gsend_messageData_sendMessage_mailBoxModel_conversations';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gsend_messageData_sendMessage_mailBoxModel_conversations object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
      'hasAttachment',
      serializers.serialize(object.hasAttachment,
          specifiedType: const FullType(bool)),
      'subject',
      serializers.serialize(object.subject,
          specifiedType: const FullType(String)),
      'healthProfessionalNames',
      serializers.serialize(object.healthProfessionalNames,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'read',
      serializers.serialize(object.read, specifiedType: const FullType(bool)),
      'hasDraft',
      serializers.serialize(object.hasDraft,
          specifiedType: const FullType(bool)),
      'isNewMessage',
      serializers.serialize(object.isNewMessage,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  Gsend_messageData_sendMessage_mailBoxModel_conversations deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gsend_messageData_sendMessage_mailBoxModel_conversationsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'hasAttachment':
          result.hasAttachment = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'subject':
          result.subject = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'healthProfessionalNames':
          result.healthProfessionalNames.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'read':
          result.read = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'hasDraft':
          result.hasDraft = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'isNewMessage':
          result.isNewMessage = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Gsend_messageData_sendMessage_mailBoxModel_contactsSerializer
    implements
        StructuredSerializer<
            Gsend_messageData_sendMessage_mailBoxModel_contacts> {
  @override
  final Iterable<Type> types = const [
    Gsend_messageData_sendMessage_mailBoxModel_contacts,
    _$Gsend_messageData_sendMessage_mailBoxModel_contacts
  ];
  @override
  final String wireName = 'Gsend_messageData_sendMessage_mailBoxModel_contacts';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gsend_messageData_sendMessage_mailBoxModel_contacts object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'fullName',
      serializers.serialize(object.fullName,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gsend_messageData_sendMessage_mailBoxModel_contacts deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gsend_messageData_sendMessage_mailBoxModel_contactsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'fullName':
          result.fullName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gsend_messageData_sendMessage_messageResponseModelSerializer
    implements
        StructuredSerializer<
            Gsend_messageData_sendMessage_messageResponseModel> {
  @override
  final Iterable<Type> types = const [
    Gsend_messageData_sendMessage_messageResponseModel,
    _$Gsend_messageData_sendMessage_messageResponseModel
  ];
  @override
  final String wireName = 'Gsend_messageData_sendMessage_messageResponseModel';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gsend_messageData_sendMessage_messageResponseModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'subject',
      serializers.serialize(object.subject,
          specifiedType: const FullType(String)),
      'acknowledge',
      serializers.serialize(object.acknowledge,
          specifiedType: const FullType(bool)),
      'responseTemplate',
      serializers.serialize(object.responseTemplate,
          specifiedType: const FullType(
              Gsend_messageData_sendMessage_messageResponseModel_responseTemplate)),
    ];
    Object? value;
    value = object.messages;
    if (value != null) {
      result
        ..add('messages')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  Gsend_messageData_sendMessage_messageResponseModel_messages)
            ])));
    }
    value = object.draft;
    if (value != null) {
      result
        ..add('draft')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Gsend_messageData_sendMessage_messageResponseModel_draft)));
    }
    return result;
  }

  @override
  Gsend_messageData_sendMessage_messageResponseModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gsend_messageData_sendMessage_messageResponseModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'subject':
          result.subject = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'acknowledge':
          result.acknowledge = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'messages':
          result.messages.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gsend_messageData_sendMessage_messageResponseModel_messages)
              ]))! as BuiltList<Object?>);
          break;
        case 'draft':
          result.draft.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gsend_messageData_sendMessage_messageResponseModel_draft))!
              as Gsend_messageData_sendMessage_messageResponseModel_draft);
          break;
        case 'responseTemplate':
          result.responseTemplate.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gsend_messageData_sendMessage_messageResponseModel_responseTemplate))!
              as Gsend_messageData_sendMessage_messageResponseModel_responseTemplate);
          break;
      }
    }

    return result.build();
  }
}

class _$Gsend_messageData_sendMessage_messageResponseModel_messagesSerializer
    implements
        StructuredSerializer<
            Gsend_messageData_sendMessage_messageResponseModel_messages> {
  @override
  final Iterable<Type> types = const [
    Gsend_messageData_sendMessage_messageResponseModel_messages,
    _$Gsend_messageData_sendMessage_messageResponseModel_messages
  ];
  @override
  final String wireName =
      'Gsend_messageData_sendMessage_messageResponseModel_messages';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gsend_messageData_sendMessage_messageResponseModel_messages object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'contactDetails',
      serializers.serialize(object.contactDetails,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                Gsend_messageData_sendMessage_messageResponseModel_messages_contactDetails)
          ])),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
      'content',
      serializers.serialize(object.content,
          specifiedType: const FullType(String)),
      'read',
      serializers.serialize(object.read, specifiedType: const FullType(bool)),
      'recipients',
      serializers.serialize(object.recipients,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'files',
      serializers.serialize(object.files,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                Gsend_messageData_sendMessage_messageResponseModel_messages_files)
          ])),
    ];

    return result;
  }

  @override
  Gsend_messageData_sendMessage_messageResponseModel_messages deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gsend_messageData_sendMessage_messageResponseModel_messagesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'contactDetails':
          result.contactDetails.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gsend_messageData_sendMessage_messageResponseModel_messages_contactDetails)
              ]))! as BuiltList<Object?>);
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'read':
          result.read = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'recipients':
          result.recipients.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'files':
          result.files.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gsend_messageData_sendMessage_messageResponseModel_messages_files)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gsend_messageData_sendMessage_messageResponseModel_messages_contactDetailsSerializer
    implements
        StructuredSerializer<
            Gsend_messageData_sendMessage_messageResponseModel_messages_contactDetails> {
  @override
  final Iterable<Type> types = const [
    Gsend_messageData_sendMessage_messageResponseModel_messages_contactDetails,
    _$Gsend_messageData_sendMessage_messageResponseModel_messages_contactDetails
  ];
  @override
  final String wireName =
      'Gsend_messageData_sendMessage_messageResponseModel_messages_contactDetails';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gsend_messageData_sendMessage_messageResponseModel_messages_contactDetails
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.idNat;
    if (value != null) {
      result
        ..add('idNat')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.typeBal;
    if (value != null) {
      result
        ..add('typeBal')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Gsend_messageData_sendMessage_messageResponseModel_messages_contactDetails
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gsend_messageData_sendMessage_messageResponseModel_messages_contactDetailsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'idNat':
          result.idNat = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'typeBal':
          result.typeBal = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Gsend_messageData_sendMessage_messageResponseModel_messages_filesSerializer
    implements
        StructuredSerializer<
            Gsend_messageData_sendMessage_messageResponseModel_messages_files> {
  @override
  final Iterable<Type> types = const [
    Gsend_messageData_sendMessage_messageResponseModel_messages_files,
    _$Gsend_messageData_sendMessage_messageResponseModel_messages_files
  ];
  @override
  final String wireName =
      'Gsend_messageData_sendMessage_messageResponseModel_messages_files';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gsend_messageData_sendMessage_messageResponseModel_messages_files object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gsend_messageData_sendMessage_messageResponseModel_messages_files deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gsend_messageData_sendMessage_messageResponseModel_messages_filesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gsend_messageData_sendMessage_messageResponseModel_draftSerializer
    implements
        StructuredSerializer<
            Gsend_messageData_sendMessage_messageResponseModel_draft> {
  @override
  final Iterable<Type> types = const [
    Gsend_messageData_sendMessage_messageResponseModel_draft,
    _$Gsend_messageData_sendMessage_messageResponseModel_draft
  ];
  @override
  final String wireName =
      'Gsend_messageData_sendMessage_messageResponseModel_draft';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gsend_messageData_sendMessage_messageResponseModel_draft object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'contactDetails',
      serializers.serialize(object.contactDetails,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                Gsend_messageData_sendMessage_messageResponseModel_draft_contactDetails)
          ])),
      'draftRecipients',
      serializers.serialize(object.draftRecipients,
          specifiedType: const FullType(
              Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients)),
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
      'content',
      serializers.serialize(object.content,
          specifiedType: const FullType(String)),
      'subject',
      serializers.serialize(object.subject,
          specifiedType: const FullType(String)),
      'read',
      serializers.serialize(object.read, specifiedType: const FullType(bool)),
      'remainSizeFiles',
      serializers.serialize(object.remainSizeFiles,
          specifiedType: const FullType(double)),
      'recipients',
      serializers.serialize(object.recipients,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'files',
      serializers.serialize(object.files,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                Gsend_messageData_sendMessage_messageResponseModel_draft_files)
          ])),
    ];
    Object? value;
    value = object.parentId;
    if (value != null) {
      result
        ..add('parentId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Gsend_messageData_sendMessage_messageResponseModel_draft deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gsend_messageData_sendMessage_messageResponseModel_draftBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'parentId':
          result.parentId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'contactDetails':
          result.contactDetails.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gsend_messageData_sendMessage_messageResponseModel_draft_contactDetails)
              ]))! as BuiltList<Object?>);
          break;
        case 'draftRecipients':
          result.draftRecipients.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients))!
              as Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients);
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'subject':
          result.subject = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'read':
          result.read = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'remainSizeFiles':
          result.remainSizeFiles = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'recipients':
          result.recipients.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'files':
          result.files.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gsend_messageData_sendMessage_messageResponseModel_draft_files)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gsend_messageData_sendMessage_messageResponseModel_draft_contactDetailsSerializer
    implements
        StructuredSerializer<
            Gsend_messageData_sendMessage_messageResponseModel_draft_contactDetails> {
  @override
  final Iterable<Type> types = const [
    Gsend_messageData_sendMessage_messageResponseModel_draft_contactDetails,
    _$Gsend_messageData_sendMessage_messageResponseModel_draft_contactDetails
  ];
  @override
  final String wireName =
      'Gsend_messageData_sendMessage_messageResponseModel_draft_contactDetails';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gsend_messageData_sendMessage_messageResponseModel_draft_contactDetails
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.idNat;
    if (value != null) {
      result
        ..add('idNat')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.typeBal;
    if (value != null) {
      result
        ..add('typeBal')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Gsend_messageData_sendMessage_messageResponseModel_draft_contactDetails
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gsend_messageData_sendMessage_messageResponseModel_draft_contactDetailsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'idNat':
          result.idNat = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'typeBal':
          result.typeBal = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipientsSerializer
    implements
        StructuredSerializer<
            Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients> {
  @override
  final Iterable<Type> types = const [
    Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients,
    _$Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients
  ];
  @override
  final String wireName =
      'Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'to',
      serializers.serialize(object.to,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients_to)
          ])),
    ];

    return result;
  }

  @override
  Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipientsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'to':
          result.to.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients_to)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients_toSerializer
    implements
        StructuredSerializer<
            Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients_to> {
  @override
  final Iterable<Type> types = const [
    Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients_to,
    _$Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients_to
  ];
  @override
  final String wireName =
      'Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients_to';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients_to
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'fullName',
      serializers.serialize(object.fullName,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients_to
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients_toBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'fullName':
          result.fullName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gsend_messageData_sendMessage_messageResponseModel_draft_filesSerializer
    implements
        StructuredSerializer<
            Gsend_messageData_sendMessage_messageResponseModel_draft_files> {
  @override
  final Iterable<Type> types = const [
    Gsend_messageData_sendMessage_messageResponseModel_draft_files,
    _$Gsend_messageData_sendMessage_messageResponseModel_draft_files
  ];
  @override
  final String wireName =
      'Gsend_messageData_sendMessage_messageResponseModel_draft_files';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gsend_messageData_sendMessage_messageResponseModel_draft_files object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'size',
      serializers.serialize(object.size, specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  Gsend_messageData_sendMessage_messageResponseModel_draft_files deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gsend_messageData_sendMessage_messageResponseModel_draft_filesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'size':
          result.size = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
      }
    }

    return result.build();
  }
}

class _$Gsend_messageData_sendMessage_messageResponseModel_responseTemplateSerializer
    implements
        StructuredSerializer<
            Gsend_messageData_sendMessage_messageResponseModel_responseTemplate> {
  @override
  final Iterable<Type> types = const [
    Gsend_messageData_sendMessage_messageResponseModel_responseTemplate,
    _$Gsend_messageData_sendMessage_messageResponseModel_responseTemplate
  ];
  @override
  final String wireName =
      'Gsend_messageData_sendMessage_messageResponseModel_responseTemplate';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gsend_messageData_sendMessage_messageResponseModel_responseTemplate
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'messageId',
      serializers.serialize(object.messageId,
          specifiedType: const FullType(String)),
      'replyOptions',
      serializers.serialize(object.replyOptions,
          specifiedType: const FullType(
              BuiltList, const [const FullType(_i4.GReplyTypeEnum)])),
      'conversationId',
      serializers.serialize(object.conversationId,
          specifiedType: const FullType(String)),
      'from',
      serializers.serialize(object.from, specifiedType: const FullType(String)),
      'to',
      serializers.serialize(object.to, specifiedType: const FullType(String)),
      'remainSizeFiles',
      serializers.serialize(object.remainSizeFiles,
          specifiedType: const FullType(double)),
    ];
    Object? value;
    value = object.conversationFinalizedBy;
    if (value != null) {
      result
        ..add('conversationFinalizedBy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.recipients;
    if (value != null) {
      result
        ..add('recipients')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  Gsend_messageData_sendMessage_messageResponseModel_responseTemplate
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gsend_messageData_sendMessage_messageResponseModel_responseTemplateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'conversationFinalizedBy':
          result.conversationFinalizedBy = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'messageId':
          result.messageId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'replyOptions':
          result.replyOptions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(_i4.GReplyTypeEnum)]))!
              as BuiltList<Object?>);
          break;
        case 'conversationId':
          result.conversationId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'from':
          result.from = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'to':
          result.to = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'recipients':
          result.recipients.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'remainSizeFiles':
          result.remainSizeFiles = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
      }
    }

    return result.build();
  }
}

class _$Gsend_messageData extends Gsend_messageData {
  @override
  final String G__typename;
  @override
  final Gsend_messageData_sendMessage sendMessage;

  factory _$Gsend_messageData(
          [void Function(Gsend_messageDataBuilder)? updates]) =>
      (new Gsend_messageDataBuilder()..update(updates))._build();

  _$Gsend_messageData._({required this.G__typename, required this.sendMessage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gsend_messageData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        sendMessage, r'Gsend_messageData', 'sendMessage');
  }

  @override
  Gsend_messageData rebuild(void Function(Gsend_messageDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gsend_messageDataBuilder toBuilder() =>
      new Gsend_messageDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gsend_messageData &&
        G__typename == other.G__typename &&
        sendMessage == other.sendMessage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, sendMessage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gsend_messageData')
          ..add('G__typename', G__typename)
          ..add('sendMessage', sendMessage))
        .toString();
  }
}

class Gsend_messageDataBuilder
    implements Builder<Gsend_messageData, Gsend_messageDataBuilder> {
  _$Gsend_messageData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gsend_messageData_sendMessageBuilder? _sendMessage;
  Gsend_messageData_sendMessageBuilder get sendMessage =>
      _$this._sendMessage ??= new Gsend_messageData_sendMessageBuilder();
  set sendMessage(Gsend_messageData_sendMessageBuilder? sendMessage) =>
      _$this._sendMessage = sendMessage;

  Gsend_messageDataBuilder() {
    Gsend_messageData._initializeBuilder(this);
  }

  Gsend_messageDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _sendMessage = $v.sendMessage.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gsend_messageData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gsend_messageData;
  }

  @override
  void update(void Function(Gsend_messageDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gsend_messageData build() => _build();

  _$Gsend_messageData _build() {
    _$Gsend_messageData _$result;
    try {
      _$result = _$v ??
          new _$Gsend_messageData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gsend_messageData', 'G__typename'),
              sendMessage: sendMessage.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sendMessage';
        sendMessage.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gsend_messageData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gsend_messageData_sendMessage extends Gsend_messageData_sendMessage {
  @override
  final String G__typename;
  @override
  final String conversationId;
  @override
  final Gsend_messageData_sendMessage_mailBoxModel mailBoxModel;
  @override
  final Gsend_messageData_sendMessage_messageResponseModel messageResponseModel;

  factory _$Gsend_messageData_sendMessage(
          [void Function(Gsend_messageData_sendMessageBuilder)? updates]) =>
      (new Gsend_messageData_sendMessageBuilder()..update(updates))._build();

  _$Gsend_messageData_sendMessage._(
      {required this.G__typename,
      required this.conversationId,
      required this.mailBoxModel,
      required this.messageResponseModel})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gsend_messageData_sendMessage', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        conversationId, r'Gsend_messageData_sendMessage', 'conversationId');
    BuiltValueNullFieldError.checkNotNull(
        mailBoxModel, r'Gsend_messageData_sendMessage', 'mailBoxModel');
    BuiltValueNullFieldError.checkNotNull(messageResponseModel,
        r'Gsend_messageData_sendMessage', 'messageResponseModel');
  }

  @override
  Gsend_messageData_sendMessage rebuild(
          void Function(Gsend_messageData_sendMessageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gsend_messageData_sendMessageBuilder toBuilder() =>
      new Gsend_messageData_sendMessageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gsend_messageData_sendMessage &&
        G__typename == other.G__typename &&
        conversationId == other.conversationId &&
        mailBoxModel == other.mailBoxModel &&
        messageResponseModel == other.messageResponseModel;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, conversationId.hashCode);
    _$hash = $jc(_$hash, mailBoxModel.hashCode);
    _$hash = $jc(_$hash, messageResponseModel.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gsend_messageData_sendMessage')
          ..add('G__typename', G__typename)
          ..add('conversationId', conversationId)
          ..add('mailBoxModel', mailBoxModel)
          ..add('messageResponseModel', messageResponseModel))
        .toString();
  }
}

class Gsend_messageData_sendMessageBuilder
    implements
        Builder<Gsend_messageData_sendMessage,
            Gsend_messageData_sendMessageBuilder> {
  _$Gsend_messageData_sendMessage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _conversationId;
  String? get conversationId => _$this._conversationId;
  set conversationId(String? conversationId) =>
      _$this._conversationId = conversationId;

  Gsend_messageData_sendMessage_mailBoxModelBuilder? _mailBoxModel;
  Gsend_messageData_sendMessage_mailBoxModelBuilder get mailBoxModel =>
      _$this._mailBoxModel ??=
          new Gsend_messageData_sendMessage_mailBoxModelBuilder();
  set mailBoxModel(
          Gsend_messageData_sendMessage_mailBoxModelBuilder? mailBoxModel) =>
      _$this._mailBoxModel = mailBoxModel;

  Gsend_messageData_sendMessage_messageResponseModelBuilder?
      _messageResponseModel;
  Gsend_messageData_sendMessage_messageResponseModelBuilder
      get messageResponseModel => _$this._messageResponseModel ??=
          new Gsend_messageData_sendMessage_messageResponseModelBuilder();
  set messageResponseModel(
          Gsend_messageData_sendMessage_messageResponseModelBuilder?
              messageResponseModel) =>
      _$this._messageResponseModel = messageResponseModel;

  Gsend_messageData_sendMessageBuilder() {
    Gsend_messageData_sendMessage._initializeBuilder(this);
  }

  Gsend_messageData_sendMessageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _conversationId = $v.conversationId;
      _mailBoxModel = $v.mailBoxModel.toBuilder();
      _messageResponseModel = $v.messageResponseModel.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gsend_messageData_sendMessage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gsend_messageData_sendMessage;
  }

  @override
  void update(void Function(Gsend_messageData_sendMessageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gsend_messageData_sendMessage build() => _build();

  _$Gsend_messageData_sendMessage _build() {
    _$Gsend_messageData_sendMessage _$result;
    try {
      _$result = _$v ??
          new _$Gsend_messageData_sendMessage._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gsend_messageData_sendMessage', 'G__typename'),
              conversationId: BuiltValueNullFieldError.checkNotNull(
                  conversationId,
                  r'Gsend_messageData_sendMessage',
                  'conversationId'),
              mailBoxModel: mailBoxModel.build(),
              messageResponseModel: messageResponseModel.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mailBoxModel';
        mailBoxModel.build();
        _$failedField = 'messageResponseModel';
        messageResponseModel.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gsend_messageData_sendMessage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gsend_messageData_sendMessage_mailBoxModel
    extends Gsend_messageData_sendMessage_mailBoxModel {
  @override
  final String G__typename;
  @override
  final String userMail;
  @override
  final int totalElements;
  @override
  final int totalPages;
  @override
  final bool oneOrMoreUnreadConversation;
  @override
  final BuiltList<Gsend_messageData_sendMessage_mailBoxModel_conversations>?
      conversations;
  @override
  final BuiltList<Gsend_messageData_sendMessage_mailBoxModel_contacts> contacts;

  factory _$Gsend_messageData_sendMessage_mailBoxModel(
          [void Function(Gsend_messageData_sendMessage_mailBoxModelBuilder)?
              updates]) =>
      (new Gsend_messageData_sendMessage_mailBoxModelBuilder()..update(updates))
          ._build();

  _$Gsend_messageData_sendMessage_mailBoxModel._(
      {required this.G__typename,
      required this.userMail,
      required this.totalElements,
      required this.totalPages,
      required this.oneOrMoreUnreadConversation,
      this.conversations,
      required this.contacts})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gsend_messageData_sendMessage_mailBoxModel', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        userMail, r'Gsend_messageData_sendMessage_mailBoxModel', 'userMail');
    BuiltValueNullFieldError.checkNotNull(totalElements,
        r'Gsend_messageData_sendMessage_mailBoxModel', 'totalElements');
    BuiltValueNullFieldError.checkNotNull(totalPages,
        r'Gsend_messageData_sendMessage_mailBoxModel', 'totalPages');
    BuiltValueNullFieldError.checkNotNull(
        oneOrMoreUnreadConversation,
        r'Gsend_messageData_sendMessage_mailBoxModel',
        'oneOrMoreUnreadConversation');
    BuiltValueNullFieldError.checkNotNull(
        contacts, r'Gsend_messageData_sendMessage_mailBoxModel', 'contacts');
  }

  @override
  Gsend_messageData_sendMessage_mailBoxModel rebuild(
          void Function(Gsend_messageData_sendMessage_mailBoxModelBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gsend_messageData_sendMessage_mailBoxModelBuilder toBuilder() =>
      new Gsend_messageData_sendMessage_mailBoxModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gsend_messageData_sendMessage_mailBoxModel &&
        G__typename == other.G__typename &&
        userMail == other.userMail &&
        totalElements == other.totalElements &&
        totalPages == other.totalPages &&
        oneOrMoreUnreadConversation == other.oneOrMoreUnreadConversation &&
        conversations == other.conversations &&
        contacts == other.contacts;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, userMail.hashCode);
    _$hash = $jc(_$hash, totalElements.hashCode);
    _$hash = $jc(_$hash, totalPages.hashCode);
    _$hash = $jc(_$hash, oneOrMoreUnreadConversation.hashCode);
    _$hash = $jc(_$hash, conversations.hashCode);
    _$hash = $jc(_$hash, contacts.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gsend_messageData_sendMessage_mailBoxModel')
          ..add('G__typename', G__typename)
          ..add('userMail', userMail)
          ..add('totalElements', totalElements)
          ..add('totalPages', totalPages)
          ..add('oneOrMoreUnreadConversation', oneOrMoreUnreadConversation)
          ..add('conversations', conversations)
          ..add('contacts', contacts))
        .toString();
  }
}

class Gsend_messageData_sendMessage_mailBoxModelBuilder
    implements
        Builder<Gsend_messageData_sendMessage_mailBoxModel,
            Gsend_messageData_sendMessage_mailBoxModelBuilder> {
  _$Gsend_messageData_sendMessage_mailBoxModel? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userMail;
  String? get userMail => _$this._userMail;
  set userMail(String? userMail) => _$this._userMail = userMail;

  int? _totalElements;
  int? get totalElements => _$this._totalElements;
  set totalElements(int? totalElements) =>
      _$this._totalElements = totalElements;

  int? _totalPages;
  int? get totalPages => _$this._totalPages;
  set totalPages(int? totalPages) => _$this._totalPages = totalPages;

  bool? _oneOrMoreUnreadConversation;
  bool? get oneOrMoreUnreadConversation => _$this._oneOrMoreUnreadConversation;
  set oneOrMoreUnreadConversation(bool? oneOrMoreUnreadConversation) =>
      _$this._oneOrMoreUnreadConversation = oneOrMoreUnreadConversation;

  ListBuilder<Gsend_messageData_sendMessage_mailBoxModel_conversations>?
      _conversations;
  ListBuilder<Gsend_messageData_sendMessage_mailBoxModel_conversations>
      get conversations => _$this._conversations ??= new ListBuilder<
          Gsend_messageData_sendMessage_mailBoxModel_conversations>();
  set conversations(
          ListBuilder<Gsend_messageData_sendMessage_mailBoxModel_conversations>?
              conversations) =>
      _$this._conversations = conversations;

  ListBuilder<Gsend_messageData_sendMessage_mailBoxModel_contacts>? _contacts;
  ListBuilder<Gsend_messageData_sendMessage_mailBoxModel_contacts>
      get contacts => _$this._contacts ??= new ListBuilder<
          Gsend_messageData_sendMessage_mailBoxModel_contacts>();
  set contacts(
          ListBuilder<Gsend_messageData_sendMessage_mailBoxModel_contacts>?
              contacts) =>
      _$this._contacts = contacts;

  Gsend_messageData_sendMessage_mailBoxModelBuilder() {
    Gsend_messageData_sendMessage_mailBoxModel._initializeBuilder(this);
  }

  Gsend_messageData_sendMessage_mailBoxModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userMail = $v.userMail;
      _totalElements = $v.totalElements;
      _totalPages = $v.totalPages;
      _oneOrMoreUnreadConversation = $v.oneOrMoreUnreadConversation;
      _conversations = $v.conversations?.toBuilder();
      _contacts = $v.contacts.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gsend_messageData_sendMessage_mailBoxModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gsend_messageData_sendMessage_mailBoxModel;
  }

  @override
  void update(
      void Function(Gsend_messageData_sendMessage_mailBoxModelBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gsend_messageData_sendMessage_mailBoxModel build() => _build();

  _$Gsend_messageData_sendMessage_mailBoxModel _build() {
    _$Gsend_messageData_sendMessage_mailBoxModel _$result;
    try {
      _$result = _$v ??
          new _$Gsend_messageData_sendMessage_mailBoxModel._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gsend_messageData_sendMessage_mailBoxModel', 'G__typename'),
              userMail: BuiltValueNullFieldError.checkNotNull(
                  userMail, r'Gsend_messageData_sendMessage_mailBoxModel', 'userMail'),
              totalElements: BuiltValueNullFieldError.checkNotNull(
                  totalElements,
                  r'Gsend_messageData_sendMessage_mailBoxModel',
                  'totalElements'),
              totalPages: BuiltValueNullFieldError.checkNotNull(totalPages,
                  r'Gsend_messageData_sendMessage_mailBoxModel', 'totalPages'),
              oneOrMoreUnreadConversation: BuiltValueNullFieldError.checkNotNull(
                  oneOrMoreUnreadConversation,
                  r'Gsend_messageData_sendMessage_mailBoxModel',
                  'oneOrMoreUnreadConversation'),
              conversations: _conversations?.build(),
              contacts: contacts.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'conversations';
        _conversations?.build();
        _$failedField = 'contacts';
        contacts.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gsend_messageData_sendMessage_mailBoxModel',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gsend_messageData_sendMessage_mailBoxModel_conversations
    extends Gsend_messageData_sendMessage_mailBoxModel_conversations {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String date;
  @override
  final bool hasAttachment;
  @override
  final String subject;
  @override
  final BuiltList<String> healthProfessionalNames;
  @override
  final bool read;
  @override
  final bool hasDraft;
  @override
  final bool isNewMessage;

  factory _$Gsend_messageData_sendMessage_mailBoxModel_conversations(
          [void Function(
                  Gsend_messageData_sendMessage_mailBoxModel_conversationsBuilder)?
              updates]) =>
      (new Gsend_messageData_sendMessage_mailBoxModel_conversationsBuilder()
            ..update(updates))
          ._build();

  _$Gsend_messageData_sendMessage_mailBoxModel_conversations._(
      {required this.G__typename,
      required this.id,
      required this.date,
      required this.hasAttachment,
      required this.subject,
      required this.healthProfessionalNames,
      required this.read,
      required this.hasDraft,
      required this.isNewMessage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gsend_messageData_sendMessage_mailBoxModel_conversations',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'Gsend_messageData_sendMessage_mailBoxModel_conversations', 'id');
    BuiltValueNullFieldError.checkNotNull(date,
        r'Gsend_messageData_sendMessage_mailBoxModel_conversations', 'date');
    BuiltValueNullFieldError.checkNotNull(
        hasAttachment,
        r'Gsend_messageData_sendMessage_mailBoxModel_conversations',
        'hasAttachment');
    BuiltValueNullFieldError.checkNotNull(subject,
        r'Gsend_messageData_sendMessage_mailBoxModel_conversations', 'subject');
    BuiltValueNullFieldError.checkNotNull(
        healthProfessionalNames,
        r'Gsend_messageData_sendMessage_mailBoxModel_conversations',
        'healthProfessionalNames');
    BuiltValueNullFieldError.checkNotNull(read,
        r'Gsend_messageData_sendMessage_mailBoxModel_conversations', 'read');
    BuiltValueNullFieldError.checkNotNull(
        hasDraft,
        r'Gsend_messageData_sendMessage_mailBoxModel_conversations',
        'hasDraft');
    BuiltValueNullFieldError.checkNotNull(
        isNewMessage,
        r'Gsend_messageData_sendMessage_mailBoxModel_conversations',
        'isNewMessage');
  }

  @override
  Gsend_messageData_sendMessage_mailBoxModel_conversations rebuild(
          void Function(
                  Gsend_messageData_sendMessage_mailBoxModel_conversationsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gsend_messageData_sendMessage_mailBoxModel_conversationsBuilder toBuilder() =>
      new Gsend_messageData_sendMessage_mailBoxModel_conversationsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gsend_messageData_sendMessage_mailBoxModel_conversations &&
        G__typename == other.G__typename &&
        id == other.id &&
        date == other.date &&
        hasAttachment == other.hasAttachment &&
        subject == other.subject &&
        healthProfessionalNames == other.healthProfessionalNames &&
        read == other.read &&
        hasDraft == other.hasDraft &&
        isNewMessage == other.isNewMessage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, hasAttachment.hashCode);
    _$hash = $jc(_$hash, subject.hashCode);
    _$hash = $jc(_$hash, healthProfessionalNames.hashCode);
    _$hash = $jc(_$hash, read.hashCode);
    _$hash = $jc(_$hash, hasDraft.hashCode);
    _$hash = $jc(_$hash, isNewMessage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gsend_messageData_sendMessage_mailBoxModel_conversations')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('date', date)
          ..add('hasAttachment', hasAttachment)
          ..add('subject', subject)
          ..add('healthProfessionalNames', healthProfessionalNames)
          ..add('read', read)
          ..add('hasDraft', hasDraft)
          ..add('isNewMessage', isNewMessage))
        .toString();
  }
}

class Gsend_messageData_sendMessage_mailBoxModel_conversationsBuilder
    implements
        Builder<Gsend_messageData_sendMessage_mailBoxModel_conversations,
            Gsend_messageData_sendMessage_mailBoxModel_conversationsBuilder> {
  _$Gsend_messageData_sendMessage_mailBoxModel_conversations? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  bool? _hasAttachment;
  bool? get hasAttachment => _$this._hasAttachment;
  set hasAttachment(bool? hasAttachment) =>
      _$this._hasAttachment = hasAttachment;

  String? _subject;
  String? get subject => _$this._subject;
  set subject(String? subject) => _$this._subject = subject;

  ListBuilder<String>? _healthProfessionalNames;
  ListBuilder<String> get healthProfessionalNames =>
      _$this._healthProfessionalNames ??= new ListBuilder<String>();
  set healthProfessionalNames(ListBuilder<String>? healthProfessionalNames) =>
      _$this._healthProfessionalNames = healthProfessionalNames;

  bool? _read;
  bool? get read => _$this._read;
  set read(bool? read) => _$this._read = read;

  bool? _hasDraft;
  bool? get hasDraft => _$this._hasDraft;
  set hasDraft(bool? hasDraft) => _$this._hasDraft = hasDraft;

  bool? _isNewMessage;
  bool? get isNewMessage => _$this._isNewMessage;
  set isNewMessage(bool? isNewMessage) => _$this._isNewMessage = isNewMessage;

  Gsend_messageData_sendMessage_mailBoxModel_conversationsBuilder() {
    Gsend_messageData_sendMessage_mailBoxModel_conversations._initializeBuilder(
        this);
  }

  Gsend_messageData_sendMessage_mailBoxModel_conversationsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _date = $v.date;
      _hasAttachment = $v.hasAttachment;
      _subject = $v.subject;
      _healthProfessionalNames = $v.healthProfessionalNames.toBuilder();
      _read = $v.read;
      _hasDraft = $v.hasDraft;
      _isNewMessage = $v.isNewMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gsend_messageData_sendMessage_mailBoxModel_conversations other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gsend_messageData_sendMessage_mailBoxModel_conversations;
  }

  @override
  void update(
      void Function(
              Gsend_messageData_sendMessage_mailBoxModel_conversationsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gsend_messageData_sendMessage_mailBoxModel_conversations build() => _build();

  _$Gsend_messageData_sendMessage_mailBoxModel_conversations _build() {
    _$Gsend_messageData_sendMessage_mailBoxModel_conversations _$result;
    try {
      _$result = _$v ??
          new _$Gsend_messageData_sendMessage_mailBoxModel_conversations._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gsend_messageData_sendMessage_mailBoxModel_conversations',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'Gsend_messageData_sendMessage_mailBoxModel_conversations', 'id'),
              date: BuiltValueNullFieldError.checkNotNull(
                  date, r'Gsend_messageData_sendMessage_mailBoxModel_conversations', 'date'),
              hasAttachment: BuiltValueNullFieldError.checkNotNull(
                  hasAttachment,
                  r'Gsend_messageData_sendMessage_mailBoxModel_conversations',
                  'hasAttachment'),
              subject: BuiltValueNullFieldError.checkNotNull(
                  subject, r'Gsend_messageData_sendMessage_mailBoxModel_conversations', 'subject'),
              healthProfessionalNames: healthProfessionalNames.build(),
              read: BuiltValueNullFieldError.checkNotNull(
                  read, r'Gsend_messageData_sendMessage_mailBoxModel_conversations', 'read'),
              hasDraft: BuiltValueNullFieldError.checkNotNull(hasDraft, r'Gsend_messageData_sendMessage_mailBoxModel_conversations', 'hasDraft'),
              isNewMessage: BuiltValueNullFieldError.checkNotNull(isNewMessage, r'Gsend_messageData_sendMessage_mailBoxModel_conversations', 'isNewMessage'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'healthProfessionalNames';
        healthProfessionalNames.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gsend_messageData_sendMessage_mailBoxModel_conversations',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gsend_messageData_sendMessage_mailBoxModel_contacts
    extends Gsend_messageData_sendMessage_mailBoxModel_contacts {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String fullName;

  factory _$Gsend_messageData_sendMessage_mailBoxModel_contacts(
          [void Function(
                  Gsend_messageData_sendMessage_mailBoxModel_contactsBuilder)?
              updates]) =>
      (new Gsend_messageData_sendMessage_mailBoxModel_contactsBuilder()
            ..update(updates))
          ._build();

  _$Gsend_messageData_sendMessage_mailBoxModel_contacts._(
      {required this.G__typename, required this.id, required this.fullName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gsend_messageData_sendMessage_mailBoxModel_contacts', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'Gsend_messageData_sendMessage_mailBoxModel_contacts', 'id');
    BuiltValueNullFieldError.checkNotNull(fullName,
        r'Gsend_messageData_sendMessage_mailBoxModel_contacts', 'fullName');
  }

  @override
  Gsend_messageData_sendMessage_mailBoxModel_contacts rebuild(
          void Function(
                  Gsend_messageData_sendMessage_mailBoxModel_contactsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gsend_messageData_sendMessage_mailBoxModel_contactsBuilder toBuilder() =>
      new Gsend_messageData_sendMessage_mailBoxModel_contactsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gsend_messageData_sendMessage_mailBoxModel_contacts &&
        G__typename == other.G__typename &&
        id == other.id &&
        fullName == other.fullName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, fullName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gsend_messageData_sendMessage_mailBoxModel_contacts')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('fullName', fullName))
        .toString();
  }
}

class Gsend_messageData_sendMessage_mailBoxModel_contactsBuilder
    implements
        Builder<Gsend_messageData_sendMessage_mailBoxModel_contacts,
            Gsend_messageData_sendMessage_mailBoxModel_contactsBuilder> {
  _$Gsend_messageData_sendMessage_mailBoxModel_contacts? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  Gsend_messageData_sendMessage_mailBoxModel_contactsBuilder() {
    Gsend_messageData_sendMessage_mailBoxModel_contacts._initializeBuilder(
        this);
  }

  Gsend_messageData_sendMessage_mailBoxModel_contactsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _fullName = $v.fullName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gsend_messageData_sendMessage_mailBoxModel_contacts other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gsend_messageData_sendMessage_mailBoxModel_contacts;
  }

  @override
  void update(
      void Function(Gsend_messageData_sendMessage_mailBoxModel_contactsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gsend_messageData_sendMessage_mailBoxModel_contacts build() => _build();

  _$Gsend_messageData_sendMessage_mailBoxModel_contacts _build() {
    final _$result = _$v ??
        new _$Gsend_messageData_sendMessage_mailBoxModel_contacts._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gsend_messageData_sendMessage_mailBoxModel_contacts',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(id,
                r'Gsend_messageData_sendMessage_mailBoxModel_contacts', 'id'),
            fullName: BuiltValueNullFieldError.checkNotNull(
                fullName,
                r'Gsend_messageData_sendMessage_mailBoxModel_contacts',
                'fullName'));
    replace(_$result);
    return _$result;
  }
}

class _$Gsend_messageData_sendMessage_messageResponseModel
    extends Gsend_messageData_sendMessage_messageResponseModel {
  @override
  final String G__typename;
  @override
  final String subject;
  @override
  final bool acknowledge;
  @override
  final BuiltList<Gsend_messageData_sendMessage_messageResponseModel_messages>?
      messages;
  @override
  final Gsend_messageData_sendMessage_messageResponseModel_draft? draft;
  @override
  final Gsend_messageData_sendMessage_messageResponseModel_responseTemplate
      responseTemplate;

  factory _$Gsend_messageData_sendMessage_messageResponseModel(
          [void Function(
                  Gsend_messageData_sendMessage_messageResponseModelBuilder)?
              updates]) =>
      (new Gsend_messageData_sendMessage_messageResponseModelBuilder()
            ..update(updates))
          ._build();

  _$Gsend_messageData_sendMessage_messageResponseModel._(
      {required this.G__typename,
      required this.subject,
      required this.acknowledge,
      this.messages,
      this.draft,
      required this.responseTemplate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gsend_messageData_sendMessage_messageResponseModel', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(subject,
        r'Gsend_messageData_sendMessage_messageResponseModel', 'subject');
    BuiltValueNullFieldError.checkNotNull(acknowledge,
        r'Gsend_messageData_sendMessage_messageResponseModel', 'acknowledge');
    BuiltValueNullFieldError.checkNotNull(
        responseTemplate,
        r'Gsend_messageData_sendMessage_messageResponseModel',
        'responseTemplate');
  }

  @override
  Gsend_messageData_sendMessage_messageResponseModel rebuild(
          void Function(
                  Gsend_messageData_sendMessage_messageResponseModelBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gsend_messageData_sendMessage_messageResponseModelBuilder toBuilder() =>
      new Gsend_messageData_sendMessage_messageResponseModelBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gsend_messageData_sendMessage_messageResponseModel &&
        G__typename == other.G__typename &&
        subject == other.subject &&
        acknowledge == other.acknowledge &&
        messages == other.messages &&
        draft == other.draft &&
        responseTemplate == other.responseTemplate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, subject.hashCode);
    _$hash = $jc(_$hash, acknowledge.hashCode);
    _$hash = $jc(_$hash, messages.hashCode);
    _$hash = $jc(_$hash, draft.hashCode);
    _$hash = $jc(_$hash, responseTemplate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gsend_messageData_sendMessage_messageResponseModel')
          ..add('G__typename', G__typename)
          ..add('subject', subject)
          ..add('acknowledge', acknowledge)
          ..add('messages', messages)
          ..add('draft', draft)
          ..add('responseTemplate', responseTemplate))
        .toString();
  }
}

class Gsend_messageData_sendMessage_messageResponseModelBuilder
    implements
        Builder<Gsend_messageData_sendMessage_messageResponseModel,
            Gsend_messageData_sendMessage_messageResponseModelBuilder> {
  _$Gsend_messageData_sendMessage_messageResponseModel? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _subject;
  String? get subject => _$this._subject;
  set subject(String? subject) => _$this._subject = subject;

  bool? _acknowledge;
  bool? get acknowledge => _$this._acknowledge;
  set acknowledge(bool? acknowledge) => _$this._acknowledge = acknowledge;

  ListBuilder<Gsend_messageData_sendMessage_messageResponseModel_messages>?
      _messages;
  ListBuilder<Gsend_messageData_sendMessage_messageResponseModel_messages>
      get messages => _$this._messages ??= new ListBuilder<
          Gsend_messageData_sendMessage_messageResponseModel_messages>();
  set messages(
          ListBuilder<
                  Gsend_messageData_sendMessage_messageResponseModel_messages>?
              messages) =>
      _$this._messages = messages;

  Gsend_messageData_sendMessage_messageResponseModel_draftBuilder? _draft;
  Gsend_messageData_sendMessage_messageResponseModel_draftBuilder get draft =>
      _$this._draft ??=
          new Gsend_messageData_sendMessage_messageResponseModel_draftBuilder();
  set draft(
          Gsend_messageData_sendMessage_messageResponseModel_draftBuilder?
              draft) =>
      _$this._draft = draft;

  Gsend_messageData_sendMessage_messageResponseModel_responseTemplateBuilder?
      _responseTemplate;
  Gsend_messageData_sendMessage_messageResponseModel_responseTemplateBuilder
      get responseTemplate => _$this._responseTemplate ??=
          new Gsend_messageData_sendMessage_messageResponseModel_responseTemplateBuilder();
  set responseTemplate(
          Gsend_messageData_sendMessage_messageResponseModel_responseTemplateBuilder?
              responseTemplate) =>
      _$this._responseTemplate = responseTemplate;

  Gsend_messageData_sendMessage_messageResponseModelBuilder() {
    Gsend_messageData_sendMessage_messageResponseModel._initializeBuilder(this);
  }

  Gsend_messageData_sendMessage_messageResponseModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _subject = $v.subject;
      _acknowledge = $v.acknowledge;
      _messages = $v.messages?.toBuilder();
      _draft = $v.draft?.toBuilder();
      _responseTemplate = $v.responseTemplate.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gsend_messageData_sendMessage_messageResponseModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gsend_messageData_sendMessage_messageResponseModel;
  }

  @override
  void update(
      void Function(Gsend_messageData_sendMessage_messageResponseModelBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gsend_messageData_sendMessage_messageResponseModel build() => _build();

  _$Gsend_messageData_sendMessage_messageResponseModel _build() {
    _$Gsend_messageData_sendMessage_messageResponseModel _$result;
    try {
      _$result = _$v ??
          new _$Gsend_messageData_sendMessage_messageResponseModel._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gsend_messageData_sendMessage_messageResponseModel',
                  'G__typename'),
              subject: BuiltValueNullFieldError.checkNotNull(
                  subject,
                  r'Gsend_messageData_sendMessage_messageResponseModel',
                  'subject'),
              acknowledge: BuiltValueNullFieldError.checkNotNull(
                  acknowledge,
                  r'Gsend_messageData_sendMessage_messageResponseModel',
                  'acknowledge'),
              messages: _messages?.build(),
              draft: _draft?.build(),
              responseTemplate: responseTemplate.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'messages';
        _messages?.build();
        _$failedField = 'draft';
        _draft?.build();
        _$failedField = 'responseTemplate';
        responseTemplate.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gsend_messageData_sendMessage_messageResponseModel',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gsend_messageData_sendMessage_messageResponseModel_messages
    extends Gsend_messageData_sendMessage_messageResponseModel_messages {
  @override
  final String G__typename;
  @override
  final BuiltList<
          Gsend_messageData_sendMessage_messageResponseModel_messages_contactDetails>
      contactDetails;
  @override
  final String id;
  @override
  final String date;
  @override
  final String content;
  @override
  final bool read;
  @override
  final BuiltList<String> recipients;
  @override
  final BuiltList<
      Gsend_messageData_sendMessage_messageResponseModel_messages_files> files;

  factory _$Gsend_messageData_sendMessage_messageResponseModel_messages(
          [void Function(
                  Gsend_messageData_sendMessage_messageResponseModel_messagesBuilder)?
              updates]) =>
      (new Gsend_messageData_sendMessage_messageResponseModel_messagesBuilder()
            ..update(updates))
          ._build();

  _$Gsend_messageData_sendMessage_messageResponseModel_messages._(
      {required this.G__typename,
      required this.contactDetails,
      required this.id,
      required this.date,
      required this.content,
      required this.read,
      required this.recipients,
      required this.files})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gsend_messageData_sendMessage_messageResponseModel_messages',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        contactDetails,
        r'Gsend_messageData_sendMessage_messageResponseModel_messages',
        'contactDetails');
    BuiltValueNullFieldError.checkNotNull(id,
        r'Gsend_messageData_sendMessage_messageResponseModel_messages', 'id');
    BuiltValueNullFieldError.checkNotNull(date,
        r'Gsend_messageData_sendMessage_messageResponseModel_messages', 'date');
    BuiltValueNullFieldError.checkNotNull(
        content,
        r'Gsend_messageData_sendMessage_messageResponseModel_messages',
        'content');
    BuiltValueNullFieldError.checkNotNull(read,
        r'Gsend_messageData_sendMessage_messageResponseModel_messages', 'read');
    BuiltValueNullFieldError.checkNotNull(
        recipients,
        r'Gsend_messageData_sendMessage_messageResponseModel_messages',
        'recipients');
    BuiltValueNullFieldError.checkNotNull(
        files,
        r'Gsend_messageData_sendMessage_messageResponseModel_messages',
        'files');
  }

  @override
  Gsend_messageData_sendMessage_messageResponseModel_messages rebuild(
          void Function(
                  Gsend_messageData_sendMessage_messageResponseModel_messagesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gsend_messageData_sendMessage_messageResponseModel_messagesBuilder
      toBuilder() =>
          new Gsend_messageData_sendMessage_messageResponseModel_messagesBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gsend_messageData_sendMessage_messageResponseModel_messages &&
        G__typename == other.G__typename &&
        contactDetails == other.contactDetails &&
        id == other.id &&
        date == other.date &&
        content == other.content &&
        read == other.read &&
        recipients == other.recipients &&
        files == other.files;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, contactDetails.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jc(_$hash, read.hashCode);
    _$hash = $jc(_$hash, recipients.hashCode);
    _$hash = $jc(_$hash, files.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gsend_messageData_sendMessage_messageResponseModel_messages')
          ..add('G__typename', G__typename)
          ..add('contactDetails', contactDetails)
          ..add('id', id)
          ..add('date', date)
          ..add('content', content)
          ..add('read', read)
          ..add('recipients', recipients)
          ..add('files', files))
        .toString();
  }
}

class Gsend_messageData_sendMessage_messageResponseModel_messagesBuilder
    implements
        Builder<Gsend_messageData_sendMessage_messageResponseModel_messages,
            Gsend_messageData_sendMessage_messageResponseModel_messagesBuilder> {
  _$Gsend_messageData_sendMessage_messageResponseModel_messages? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<
          Gsend_messageData_sendMessage_messageResponseModel_messages_contactDetails>?
      _contactDetails;
  ListBuilder<
          Gsend_messageData_sendMessage_messageResponseModel_messages_contactDetails>
      get contactDetails => _$this._contactDetails ??= new ListBuilder<
          Gsend_messageData_sendMessage_messageResponseModel_messages_contactDetails>();
  set contactDetails(
          ListBuilder<
                  Gsend_messageData_sendMessage_messageResponseModel_messages_contactDetails>?
              contactDetails) =>
      _$this._contactDetails = contactDetails;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  bool? _read;
  bool? get read => _$this._read;
  set read(bool? read) => _$this._read = read;

  ListBuilder<String>? _recipients;
  ListBuilder<String> get recipients =>
      _$this._recipients ??= new ListBuilder<String>();
  set recipients(ListBuilder<String>? recipients) =>
      _$this._recipients = recipients;

  ListBuilder<
          Gsend_messageData_sendMessage_messageResponseModel_messages_files>?
      _files;
  ListBuilder<Gsend_messageData_sendMessage_messageResponseModel_messages_files>
      get files => _$this._files ??= new ListBuilder<
          Gsend_messageData_sendMessage_messageResponseModel_messages_files>();
  set files(
          ListBuilder<
                  Gsend_messageData_sendMessage_messageResponseModel_messages_files>?
              files) =>
      _$this._files = files;

  Gsend_messageData_sendMessage_messageResponseModel_messagesBuilder() {
    Gsend_messageData_sendMessage_messageResponseModel_messages
        ._initializeBuilder(this);
  }

  Gsend_messageData_sendMessage_messageResponseModel_messagesBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _contactDetails = $v.contactDetails.toBuilder();
      _id = $v.id;
      _date = $v.date;
      _content = $v.content;
      _read = $v.read;
      _recipients = $v.recipients.toBuilder();
      _files = $v.files.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gsend_messageData_sendMessage_messageResponseModel_messages other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$Gsend_messageData_sendMessage_messageResponseModel_messages;
  }

  @override
  void update(
      void Function(
              Gsend_messageData_sendMessage_messageResponseModel_messagesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gsend_messageData_sendMessage_messageResponseModel_messages build() =>
      _build();

  _$Gsend_messageData_sendMessage_messageResponseModel_messages _build() {
    _$Gsend_messageData_sendMessage_messageResponseModel_messages _$result;
    try {
      _$result = _$v ??
          new _$Gsend_messageData_sendMessage_messageResponseModel_messages._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gsend_messageData_sendMessage_messageResponseModel_messages',
                  'G__typename'),
              contactDetails: contactDetails.build(),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'Gsend_messageData_sendMessage_messageResponseModel_messages', 'id'),
              date: BuiltValueNullFieldError.checkNotNull(
                  date,
                  r'Gsend_messageData_sendMessage_messageResponseModel_messages',
                  'date'),
              content: BuiltValueNullFieldError.checkNotNull(
                  content,
                  r'Gsend_messageData_sendMessage_messageResponseModel_messages',
                  'content'),
              read: BuiltValueNullFieldError.checkNotNull(
                  read,
                  r'Gsend_messageData_sendMessage_messageResponseModel_messages',
                  'read'),
              recipients: recipients.build(),
              files: files.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'contactDetails';
        contactDetails.build();

        _$failedField = 'recipients';
        recipients.build();
        _$failedField = 'files';
        files.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gsend_messageData_sendMessage_messageResponseModel_messages',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gsend_messageData_sendMessage_messageResponseModel_messages_contactDetails
    extends Gsend_messageData_sendMessage_messageResponseModel_messages_contactDetails {
  @override
  final String G__typename;
  @override
  final String name;
  @override
  final String type;
  @override
  final String? idNat;
  @override
  final String? typeBal;

  factory _$Gsend_messageData_sendMessage_messageResponseModel_messages_contactDetails(
          [void Function(
                  Gsend_messageData_sendMessage_messageResponseModel_messages_contactDetailsBuilder)?
              updates]) =>
      (new Gsend_messageData_sendMessage_messageResponseModel_messages_contactDetailsBuilder()
            ..update(updates))
          ._build();

  _$Gsend_messageData_sendMessage_messageResponseModel_messages_contactDetails._(
      {required this.G__typename,
      required this.name,
      required this.type,
      this.idNat,
      this.typeBal})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gsend_messageData_sendMessage_messageResponseModel_messages_contactDetails',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name,
        r'Gsend_messageData_sendMessage_messageResponseModel_messages_contactDetails',
        'name');
    BuiltValueNullFieldError.checkNotNull(
        type,
        r'Gsend_messageData_sendMessage_messageResponseModel_messages_contactDetails',
        'type');
  }

  @override
  Gsend_messageData_sendMessage_messageResponseModel_messages_contactDetails
      rebuild(
              void Function(
                      Gsend_messageData_sendMessage_messageResponseModel_messages_contactDetailsBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gsend_messageData_sendMessage_messageResponseModel_messages_contactDetailsBuilder
      toBuilder() =>
          new Gsend_messageData_sendMessage_messageResponseModel_messages_contactDetailsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gsend_messageData_sendMessage_messageResponseModel_messages_contactDetails &&
        G__typename == other.G__typename &&
        name == other.name &&
        type == other.type &&
        idNat == other.idNat &&
        typeBal == other.typeBal;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, idNat.hashCode);
    _$hash = $jc(_$hash, typeBal.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gsend_messageData_sendMessage_messageResponseModel_messages_contactDetails')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('type', type)
          ..add('idNat', idNat)
          ..add('typeBal', typeBal))
        .toString();
  }
}

class Gsend_messageData_sendMessage_messageResponseModel_messages_contactDetailsBuilder
    implements
        Builder<
            Gsend_messageData_sendMessage_messageResponseModel_messages_contactDetails,
            Gsend_messageData_sendMessage_messageResponseModel_messages_contactDetailsBuilder> {
  _$Gsend_messageData_sendMessage_messageResponseModel_messages_contactDetails?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _idNat;
  String? get idNat => _$this._idNat;
  set idNat(String? idNat) => _$this._idNat = idNat;

  String? _typeBal;
  String? get typeBal => _$this._typeBal;
  set typeBal(String? typeBal) => _$this._typeBal = typeBal;

  Gsend_messageData_sendMessage_messageResponseModel_messages_contactDetailsBuilder() {
    Gsend_messageData_sendMessage_messageResponseModel_messages_contactDetails
        ._initializeBuilder(this);
  }

  Gsend_messageData_sendMessage_messageResponseModel_messages_contactDetailsBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _type = $v.type;
      _idNat = $v.idNat;
      _typeBal = $v.typeBal;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gsend_messageData_sendMessage_messageResponseModel_messages_contactDetails
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gsend_messageData_sendMessage_messageResponseModel_messages_contactDetails;
  }

  @override
  void update(
      void Function(
              Gsend_messageData_sendMessage_messageResponseModel_messages_contactDetailsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gsend_messageData_sendMessage_messageResponseModel_messages_contactDetails
      build() => _build();

  _$Gsend_messageData_sendMessage_messageResponseModel_messages_contactDetails
      _build() {
    final _$result = _$v ??
        new _$Gsend_messageData_sendMessage_messageResponseModel_messages_contactDetails
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gsend_messageData_sendMessage_messageResponseModel_messages_contactDetails',
                'G__typename'),
            name: BuiltValueNullFieldError.checkNotNull(
                name,
                r'Gsend_messageData_sendMessage_messageResponseModel_messages_contactDetails',
                'name'),
            type: BuiltValueNullFieldError.checkNotNull(
                type,
                r'Gsend_messageData_sendMessage_messageResponseModel_messages_contactDetails',
                'type'),
            idNat: idNat,
            typeBal: typeBal);
    replace(_$result);
    return _$result;
  }
}

class _$Gsend_messageData_sendMessage_messageResponseModel_messages_files
    extends Gsend_messageData_sendMessage_messageResponseModel_messages_files {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;

  factory _$Gsend_messageData_sendMessage_messageResponseModel_messages_files(
          [void Function(
                  Gsend_messageData_sendMessage_messageResponseModel_messages_filesBuilder)?
              updates]) =>
      (new Gsend_messageData_sendMessage_messageResponseModel_messages_filesBuilder()
            ..update(updates))
          ._build();

  _$Gsend_messageData_sendMessage_messageResponseModel_messages_files._(
      {required this.G__typename, required this.id, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gsend_messageData_sendMessage_messageResponseModel_messages_files',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'Gsend_messageData_sendMessage_messageResponseModel_messages_files',
        'id');
    BuiltValueNullFieldError.checkNotNull(
        name,
        r'Gsend_messageData_sendMessage_messageResponseModel_messages_files',
        'name');
  }

  @override
  Gsend_messageData_sendMessage_messageResponseModel_messages_files rebuild(
          void Function(
                  Gsend_messageData_sendMessage_messageResponseModel_messages_filesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gsend_messageData_sendMessage_messageResponseModel_messages_filesBuilder
      toBuilder() =>
          new Gsend_messageData_sendMessage_messageResponseModel_messages_filesBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gsend_messageData_sendMessage_messageResponseModel_messages_files &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gsend_messageData_sendMessage_messageResponseModel_messages_files')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class Gsend_messageData_sendMessage_messageResponseModel_messages_filesBuilder
    implements
        Builder<
            Gsend_messageData_sendMessage_messageResponseModel_messages_files,
            Gsend_messageData_sendMessage_messageResponseModel_messages_filesBuilder> {
  _$Gsend_messageData_sendMessage_messageResponseModel_messages_files? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  Gsend_messageData_sendMessage_messageResponseModel_messages_filesBuilder() {
    Gsend_messageData_sendMessage_messageResponseModel_messages_files
        ._initializeBuilder(this);
  }

  Gsend_messageData_sendMessage_messageResponseModel_messages_filesBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gsend_messageData_sendMessage_messageResponseModel_messages_files other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gsend_messageData_sendMessage_messageResponseModel_messages_files;
  }

  @override
  void update(
      void Function(
              Gsend_messageData_sendMessage_messageResponseModel_messages_filesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gsend_messageData_sendMessage_messageResponseModel_messages_files build() =>
      _build();

  _$Gsend_messageData_sendMessage_messageResponseModel_messages_files _build() {
    final _$result = _$v ??
        new _$Gsend_messageData_sendMessage_messageResponseModel_messages_files
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gsend_messageData_sendMessage_messageResponseModel_messages_files',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id,
                r'Gsend_messageData_sendMessage_messageResponseModel_messages_files',
                'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name,
                r'Gsend_messageData_sendMessage_messageResponseModel_messages_files',
                'name'));
    replace(_$result);
    return _$result;
  }
}

class _$Gsend_messageData_sendMessage_messageResponseModel_draft
    extends Gsend_messageData_sendMessage_messageResponseModel_draft {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String? parentId;
  @override
  final BuiltList<
          Gsend_messageData_sendMessage_messageResponseModel_draft_contactDetails>
      contactDetails;
  @override
  final Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients
      draftRecipients;
  @override
  final String date;
  @override
  final String content;
  @override
  final String subject;
  @override
  final bool read;
  @override
  final double remainSizeFiles;
  @override
  final BuiltList<String> recipients;
  @override
  final BuiltList<
      Gsend_messageData_sendMessage_messageResponseModel_draft_files> files;

  factory _$Gsend_messageData_sendMessage_messageResponseModel_draft(
          [void Function(
                  Gsend_messageData_sendMessage_messageResponseModel_draftBuilder)?
              updates]) =>
      (new Gsend_messageData_sendMessage_messageResponseModel_draftBuilder()
            ..update(updates))
          ._build();

  _$Gsend_messageData_sendMessage_messageResponseModel_draft._(
      {required this.G__typename,
      required this.id,
      this.parentId,
      required this.contactDetails,
      required this.draftRecipients,
      required this.date,
      required this.content,
      required this.subject,
      required this.read,
      required this.remainSizeFiles,
      required this.recipients,
      required this.files})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gsend_messageData_sendMessage_messageResponseModel_draft',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'Gsend_messageData_sendMessage_messageResponseModel_draft', 'id');
    BuiltValueNullFieldError.checkNotNull(
        contactDetails,
        r'Gsend_messageData_sendMessage_messageResponseModel_draft',
        'contactDetails');
    BuiltValueNullFieldError.checkNotNull(
        draftRecipients,
        r'Gsend_messageData_sendMessage_messageResponseModel_draft',
        'draftRecipients');
    BuiltValueNullFieldError.checkNotNull(date,
        r'Gsend_messageData_sendMessage_messageResponseModel_draft', 'date');
    BuiltValueNullFieldError.checkNotNull(content,
        r'Gsend_messageData_sendMessage_messageResponseModel_draft', 'content');
    BuiltValueNullFieldError.checkNotNull(subject,
        r'Gsend_messageData_sendMessage_messageResponseModel_draft', 'subject');
    BuiltValueNullFieldError.checkNotNull(read,
        r'Gsend_messageData_sendMessage_messageResponseModel_draft', 'read');
    BuiltValueNullFieldError.checkNotNull(
        remainSizeFiles,
        r'Gsend_messageData_sendMessage_messageResponseModel_draft',
        'remainSizeFiles');
    BuiltValueNullFieldError.checkNotNull(
        recipients,
        r'Gsend_messageData_sendMessage_messageResponseModel_draft',
        'recipients');
    BuiltValueNullFieldError.checkNotNull(files,
        r'Gsend_messageData_sendMessage_messageResponseModel_draft', 'files');
  }

  @override
  Gsend_messageData_sendMessage_messageResponseModel_draft rebuild(
          void Function(
                  Gsend_messageData_sendMessage_messageResponseModel_draftBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gsend_messageData_sendMessage_messageResponseModel_draftBuilder toBuilder() =>
      new Gsend_messageData_sendMessage_messageResponseModel_draftBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gsend_messageData_sendMessage_messageResponseModel_draft &&
        G__typename == other.G__typename &&
        id == other.id &&
        parentId == other.parentId &&
        contactDetails == other.contactDetails &&
        draftRecipients == other.draftRecipients &&
        date == other.date &&
        content == other.content &&
        subject == other.subject &&
        read == other.read &&
        remainSizeFiles == other.remainSizeFiles &&
        recipients == other.recipients &&
        files == other.files;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, parentId.hashCode);
    _$hash = $jc(_$hash, contactDetails.hashCode);
    _$hash = $jc(_$hash, draftRecipients.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jc(_$hash, subject.hashCode);
    _$hash = $jc(_$hash, read.hashCode);
    _$hash = $jc(_$hash, remainSizeFiles.hashCode);
    _$hash = $jc(_$hash, recipients.hashCode);
    _$hash = $jc(_$hash, files.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gsend_messageData_sendMessage_messageResponseModel_draft')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('parentId', parentId)
          ..add('contactDetails', contactDetails)
          ..add('draftRecipients', draftRecipients)
          ..add('date', date)
          ..add('content', content)
          ..add('subject', subject)
          ..add('read', read)
          ..add('remainSizeFiles', remainSizeFiles)
          ..add('recipients', recipients)
          ..add('files', files))
        .toString();
  }
}

class Gsend_messageData_sendMessage_messageResponseModel_draftBuilder
    implements
        Builder<Gsend_messageData_sendMessage_messageResponseModel_draft,
            Gsend_messageData_sendMessage_messageResponseModel_draftBuilder> {
  _$Gsend_messageData_sendMessage_messageResponseModel_draft? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _parentId;
  String? get parentId => _$this._parentId;
  set parentId(String? parentId) => _$this._parentId = parentId;

  ListBuilder<
          Gsend_messageData_sendMessage_messageResponseModel_draft_contactDetails>?
      _contactDetails;
  ListBuilder<
          Gsend_messageData_sendMessage_messageResponseModel_draft_contactDetails>
      get contactDetails => _$this._contactDetails ??= new ListBuilder<
          Gsend_messageData_sendMessage_messageResponseModel_draft_contactDetails>();
  set contactDetails(
          ListBuilder<
                  Gsend_messageData_sendMessage_messageResponseModel_draft_contactDetails>?
              contactDetails) =>
      _$this._contactDetails = contactDetails;

  Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipientsBuilder?
      _draftRecipients;
  Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipientsBuilder
      get draftRecipients => _$this._draftRecipients ??=
          new Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipientsBuilder();
  set draftRecipients(
          Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipientsBuilder?
              draftRecipients) =>
      _$this._draftRecipients = draftRecipients;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  String? _subject;
  String? get subject => _$this._subject;
  set subject(String? subject) => _$this._subject = subject;

  bool? _read;
  bool? get read => _$this._read;
  set read(bool? read) => _$this._read = read;

  double? _remainSizeFiles;
  double? get remainSizeFiles => _$this._remainSizeFiles;
  set remainSizeFiles(double? remainSizeFiles) =>
      _$this._remainSizeFiles = remainSizeFiles;

  ListBuilder<String>? _recipients;
  ListBuilder<String> get recipients =>
      _$this._recipients ??= new ListBuilder<String>();
  set recipients(ListBuilder<String>? recipients) =>
      _$this._recipients = recipients;

  ListBuilder<Gsend_messageData_sendMessage_messageResponseModel_draft_files>?
      _files;
  ListBuilder<Gsend_messageData_sendMessage_messageResponseModel_draft_files>
      get files => _$this._files ??= new ListBuilder<
          Gsend_messageData_sendMessage_messageResponseModel_draft_files>();
  set files(
          ListBuilder<
                  Gsend_messageData_sendMessage_messageResponseModel_draft_files>?
              files) =>
      _$this._files = files;

  Gsend_messageData_sendMessage_messageResponseModel_draftBuilder() {
    Gsend_messageData_sendMessage_messageResponseModel_draft._initializeBuilder(
        this);
  }

  Gsend_messageData_sendMessage_messageResponseModel_draftBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _parentId = $v.parentId;
      _contactDetails = $v.contactDetails.toBuilder();
      _draftRecipients = $v.draftRecipients.toBuilder();
      _date = $v.date;
      _content = $v.content;
      _subject = $v.subject;
      _read = $v.read;
      _remainSizeFiles = $v.remainSizeFiles;
      _recipients = $v.recipients.toBuilder();
      _files = $v.files.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gsend_messageData_sendMessage_messageResponseModel_draft other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gsend_messageData_sendMessage_messageResponseModel_draft;
  }

  @override
  void update(
      void Function(
              Gsend_messageData_sendMessage_messageResponseModel_draftBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gsend_messageData_sendMessage_messageResponseModel_draft build() => _build();

  _$Gsend_messageData_sendMessage_messageResponseModel_draft _build() {
    _$Gsend_messageData_sendMessage_messageResponseModel_draft _$result;
    try {
      _$result = _$v ??
          new _$Gsend_messageData_sendMessage_messageResponseModel_draft._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gsend_messageData_sendMessage_messageResponseModel_draft', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'Gsend_messageData_sendMessage_messageResponseModel_draft', 'id'),
              parentId: parentId,
              contactDetails: contactDetails.build(),
              draftRecipients: draftRecipients.build(),
              date: BuiltValueNullFieldError.checkNotNull(
                  date, r'Gsend_messageData_sendMessage_messageResponseModel_draft', 'date'),
              content: BuiltValueNullFieldError.checkNotNull(
                  content, r'Gsend_messageData_sendMessage_messageResponseModel_draft', 'content'),
              subject: BuiltValueNullFieldError.checkNotNull(
                  subject, r'Gsend_messageData_sendMessage_messageResponseModel_draft', 'subject'),
              read: BuiltValueNullFieldError.checkNotNull(
                  read, r'Gsend_messageData_sendMessage_messageResponseModel_draft', 'read'),
              remainSizeFiles: BuiltValueNullFieldError.checkNotNull(
                  remainSizeFiles, r'Gsend_messageData_sendMessage_messageResponseModel_draft', 'remainSizeFiles'),
              recipients: recipients.build(),
              files: files.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'contactDetails';
        contactDetails.build();
        _$failedField = 'draftRecipients';
        draftRecipients.build();

        _$failedField = 'recipients';
        recipients.build();
        _$failedField = 'files';
        files.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gsend_messageData_sendMessage_messageResponseModel_draft',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gsend_messageData_sendMessage_messageResponseModel_draft_contactDetails
    extends Gsend_messageData_sendMessage_messageResponseModel_draft_contactDetails {
  @override
  final String G__typename;
  @override
  final String name;
  @override
  final String type;
  @override
  final String? idNat;
  @override
  final String? typeBal;

  factory _$Gsend_messageData_sendMessage_messageResponseModel_draft_contactDetails(
          [void Function(
                  Gsend_messageData_sendMessage_messageResponseModel_draft_contactDetailsBuilder)?
              updates]) =>
      (new Gsend_messageData_sendMessage_messageResponseModel_draft_contactDetailsBuilder()
            ..update(updates))
          ._build();

  _$Gsend_messageData_sendMessage_messageResponseModel_draft_contactDetails._(
      {required this.G__typename,
      required this.name,
      required this.type,
      this.idNat,
      this.typeBal})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gsend_messageData_sendMessage_messageResponseModel_draft_contactDetails',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name,
        r'Gsend_messageData_sendMessage_messageResponseModel_draft_contactDetails',
        'name');
    BuiltValueNullFieldError.checkNotNull(
        type,
        r'Gsend_messageData_sendMessage_messageResponseModel_draft_contactDetails',
        'type');
  }

  @override
  Gsend_messageData_sendMessage_messageResponseModel_draft_contactDetails rebuild(
          void Function(
                  Gsend_messageData_sendMessage_messageResponseModel_draft_contactDetailsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gsend_messageData_sendMessage_messageResponseModel_draft_contactDetailsBuilder
      toBuilder() =>
          new Gsend_messageData_sendMessage_messageResponseModel_draft_contactDetailsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gsend_messageData_sendMessage_messageResponseModel_draft_contactDetails &&
        G__typename == other.G__typename &&
        name == other.name &&
        type == other.type &&
        idNat == other.idNat &&
        typeBal == other.typeBal;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, idNat.hashCode);
    _$hash = $jc(_$hash, typeBal.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gsend_messageData_sendMessage_messageResponseModel_draft_contactDetails')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('type', type)
          ..add('idNat', idNat)
          ..add('typeBal', typeBal))
        .toString();
  }
}

class Gsend_messageData_sendMessage_messageResponseModel_draft_contactDetailsBuilder
    implements
        Builder<
            Gsend_messageData_sendMessage_messageResponseModel_draft_contactDetails,
            Gsend_messageData_sendMessage_messageResponseModel_draft_contactDetailsBuilder> {
  _$Gsend_messageData_sendMessage_messageResponseModel_draft_contactDetails?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _idNat;
  String? get idNat => _$this._idNat;
  set idNat(String? idNat) => _$this._idNat = idNat;

  String? _typeBal;
  String? get typeBal => _$this._typeBal;
  set typeBal(String? typeBal) => _$this._typeBal = typeBal;

  Gsend_messageData_sendMessage_messageResponseModel_draft_contactDetailsBuilder() {
    Gsend_messageData_sendMessage_messageResponseModel_draft_contactDetails
        ._initializeBuilder(this);
  }

  Gsend_messageData_sendMessage_messageResponseModel_draft_contactDetailsBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _type = $v.type;
      _idNat = $v.idNat;
      _typeBal = $v.typeBal;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gsend_messageData_sendMessage_messageResponseModel_draft_contactDetails
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gsend_messageData_sendMessage_messageResponseModel_draft_contactDetails;
  }

  @override
  void update(
      void Function(
              Gsend_messageData_sendMessage_messageResponseModel_draft_contactDetailsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gsend_messageData_sendMessage_messageResponseModel_draft_contactDetails
      build() => _build();

  _$Gsend_messageData_sendMessage_messageResponseModel_draft_contactDetails
      _build() {
    final _$result = _$v ??
        new _$Gsend_messageData_sendMessage_messageResponseModel_draft_contactDetails
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gsend_messageData_sendMessage_messageResponseModel_draft_contactDetails',
                'G__typename'),
            name: BuiltValueNullFieldError.checkNotNull(
                name,
                r'Gsend_messageData_sendMessage_messageResponseModel_draft_contactDetails',
                'name'),
            type: BuiltValueNullFieldError.checkNotNull(
                type,
                r'Gsend_messageData_sendMessage_messageResponseModel_draft_contactDetails',
                'type'),
            idNat: idNat,
            typeBal: typeBal);
    replace(_$result);
    return _$result;
  }
}

class _$Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients
    extends Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients {
  @override
  final String G__typename;
  @override
  final BuiltList<
      Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients_to> to;

  factory _$Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients(
          [void Function(
                  Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipientsBuilder)?
              updates]) =>
      (new Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipientsBuilder()
            ..update(updates))
          ._build();

  _$Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients._(
      {required this.G__typename, required this.to})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        to,
        r'Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients',
        'to');
  }

  @override
  Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients rebuild(
          void Function(
                  Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipientsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipientsBuilder
      toBuilder() =>
          new Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipientsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients &&
        G__typename == other.G__typename &&
        to == other.to;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients')
          ..add('G__typename', G__typename)
          ..add('to', to))
        .toString();
  }
}

class Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipientsBuilder
    implements
        Builder<
            Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients,
            Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipientsBuilder> {
  _$Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<
          Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients_to>?
      _to;
  ListBuilder<
          Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients_to>
      get to => _$this._to ??= new ListBuilder<
          Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients_to>();
  set to(
          ListBuilder<
                  Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients_to>?
              to) =>
      _$this._to = to;

  Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipientsBuilder() {
    Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients
        ._initializeBuilder(this);
  }

  Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipientsBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _to = $v.to.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients;
  }

  @override
  void update(
      void Function(
              Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipientsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients
      build() => _build();

  _$Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients
      _build() {
    _$Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients
        _$result;
    try {
      _$result = _$v ??
          new _$Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients
              ._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients',
                  'G__typename'),
              to: to.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'to';
        to.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients_to
    extends Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients_to {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String fullName;

  factory _$Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients_to(
          [void Function(
                  Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients_toBuilder)?
              updates]) =>
      (new Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients_toBuilder()
            ..update(updates))
          ._build();

  _$Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients_to._(
      {required this.G__typename, required this.id, required this.fullName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients_to',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients_to',
        'id');
    BuiltValueNullFieldError.checkNotNull(
        fullName,
        r'Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients_to',
        'fullName');
  }

  @override
  Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients_to
      rebuild(
              void Function(
                      Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients_toBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients_toBuilder
      toBuilder() =>
          new Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients_toBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients_to &&
        G__typename == other.G__typename &&
        id == other.id &&
        fullName == other.fullName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, fullName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients_to')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('fullName', fullName))
        .toString();
  }
}

class Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients_toBuilder
    implements
        Builder<
            Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients_to,
            Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients_toBuilder> {
  _$Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients_to?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients_toBuilder() {
    Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients_to
        ._initializeBuilder(this);
  }

  Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients_toBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _fullName = $v.fullName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients_to
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients_to;
  }

  @override
  void update(
      void Function(
              Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients_toBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients_to
      build() => _build();

  _$Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients_to
      _build() {
    final _$result = _$v ??
        new _$Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients_to
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients_to',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id,
                r'Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients_to',
                'id'),
            fullName: BuiltValueNullFieldError.checkNotNull(
                fullName,
                r'Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients_to',
                'fullName'));
    replace(_$result);
    return _$result;
  }
}

class _$Gsend_messageData_sendMessage_messageResponseModel_draft_files
    extends Gsend_messageData_sendMessage_messageResponseModel_draft_files {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final double size;

  factory _$Gsend_messageData_sendMessage_messageResponseModel_draft_files(
          [void Function(
                  Gsend_messageData_sendMessage_messageResponseModel_draft_filesBuilder)?
              updates]) =>
      (new Gsend_messageData_sendMessage_messageResponseModel_draft_filesBuilder()
            ..update(updates))
          ._build();

  _$Gsend_messageData_sendMessage_messageResponseModel_draft_files._(
      {required this.G__typename,
      required this.id,
      required this.name,
      required this.size})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gsend_messageData_sendMessage_messageResponseModel_draft_files',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'Gsend_messageData_sendMessage_messageResponseModel_draft_files',
        'id');
    BuiltValueNullFieldError.checkNotNull(
        name,
        r'Gsend_messageData_sendMessage_messageResponseModel_draft_files',
        'name');
    BuiltValueNullFieldError.checkNotNull(
        size,
        r'Gsend_messageData_sendMessage_messageResponseModel_draft_files',
        'size');
  }

  @override
  Gsend_messageData_sendMessage_messageResponseModel_draft_files rebuild(
          void Function(
                  Gsend_messageData_sendMessage_messageResponseModel_draft_filesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gsend_messageData_sendMessage_messageResponseModel_draft_filesBuilder
      toBuilder() =>
          new Gsend_messageData_sendMessage_messageResponseModel_draft_filesBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gsend_messageData_sendMessage_messageResponseModel_draft_files &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        size == other.size;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, size.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gsend_messageData_sendMessage_messageResponseModel_draft_files')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('size', size))
        .toString();
  }
}

class Gsend_messageData_sendMessage_messageResponseModel_draft_filesBuilder
    implements
        Builder<Gsend_messageData_sendMessage_messageResponseModel_draft_files,
            Gsend_messageData_sendMessage_messageResponseModel_draft_filesBuilder> {
  _$Gsend_messageData_sendMessage_messageResponseModel_draft_files? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  double? _size;
  double? get size => _$this._size;
  set size(double? size) => _$this._size = size;

  Gsend_messageData_sendMessage_messageResponseModel_draft_filesBuilder() {
    Gsend_messageData_sendMessage_messageResponseModel_draft_files
        ._initializeBuilder(this);
  }

  Gsend_messageData_sendMessage_messageResponseModel_draft_filesBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _size = $v.size;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gsend_messageData_sendMessage_messageResponseModel_draft_files other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gsend_messageData_sendMessage_messageResponseModel_draft_files;
  }

  @override
  void update(
      void Function(
              Gsend_messageData_sendMessage_messageResponseModel_draft_filesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gsend_messageData_sendMessage_messageResponseModel_draft_files build() =>
      _build();

  _$Gsend_messageData_sendMessage_messageResponseModel_draft_files _build() {
    final _$result = _$v ??
        new _$Gsend_messageData_sendMessage_messageResponseModel_draft_files._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gsend_messageData_sendMessage_messageResponseModel_draft_files',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(id,
                r'Gsend_messageData_sendMessage_messageResponseModel_draft_files', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name,
                r'Gsend_messageData_sendMessage_messageResponseModel_draft_files',
                'name'),
            size: BuiltValueNullFieldError.checkNotNull(
                size,
                r'Gsend_messageData_sendMessage_messageResponseModel_draft_files',
                'size'));
    replace(_$result);
    return _$result;
  }
}

class _$Gsend_messageData_sendMessage_messageResponseModel_responseTemplate
    extends Gsend_messageData_sendMessage_messageResponseModel_responseTemplate {
  @override
  final String G__typename;
  @override
  final String? conversationFinalizedBy;
  @override
  final String messageId;
  @override
  final BuiltList<_i4.GReplyTypeEnum> replyOptions;
  @override
  final String conversationId;
  @override
  final String from;
  @override
  final String to;
  @override
  final BuiltList<String>? recipients;
  @override
  final double remainSizeFiles;

  factory _$Gsend_messageData_sendMessage_messageResponseModel_responseTemplate(
          [void Function(
                  Gsend_messageData_sendMessage_messageResponseModel_responseTemplateBuilder)?
              updates]) =>
      (new Gsend_messageData_sendMessage_messageResponseModel_responseTemplateBuilder()
            ..update(updates))
          ._build();

  _$Gsend_messageData_sendMessage_messageResponseModel_responseTemplate._(
      {required this.G__typename,
      this.conversationFinalizedBy,
      required this.messageId,
      required this.replyOptions,
      required this.conversationId,
      required this.from,
      required this.to,
      this.recipients,
      required this.remainSizeFiles})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gsend_messageData_sendMessage_messageResponseModel_responseTemplate',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        messageId,
        r'Gsend_messageData_sendMessage_messageResponseModel_responseTemplate',
        'messageId');
    BuiltValueNullFieldError.checkNotNull(
        replyOptions,
        r'Gsend_messageData_sendMessage_messageResponseModel_responseTemplate',
        'replyOptions');
    BuiltValueNullFieldError.checkNotNull(
        conversationId,
        r'Gsend_messageData_sendMessage_messageResponseModel_responseTemplate',
        'conversationId');
    BuiltValueNullFieldError.checkNotNull(
        from,
        r'Gsend_messageData_sendMessage_messageResponseModel_responseTemplate',
        'from');
    BuiltValueNullFieldError.checkNotNull(
        to,
        r'Gsend_messageData_sendMessage_messageResponseModel_responseTemplate',
        'to');
    BuiltValueNullFieldError.checkNotNull(
        remainSizeFiles,
        r'Gsend_messageData_sendMessage_messageResponseModel_responseTemplate',
        'remainSizeFiles');
  }

  @override
  Gsend_messageData_sendMessage_messageResponseModel_responseTemplate rebuild(
          void Function(
                  Gsend_messageData_sendMessage_messageResponseModel_responseTemplateBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gsend_messageData_sendMessage_messageResponseModel_responseTemplateBuilder
      toBuilder() =>
          new Gsend_messageData_sendMessage_messageResponseModel_responseTemplateBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gsend_messageData_sendMessage_messageResponseModel_responseTemplate &&
        G__typename == other.G__typename &&
        conversationFinalizedBy == other.conversationFinalizedBy &&
        messageId == other.messageId &&
        replyOptions == other.replyOptions &&
        conversationId == other.conversationId &&
        from == other.from &&
        to == other.to &&
        recipients == other.recipients &&
        remainSizeFiles == other.remainSizeFiles;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, conversationFinalizedBy.hashCode);
    _$hash = $jc(_$hash, messageId.hashCode);
    _$hash = $jc(_$hash, replyOptions.hashCode);
    _$hash = $jc(_$hash, conversationId.hashCode);
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jc(_$hash, recipients.hashCode);
    _$hash = $jc(_$hash, remainSizeFiles.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gsend_messageData_sendMessage_messageResponseModel_responseTemplate')
          ..add('G__typename', G__typename)
          ..add('conversationFinalizedBy', conversationFinalizedBy)
          ..add('messageId', messageId)
          ..add('replyOptions', replyOptions)
          ..add('conversationId', conversationId)
          ..add('from', from)
          ..add('to', to)
          ..add('recipients', recipients)
          ..add('remainSizeFiles', remainSizeFiles))
        .toString();
  }
}

class Gsend_messageData_sendMessage_messageResponseModel_responseTemplateBuilder
    implements
        Builder<
            Gsend_messageData_sendMessage_messageResponseModel_responseTemplate,
            Gsend_messageData_sendMessage_messageResponseModel_responseTemplateBuilder> {
  _$Gsend_messageData_sendMessage_messageResponseModel_responseTemplate? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _conversationFinalizedBy;
  String? get conversationFinalizedBy => _$this._conversationFinalizedBy;
  set conversationFinalizedBy(String? conversationFinalizedBy) =>
      _$this._conversationFinalizedBy = conversationFinalizedBy;

  String? _messageId;
  String? get messageId => _$this._messageId;
  set messageId(String? messageId) => _$this._messageId = messageId;

  ListBuilder<_i4.GReplyTypeEnum>? _replyOptions;
  ListBuilder<_i4.GReplyTypeEnum> get replyOptions =>
      _$this._replyOptions ??= new ListBuilder<_i4.GReplyTypeEnum>();
  set replyOptions(ListBuilder<_i4.GReplyTypeEnum>? replyOptions) =>
      _$this._replyOptions = replyOptions;

  String? _conversationId;
  String? get conversationId => _$this._conversationId;
  set conversationId(String? conversationId) =>
      _$this._conversationId = conversationId;

  String? _from;
  String? get from => _$this._from;
  set from(String? from) => _$this._from = from;

  String? _to;
  String? get to => _$this._to;
  set to(String? to) => _$this._to = to;

  ListBuilder<String>? _recipients;
  ListBuilder<String> get recipients =>
      _$this._recipients ??= new ListBuilder<String>();
  set recipients(ListBuilder<String>? recipients) =>
      _$this._recipients = recipients;

  double? _remainSizeFiles;
  double? get remainSizeFiles => _$this._remainSizeFiles;
  set remainSizeFiles(double? remainSizeFiles) =>
      _$this._remainSizeFiles = remainSizeFiles;

  Gsend_messageData_sendMessage_messageResponseModel_responseTemplateBuilder() {
    Gsend_messageData_sendMessage_messageResponseModel_responseTemplate
        ._initializeBuilder(this);
  }

  Gsend_messageData_sendMessage_messageResponseModel_responseTemplateBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _conversationFinalizedBy = $v.conversationFinalizedBy;
      _messageId = $v.messageId;
      _replyOptions = $v.replyOptions.toBuilder();
      _conversationId = $v.conversationId;
      _from = $v.from;
      _to = $v.to;
      _recipients = $v.recipients?.toBuilder();
      _remainSizeFiles = $v.remainSizeFiles;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gsend_messageData_sendMessage_messageResponseModel_responseTemplate
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gsend_messageData_sendMessage_messageResponseModel_responseTemplate;
  }

  @override
  void update(
      void Function(
              Gsend_messageData_sendMessage_messageResponseModel_responseTemplateBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gsend_messageData_sendMessage_messageResponseModel_responseTemplate build() =>
      _build();

  _$Gsend_messageData_sendMessage_messageResponseModel_responseTemplate
      _build() {
    _$Gsend_messageData_sendMessage_messageResponseModel_responseTemplate
        _$result;
    try {
      _$result = _$v ??
          new _$Gsend_messageData_sendMessage_messageResponseModel_responseTemplate._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gsend_messageData_sendMessage_messageResponseModel_responseTemplate', 'G__typename'),
              conversationFinalizedBy: conversationFinalizedBy,
              messageId: BuiltValueNullFieldError.checkNotNull(
                  messageId, r'Gsend_messageData_sendMessage_messageResponseModel_responseTemplate', 'messageId'),
              replyOptions: replyOptions.build(),
              conversationId: BuiltValueNullFieldError.checkNotNull(
                  conversationId,
                  r'Gsend_messageData_sendMessage_messageResponseModel_responseTemplate',
                  'conversationId'),
              from: BuiltValueNullFieldError.checkNotNull(
                  from, r'Gsend_messageData_sendMessage_messageResponseModel_responseTemplate', 'from'),
              to: BuiltValueNullFieldError.checkNotNull(
                  to, r'Gsend_messageData_sendMessage_messageResponseModel_responseTemplate', 'to'),
              recipients: _recipients?.build(),
              remainSizeFiles: BuiltValueNullFieldError.checkNotNull(
                  remainSizeFiles,
                  r'Gsend_messageData_sendMessage_messageResponseModel_responseTemplate',
                  'remainSizeFiles'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'replyOptions';
        replyOptions.build();

        _$failedField = 'recipients';
        _recipients?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gsend_messageData_sendMessage_messageResponseModel_responseTemplate',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
