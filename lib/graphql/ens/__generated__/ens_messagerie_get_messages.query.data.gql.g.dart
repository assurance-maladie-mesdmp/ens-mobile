// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_messagerie_get_messages.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_messagesData> _$ggetMessagesDataSerializer =
    new _$Gget_messagesDataSerializer();
Serializer<Gget_messagesData_getMessages>
    _$ggetMessagesDataGetMessagesSerializer =
    new _$Gget_messagesData_getMessagesSerializer();
Serializer<Gget_messagesData_getMessages_messages>
    _$ggetMessagesDataGetMessagesMessagesSerializer =
    new _$Gget_messagesData_getMessages_messagesSerializer();
Serializer<Gget_messagesData_getMessages_messages_contactDetails>
    _$ggetMessagesDataGetMessagesMessagesContactDetailsSerializer =
    new _$Gget_messagesData_getMessages_messages_contactDetailsSerializer();
Serializer<Gget_messagesData_getMessages_messages_files>
    _$ggetMessagesDataGetMessagesMessagesFilesSerializer =
    new _$Gget_messagesData_getMessages_messages_filesSerializer();
Serializer<Gget_messagesData_getMessages_draft>
    _$ggetMessagesDataGetMessagesDraftSerializer =
    new _$Gget_messagesData_getMessages_draftSerializer();
Serializer<Gget_messagesData_getMessages_draft_contactDetails>
    _$ggetMessagesDataGetMessagesDraftContactDetailsSerializer =
    new _$Gget_messagesData_getMessages_draft_contactDetailsSerializer();
Serializer<Gget_messagesData_getMessages_draft_draftRecipients>
    _$ggetMessagesDataGetMessagesDraftDraftRecipientsSerializer =
    new _$Gget_messagesData_getMessages_draft_draftRecipientsSerializer();
Serializer<Gget_messagesData_getMessages_draft_draftRecipients_to>
    _$ggetMessagesDataGetMessagesDraftDraftRecipientsToSerializer =
    new _$Gget_messagesData_getMessages_draft_draftRecipients_toSerializer();
Serializer<Gget_messagesData_getMessages_draft_files>
    _$ggetMessagesDataGetMessagesDraftFilesSerializer =
    new _$Gget_messagesData_getMessages_draft_filesSerializer();
Serializer<Gget_messagesData_getMessages_responseTemplate>
    _$ggetMessagesDataGetMessagesResponseTemplateSerializer =
    new _$Gget_messagesData_getMessages_responseTemplateSerializer();

class _$Gget_messagesDataSerializer
    implements StructuredSerializer<Gget_messagesData> {
  @override
  final Iterable<Type> types = const [Gget_messagesData, _$Gget_messagesData];
  @override
  final String wireName = 'Gget_messagesData';

  @override
  Iterable<Object?> serialize(Serializers serializers, Gget_messagesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'getMessages',
      serializers.serialize(object.getMessages,
          specifiedType: const FullType(Gget_messagesData_getMessages)),
    ];

    return result;
  }

  @override
  Gget_messagesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_messagesDataBuilder();

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
        case 'getMessages':
          result.getMessages.replace(serializers.deserialize(value,
                  specifiedType: const FullType(Gget_messagesData_getMessages))!
              as Gget_messagesData_getMessages);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_messagesData_getMessagesSerializer
    implements StructuredSerializer<Gget_messagesData_getMessages> {
  @override
  final Iterable<Type> types = const [
    Gget_messagesData_getMessages,
    _$Gget_messagesData_getMessages
  ];
  @override
  final String wireName = 'Gget_messagesData_getMessages';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_messagesData_getMessages object,
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
          specifiedType:
              const FullType(Gget_messagesData_getMessages_responseTemplate)),
    ];
    Object? value;
    value = object.messages;
    if (value != null) {
      result
        ..add('messages')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(Gget_messagesData_getMessages_messages)
            ])));
    }
    value = object.draft;
    if (value != null) {
      result
        ..add('draft')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(Gget_messagesData_getMessages_draft)));
    }
    return result;
  }

  @override
  Gget_messagesData_getMessages deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_messagesData_getMessagesBuilder();

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
                const FullType(Gget_messagesData_getMessages_messages)
              ]))! as BuiltList<Object?>);
          break;
        case 'draft':
          result.draft.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(Gget_messagesData_getMessages_draft))!
              as Gget_messagesData_getMessages_draft);
          break;
        case 'responseTemplate':
          result.responseTemplate.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_messagesData_getMessages_responseTemplate))!
              as Gget_messagesData_getMessages_responseTemplate);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_messagesData_getMessages_messagesSerializer
    implements StructuredSerializer<Gget_messagesData_getMessages_messages> {
  @override
  final Iterable<Type> types = const [
    Gget_messagesData_getMessages_messages,
    _$Gget_messagesData_getMessages_messages
  ];
  @override
  final String wireName = 'Gget_messagesData_getMessages_messages';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_messagesData_getMessages_messages object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'contactDetails',
      serializers.serialize(object.contactDetails,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                Gget_messagesData_getMessages_messages_contactDetails)
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
            const FullType(Gget_messagesData_getMessages_messages_files)
          ])),
    ];

    return result;
  }

  @override
  Gget_messagesData_getMessages_messages deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_messagesData_getMessages_messagesBuilder();

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
                    Gget_messagesData_getMessages_messages_contactDetails)
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
                const FullType(Gget_messagesData_getMessages_messages_files)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_messagesData_getMessages_messages_contactDetailsSerializer
    implements
        StructuredSerializer<
            Gget_messagesData_getMessages_messages_contactDetails> {
  @override
  final Iterable<Type> types = const [
    Gget_messagesData_getMessages_messages_contactDetails,
    _$Gget_messagesData_getMessages_messages_contactDetails
  ];
  @override
  final String wireName =
      'Gget_messagesData_getMessages_messages_contactDetails';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_messagesData_getMessages_messages_contactDetails object,
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
  Gget_messagesData_getMessages_messages_contactDetails deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_messagesData_getMessages_messages_contactDetailsBuilder();

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

class _$Gget_messagesData_getMessages_messages_filesSerializer
    implements
        StructuredSerializer<Gget_messagesData_getMessages_messages_files> {
  @override
  final Iterable<Type> types = const [
    Gget_messagesData_getMessages_messages_files,
    _$Gget_messagesData_getMessages_messages_files
  ];
  @override
  final String wireName = 'Gget_messagesData_getMessages_messages_files';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_messagesData_getMessages_messages_files object,
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
  Gget_messagesData_getMessages_messages_files deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_messagesData_getMessages_messages_filesBuilder();

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

class _$Gget_messagesData_getMessages_draftSerializer
    implements StructuredSerializer<Gget_messagesData_getMessages_draft> {
  @override
  final Iterable<Type> types = const [
    Gget_messagesData_getMessages_draft,
    _$Gget_messagesData_getMessages_draft
  ];
  @override
  final String wireName = 'Gget_messagesData_getMessages_draft';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_messagesData_getMessages_draft object,
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
            const FullType(Gget_messagesData_getMessages_draft_contactDetails)
          ])),
      'draftRecipients',
      serializers.serialize(object.draftRecipients,
          specifiedType: const FullType(
              Gget_messagesData_getMessages_draft_draftRecipients)),
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
            const FullType(Gget_messagesData_getMessages_draft_files)
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
  Gget_messagesData_getMessages_draft deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_messagesData_getMessages_draftBuilder();

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
                    Gget_messagesData_getMessages_draft_contactDetails)
              ]))! as BuiltList<Object?>);
          break;
        case 'draftRecipients':
          result.draftRecipients.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_messagesData_getMessages_draft_draftRecipients))!
              as Gget_messagesData_getMessages_draft_draftRecipients);
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
                const FullType(Gget_messagesData_getMessages_draft_files)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_messagesData_getMessages_draft_contactDetailsSerializer
    implements
        StructuredSerializer<
            Gget_messagesData_getMessages_draft_contactDetails> {
  @override
  final Iterable<Type> types = const [
    Gget_messagesData_getMessages_draft_contactDetails,
    _$Gget_messagesData_getMessages_draft_contactDetails
  ];
  @override
  final String wireName = 'Gget_messagesData_getMessages_draft_contactDetails';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_messagesData_getMessages_draft_contactDetails object,
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
  Gget_messagesData_getMessages_draft_contactDetails deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_messagesData_getMessages_draft_contactDetailsBuilder();

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

class _$Gget_messagesData_getMessages_draft_draftRecipientsSerializer
    implements
        StructuredSerializer<
            Gget_messagesData_getMessages_draft_draftRecipients> {
  @override
  final Iterable<Type> types = const [
    Gget_messagesData_getMessages_draft_draftRecipients,
    _$Gget_messagesData_getMessages_draft_draftRecipients
  ];
  @override
  final String wireName = 'Gget_messagesData_getMessages_draft_draftRecipients';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_messagesData_getMessages_draft_draftRecipients object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'to',
      serializers.serialize(object.to,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                Gget_messagesData_getMessages_draft_draftRecipients_to)
          ])),
    ];

    return result;
  }

  @override
  Gget_messagesData_getMessages_draft_draftRecipients deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_messagesData_getMessages_draft_draftRecipientsBuilder();

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
                    Gget_messagesData_getMessages_draft_draftRecipients_to)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_messagesData_getMessages_draft_draftRecipients_toSerializer
    implements
        StructuredSerializer<
            Gget_messagesData_getMessages_draft_draftRecipients_to> {
  @override
  final Iterable<Type> types = const [
    Gget_messagesData_getMessages_draft_draftRecipients_to,
    _$Gget_messagesData_getMessages_draft_draftRecipients_to
  ];
  @override
  final String wireName =
      'Gget_messagesData_getMessages_draft_draftRecipients_to';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_messagesData_getMessages_draft_draftRecipients_to object,
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
  Gget_messagesData_getMessages_draft_draftRecipients_to deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_messagesData_getMessages_draft_draftRecipients_toBuilder();

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

class _$Gget_messagesData_getMessages_draft_filesSerializer
    implements StructuredSerializer<Gget_messagesData_getMessages_draft_files> {
  @override
  final Iterable<Type> types = const [
    Gget_messagesData_getMessages_draft_files,
    _$Gget_messagesData_getMessages_draft_files
  ];
  @override
  final String wireName = 'Gget_messagesData_getMessages_draft_files';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_messagesData_getMessages_draft_files object,
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
  Gget_messagesData_getMessages_draft_files deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_messagesData_getMessages_draft_filesBuilder();

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

class _$Gget_messagesData_getMessages_responseTemplateSerializer
    implements
        StructuredSerializer<Gget_messagesData_getMessages_responseTemplate> {
  @override
  final Iterable<Type> types = const [
    Gget_messagesData_getMessages_responseTemplate,
    _$Gget_messagesData_getMessages_responseTemplate
  ];
  @override
  final String wireName = 'Gget_messagesData_getMessages_responseTemplate';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_messagesData_getMessages_responseTemplate object,
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
              BuiltList, const [const FullType(_i3.GReplyTypeEnum)])),
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
  Gget_messagesData_getMessages_responseTemplate deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_messagesData_getMessages_responseTemplateBuilder();

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
                      BuiltList, const [const FullType(_i3.GReplyTypeEnum)]))!
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

class _$Gget_messagesData extends Gget_messagesData {
  @override
  final String G__typename;
  @override
  final Gget_messagesData_getMessages getMessages;

  factory _$Gget_messagesData(
          [void Function(Gget_messagesDataBuilder)? updates]) =>
      (new Gget_messagesDataBuilder()..update(updates))._build();

  _$Gget_messagesData._({required this.G__typename, required this.getMessages})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_messagesData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        getMessages, r'Gget_messagesData', 'getMessages');
  }

  @override
  Gget_messagesData rebuild(void Function(Gget_messagesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_messagesDataBuilder toBuilder() =>
      new Gget_messagesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_messagesData &&
        G__typename == other.G__typename &&
        getMessages == other.getMessages;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getMessages.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_messagesData')
          ..add('G__typename', G__typename)
          ..add('getMessages', getMessages))
        .toString();
  }
}

class Gget_messagesDataBuilder
    implements Builder<Gget_messagesData, Gget_messagesDataBuilder> {
  _$Gget_messagesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_messagesData_getMessagesBuilder? _getMessages;
  Gget_messagesData_getMessagesBuilder get getMessages =>
      _$this._getMessages ??= new Gget_messagesData_getMessagesBuilder();
  set getMessages(Gget_messagesData_getMessagesBuilder? getMessages) =>
      _$this._getMessages = getMessages;

  Gget_messagesDataBuilder() {
    Gget_messagesData._initializeBuilder(this);
  }

  Gget_messagesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getMessages = $v.getMessages.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_messagesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_messagesData;
  }

  @override
  void update(void Function(Gget_messagesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_messagesData build() => _build();

  _$Gget_messagesData _build() {
    _$Gget_messagesData _$result;
    try {
      _$result = _$v ??
          new _$Gget_messagesData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gget_messagesData', 'G__typename'),
              getMessages: getMessages.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getMessages';
        getMessages.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_messagesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_messagesData_getMessages extends Gget_messagesData_getMessages {
  @override
  final String G__typename;
  @override
  final String subject;
  @override
  final bool acknowledge;
  @override
  final BuiltList<Gget_messagesData_getMessages_messages>? messages;
  @override
  final Gget_messagesData_getMessages_draft? draft;
  @override
  final Gget_messagesData_getMessages_responseTemplate responseTemplate;

  factory _$Gget_messagesData_getMessages(
          [void Function(Gget_messagesData_getMessagesBuilder)? updates]) =>
      (new Gget_messagesData_getMessagesBuilder()..update(updates))._build();

  _$Gget_messagesData_getMessages._(
      {required this.G__typename,
      required this.subject,
      required this.acknowledge,
      this.messages,
      this.draft,
      required this.responseTemplate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_messagesData_getMessages', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        subject, r'Gget_messagesData_getMessages', 'subject');
    BuiltValueNullFieldError.checkNotNull(
        acknowledge, r'Gget_messagesData_getMessages', 'acknowledge');
    BuiltValueNullFieldError.checkNotNull(
        responseTemplate, r'Gget_messagesData_getMessages', 'responseTemplate');
  }

  @override
  Gget_messagesData_getMessages rebuild(
          void Function(Gget_messagesData_getMessagesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_messagesData_getMessagesBuilder toBuilder() =>
      new Gget_messagesData_getMessagesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_messagesData_getMessages &&
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
    return (newBuiltValueToStringHelper(r'Gget_messagesData_getMessages')
          ..add('G__typename', G__typename)
          ..add('subject', subject)
          ..add('acknowledge', acknowledge)
          ..add('messages', messages)
          ..add('draft', draft)
          ..add('responseTemplate', responseTemplate))
        .toString();
  }
}

class Gget_messagesData_getMessagesBuilder
    implements
        Builder<Gget_messagesData_getMessages,
            Gget_messagesData_getMessagesBuilder> {
  _$Gget_messagesData_getMessages? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _subject;
  String? get subject => _$this._subject;
  set subject(String? subject) => _$this._subject = subject;

  bool? _acknowledge;
  bool? get acknowledge => _$this._acknowledge;
  set acknowledge(bool? acknowledge) => _$this._acknowledge = acknowledge;

  ListBuilder<Gget_messagesData_getMessages_messages>? _messages;
  ListBuilder<Gget_messagesData_getMessages_messages> get messages =>
      _$this._messages ??=
          new ListBuilder<Gget_messagesData_getMessages_messages>();
  set messages(ListBuilder<Gget_messagesData_getMessages_messages>? messages) =>
      _$this._messages = messages;

  Gget_messagesData_getMessages_draftBuilder? _draft;
  Gget_messagesData_getMessages_draftBuilder get draft =>
      _$this._draft ??= new Gget_messagesData_getMessages_draftBuilder();
  set draft(Gget_messagesData_getMessages_draftBuilder? draft) =>
      _$this._draft = draft;

  Gget_messagesData_getMessages_responseTemplateBuilder? _responseTemplate;
  Gget_messagesData_getMessages_responseTemplateBuilder get responseTemplate =>
      _$this._responseTemplate ??=
          new Gget_messagesData_getMessages_responseTemplateBuilder();
  set responseTemplate(
          Gget_messagesData_getMessages_responseTemplateBuilder?
              responseTemplate) =>
      _$this._responseTemplate = responseTemplate;

  Gget_messagesData_getMessagesBuilder() {
    Gget_messagesData_getMessages._initializeBuilder(this);
  }

  Gget_messagesData_getMessagesBuilder get _$this {
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
  void replace(Gget_messagesData_getMessages other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_messagesData_getMessages;
  }

  @override
  void update(void Function(Gget_messagesData_getMessagesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_messagesData_getMessages build() => _build();

  _$Gget_messagesData_getMessages _build() {
    _$Gget_messagesData_getMessages _$result;
    try {
      _$result = _$v ??
          new _$Gget_messagesData_getMessages._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gget_messagesData_getMessages', 'G__typename'),
              subject: BuiltValueNullFieldError.checkNotNull(
                  subject, r'Gget_messagesData_getMessages', 'subject'),
              acknowledge: BuiltValueNullFieldError.checkNotNull(
                  acknowledge, r'Gget_messagesData_getMessages', 'acknowledge'),
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
            r'Gget_messagesData_getMessages', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_messagesData_getMessages_messages
    extends Gget_messagesData_getMessages_messages {
  @override
  final String G__typename;
  @override
  final BuiltList<Gget_messagesData_getMessages_messages_contactDetails>
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
  final BuiltList<Gget_messagesData_getMessages_messages_files> files;

  factory _$Gget_messagesData_getMessages_messages(
          [void Function(Gget_messagesData_getMessages_messagesBuilder)?
              updates]) =>
      (new Gget_messagesData_getMessages_messagesBuilder()..update(updates))
          ._build();

  _$Gget_messagesData_getMessages_messages._(
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
        G__typename, r'Gget_messagesData_getMessages_messages', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(contactDetails,
        r'Gget_messagesData_getMessages_messages', 'contactDetails');
    BuiltValueNullFieldError.checkNotNull(
        id, r'Gget_messagesData_getMessages_messages', 'id');
    BuiltValueNullFieldError.checkNotNull(
        date, r'Gget_messagesData_getMessages_messages', 'date');
    BuiltValueNullFieldError.checkNotNull(
        content, r'Gget_messagesData_getMessages_messages', 'content');
    BuiltValueNullFieldError.checkNotNull(
        read, r'Gget_messagesData_getMessages_messages', 'read');
    BuiltValueNullFieldError.checkNotNull(
        recipients, r'Gget_messagesData_getMessages_messages', 'recipients');
    BuiltValueNullFieldError.checkNotNull(
        files, r'Gget_messagesData_getMessages_messages', 'files');
  }

  @override
  Gget_messagesData_getMessages_messages rebuild(
          void Function(Gget_messagesData_getMessages_messagesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_messagesData_getMessages_messagesBuilder toBuilder() =>
      new Gget_messagesData_getMessages_messagesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_messagesData_getMessages_messages &&
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
            r'Gget_messagesData_getMessages_messages')
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

class Gget_messagesData_getMessages_messagesBuilder
    implements
        Builder<Gget_messagesData_getMessages_messages,
            Gget_messagesData_getMessages_messagesBuilder> {
  _$Gget_messagesData_getMessages_messages? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<Gget_messagesData_getMessages_messages_contactDetails>?
      _contactDetails;
  ListBuilder<Gget_messagesData_getMessages_messages_contactDetails>
      get contactDetails => _$this._contactDetails ??= new ListBuilder<
          Gget_messagesData_getMessages_messages_contactDetails>();
  set contactDetails(
          ListBuilder<Gget_messagesData_getMessages_messages_contactDetails>?
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

  ListBuilder<Gget_messagesData_getMessages_messages_files>? _files;
  ListBuilder<Gget_messagesData_getMessages_messages_files> get files =>
      _$this._files ??=
          new ListBuilder<Gget_messagesData_getMessages_messages_files>();
  set files(ListBuilder<Gget_messagesData_getMessages_messages_files>? files) =>
      _$this._files = files;

  Gget_messagesData_getMessages_messagesBuilder() {
    Gget_messagesData_getMessages_messages._initializeBuilder(this);
  }

  Gget_messagesData_getMessages_messagesBuilder get _$this {
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
  void replace(Gget_messagesData_getMessages_messages other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_messagesData_getMessages_messages;
  }

  @override
  void update(
      void Function(Gget_messagesData_getMessages_messagesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_messagesData_getMessages_messages build() => _build();

  _$Gget_messagesData_getMessages_messages _build() {
    _$Gget_messagesData_getMessages_messages _$result;
    try {
      _$result = _$v ??
          new _$Gget_messagesData_getMessages_messages._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gget_messagesData_getMessages_messages', 'G__typename'),
              contactDetails: contactDetails.build(),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'Gget_messagesData_getMessages_messages', 'id'),
              date: BuiltValueNullFieldError.checkNotNull(
                  date, r'Gget_messagesData_getMessages_messages', 'date'),
              content: BuiltValueNullFieldError.checkNotNull(content,
                  r'Gget_messagesData_getMessages_messages', 'content'),
              read: BuiltValueNullFieldError.checkNotNull(
                  read, r'Gget_messagesData_getMessages_messages', 'read'),
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
            r'Gget_messagesData_getMessages_messages',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_messagesData_getMessages_messages_contactDetails
    extends Gget_messagesData_getMessages_messages_contactDetails {
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

  factory _$Gget_messagesData_getMessages_messages_contactDetails(
          [void Function(
                  Gget_messagesData_getMessages_messages_contactDetailsBuilder)?
              updates]) =>
      (new Gget_messagesData_getMessages_messages_contactDetailsBuilder()
            ..update(updates))
          ._build();

  _$Gget_messagesData_getMessages_messages_contactDetails._(
      {required this.G__typename,
      required this.name,
      required this.type,
      this.idNat,
      this.typeBal})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_messagesData_getMessages_messages_contactDetails',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name, r'Gget_messagesData_getMessages_messages_contactDetails', 'name');
    BuiltValueNullFieldError.checkNotNull(
        type, r'Gget_messagesData_getMessages_messages_contactDetails', 'type');
  }

  @override
  Gget_messagesData_getMessages_messages_contactDetails rebuild(
          void Function(
                  Gget_messagesData_getMessages_messages_contactDetailsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_messagesData_getMessages_messages_contactDetailsBuilder toBuilder() =>
      new Gget_messagesData_getMessages_messages_contactDetailsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_messagesData_getMessages_messages_contactDetails &&
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
            r'Gget_messagesData_getMessages_messages_contactDetails')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('type', type)
          ..add('idNat', idNat)
          ..add('typeBal', typeBal))
        .toString();
  }
}

class Gget_messagesData_getMessages_messages_contactDetailsBuilder
    implements
        Builder<Gget_messagesData_getMessages_messages_contactDetails,
            Gget_messagesData_getMessages_messages_contactDetailsBuilder> {
  _$Gget_messagesData_getMessages_messages_contactDetails? _$v;

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

  Gget_messagesData_getMessages_messages_contactDetailsBuilder() {
    Gget_messagesData_getMessages_messages_contactDetails._initializeBuilder(
        this);
  }

  Gget_messagesData_getMessages_messages_contactDetailsBuilder get _$this {
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
  void replace(Gget_messagesData_getMessages_messages_contactDetails other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_messagesData_getMessages_messages_contactDetails;
  }

  @override
  void update(
      void Function(
              Gget_messagesData_getMessages_messages_contactDetailsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_messagesData_getMessages_messages_contactDetails build() => _build();

  _$Gget_messagesData_getMessages_messages_contactDetails _build() {
    final _$result = _$v ??
        new _$Gget_messagesData_getMessages_messages_contactDetails._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_messagesData_getMessages_messages_contactDetails',
                'G__typename'),
            name: BuiltValueNullFieldError.checkNotNull(
                name,
                r'Gget_messagesData_getMessages_messages_contactDetails',
                'name'),
            type: BuiltValueNullFieldError.checkNotNull(
                type,
                r'Gget_messagesData_getMessages_messages_contactDetails',
                'type'),
            idNat: idNat,
            typeBal: typeBal);
    replace(_$result);
    return _$result;
  }
}

class _$Gget_messagesData_getMessages_messages_files
    extends Gget_messagesData_getMessages_messages_files {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;

  factory _$Gget_messagesData_getMessages_messages_files(
          [void Function(Gget_messagesData_getMessages_messages_filesBuilder)?
              updates]) =>
      (new Gget_messagesData_getMessages_messages_filesBuilder()
            ..update(updates))
          ._build();

  _$Gget_messagesData_getMessages_messages_files._(
      {required this.G__typename, required this.id, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_messagesData_getMessages_messages_files', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'Gget_messagesData_getMessages_messages_files', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'Gget_messagesData_getMessages_messages_files', 'name');
  }

  @override
  Gget_messagesData_getMessages_messages_files rebuild(
          void Function(Gget_messagesData_getMessages_messages_filesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_messagesData_getMessages_messages_filesBuilder toBuilder() =>
      new Gget_messagesData_getMessages_messages_filesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_messagesData_getMessages_messages_files &&
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
            r'Gget_messagesData_getMessages_messages_files')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class Gget_messagesData_getMessages_messages_filesBuilder
    implements
        Builder<Gget_messagesData_getMessages_messages_files,
            Gget_messagesData_getMessages_messages_filesBuilder> {
  _$Gget_messagesData_getMessages_messages_files? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  Gget_messagesData_getMessages_messages_filesBuilder() {
    Gget_messagesData_getMessages_messages_files._initializeBuilder(this);
  }

  Gget_messagesData_getMessages_messages_filesBuilder get _$this {
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
  void replace(Gget_messagesData_getMessages_messages_files other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_messagesData_getMessages_messages_files;
  }

  @override
  void update(
      void Function(Gget_messagesData_getMessages_messages_filesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_messagesData_getMessages_messages_files build() => _build();

  _$Gget_messagesData_getMessages_messages_files _build() {
    final _$result = _$v ??
        new _$Gget_messagesData_getMessages_messages_files._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gget_messagesData_getMessages_messages_files', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'Gget_messagesData_getMessages_messages_files', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'Gget_messagesData_getMessages_messages_files', 'name'));
    replace(_$result);
    return _$result;
  }
}

class _$Gget_messagesData_getMessages_draft
    extends Gget_messagesData_getMessages_draft {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String? parentId;
  @override
  final BuiltList<Gget_messagesData_getMessages_draft_contactDetails>
      contactDetails;
  @override
  final Gget_messagesData_getMessages_draft_draftRecipients draftRecipients;
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
  final BuiltList<Gget_messagesData_getMessages_draft_files> files;

  factory _$Gget_messagesData_getMessages_draft(
          [void Function(Gget_messagesData_getMessages_draftBuilder)?
              updates]) =>
      (new Gget_messagesData_getMessages_draftBuilder()..update(updates))
          ._build();

  _$Gget_messagesData_getMessages_draft._(
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
        G__typename, r'Gget_messagesData_getMessages_draft', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'Gget_messagesData_getMessages_draft', 'id');
    BuiltValueNullFieldError.checkNotNull(contactDetails,
        r'Gget_messagesData_getMessages_draft', 'contactDetails');
    BuiltValueNullFieldError.checkNotNull(draftRecipients,
        r'Gget_messagesData_getMessages_draft', 'draftRecipients');
    BuiltValueNullFieldError.checkNotNull(
        date, r'Gget_messagesData_getMessages_draft', 'date');
    BuiltValueNullFieldError.checkNotNull(
        content, r'Gget_messagesData_getMessages_draft', 'content');
    BuiltValueNullFieldError.checkNotNull(
        subject, r'Gget_messagesData_getMessages_draft', 'subject');
    BuiltValueNullFieldError.checkNotNull(
        read, r'Gget_messagesData_getMessages_draft', 'read');
    BuiltValueNullFieldError.checkNotNull(remainSizeFiles,
        r'Gget_messagesData_getMessages_draft', 'remainSizeFiles');
    BuiltValueNullFieldError.checkNotNull(
        recipients, r'Gget_messagesData_getMessages_draft', 'recipients');
    BuiltValueNullFieldError.checkNotNull(
        files, r'Gget_messagesData_getMessages_draft', 'files');
  }

  @override
  Gget_messagesData_getMessages_draft rebuild(
          void Function(Gget_messagesData_getMessages_draftBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_messagesData_getMessages_draftBuilder toBuilder() =>
      new Gget_messagesData_getMessages_draftBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_messagesData_getMessages_draft &&
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
    return (newBuiltValueToStringHelper(r'Gget_messagesData_getMessages_draft')
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

class Gget_messagesData_getMessages_draftBuilder
    implements
        Builder<Gget_messagesData_getMessages_draft,
            Gget_messagesData_getMessages_draftBuilder> {
  _$Gget_messagesData_getMessages_draft? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _parentId;
  String? get parentId => _$this._parentId;
  set parentId(String? parentId) => _$this._parentId = parentId;

  ListBuilder<Gget_messagesData_getMessages_draft_contactDetails>?
      _contactDetails;
  ListBuilder<Gget_messagesData_getMessages_draft_contactDetails>
      get contactDetails => _$this._contactDetails ??=
          new ListBuilder<Gget_messagesData_getMessages_draft_contactDetails>();
  set contactDetails(
          ListBuilder<Gget_messagesData_getMessages_draft_contactDetails>?
              contactDetails) =>
      _$this._contactDetails = contactDetails;

  Gget_messagesData_getMessages_draft_draftRecipientsBuilder? _draftRecipients;
  Gget_messagesData_getMessages_draft_draftRecipientsBuilder
      get draftRecipients => _$this._draftRecipients ??=
          new Gget_messagesData_getMessages_draft_draftRecipientsBuilder();
  set draftRecipients(
          Gget_messagesData_getMessages_draft_draftRecipientsBuilder?
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

  ListBuilder<Gget_messagesData_getMessages_draft_files>? _files;
  ListBuilder<Gget_messagesData_getMessages_draft_files> get files =>
      _$this._files ??=
          new ListBuilder<Gget_messagesData_getMessages_draft_files>();
  set files(ListBuilder<Gget_messagesData_getMessages_draft_files>? files) =>
      _$this._files = files;

  Gget_messagesData_getMessages_draftBuilder() {
    Gget_messagesData_getMessages_draft._initializeBuilder(this);
  }

  Gget_messagesData_getMessages_draftBuilder get _$this {
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
  void replace(Gget_messagesData_getMessages_draft other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_messagesData_getMessages_draft;
  }

  @override
  void update(
      void Function(Gget_messagesData_getMessages_draftBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_messagesData_getMessages_draft build() => _build();

  _$Gget_messagesData_getMessages_draft _build() {
    _$Gget_messagesData_getMessages_draft _$result;
    try {
      _$result = _$v ??
          new _$Gget_messagesData_getMessages_draft._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gget_messagesData_getMessages_draft', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'Gget_messagesData_getMessages_draft', 'id'),
              parentId: parentId,
              contactDetails: contactDetails.build(),
              draftRecipients: draftRecipients.build(),
              date: BuiltValueNullFieldError.checkNotNull(
                  date, r'Gget_messagesData_getMessages_draft', 'date'),
              content: BuiltValueNullFieldError.checkNotNull(
                  content, r'Gget_messagesData_getMessages_draft', 'content'),
              subject: BuiltValueNullFieldError.checkNotNull(
                  subject, r'Gget_messagesData_getMessages_draft', 'subject'),
              read: BuiltValueNullFieldError.checkNotNull(
                  read, r'Gget_messagesData_getMessages_draft', 'read'),
              remainSizeFiles: BuiltValueNullFieldError.checkNotNull(
                  remainSizeFiles,
                  r'Gget_messagesData_getMessages_draft',
                  'remainSizeFiles'),
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
            r'Gget_messagesData_getMessages_draft',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_messagesData_getMessages_draft_contactDetails
    extends Gget_messagesData_getMessages_draft_contactDetails {
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

  factory _$Gget_messagesData_getMessages_draft_contactDetails(
          [void Function(
                  Gget_messagesData_getMessages_draft_contactDetailsBuilder)?
              updates]) =>
      (new Gget_messagesData_getMessages_draft_contactDetailsBuilder()
            ..update(updates))
          ._build();

  _$Gget_messagesData_getMessages_draft_contactDetails._(
      {required this.G__typename,
      required this.name,
      required this.type,
      this.idNat,
      this.typeBal})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_messagesData_getMessages_draft_contactDetails', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name, r'Gget_messagesData_getMessages_draft_contactDetails', 'name');
    BuiltValueNullFieldError.checkNotNull(
        type, r'Gget_messagesData_getMessages_draft_contactDetails', 'type');
  }

  @override
  Gget_messagesData_getMessages_draft_contactDetails rebuild(
          void Function(
                  Gget_messagesData_getMessages_draft_contactDetailsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_messagesData_getMessages_draft_contactDetailsBuilder toBuilder() =>
      new Gget_messagesData_getMessages_draft_contactDetailsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_messagesData_getMessages_draft_contactDetails &&
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
            r'Gget_messagesData_getMessages_draft_contactDetails')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('type', type)
          ..add('idNat', idNat)
          ..add('typeBal', typeBal))
        .toString();
  }
}

class Gget_messagesData_getMessages_draft_contactDetailsBuilder
    implements
        Builder<Gget_messagesData_getMessages_draft_contactDetails,
            Gget_messagesData_getMessages_draft_contactDetailsBuilder> {
  _$Gget_messagesData_getMessages_draft_contactDetails? _$v;

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

  Gget_messagesData_getMessages_draft_contactDetailsBuilder() {
    Gget_messagesData_getMessages_draft_contactDetails._initializeBuilder(this);
  }

  Gget_messagesData_getMessages_draft_contactDetailsBuilder get _$this {
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
  void replace(Gget_messagesData_getMessages_draft_contactDetails other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_messagesData_getMessages_draft_contactDetails;
  }

  @override
  void update(
      void Function(Gget_messagesData_getMessages_draft_contactDetailsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_messagesData_getMessages_draft_contactDetails build() => _build();

  _$Gget_messagesData_getMessages_draft_contactDetails _build() {
    final _$result = _$v ??
        new _$Gget_messagesData_getMessages_draft_contactDetails._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_messagesData_getMessages_draft_contactDetails',
                'G__typename'),
            name: BuiltValueNullFieldError.checkNotNull(name,
                r'Gget_messagesData_getMessages_draft_contactDetails', 'name'),
            type: BuiltValueNullFieldError.checkNotNull(type,
                r'Gget_messagesData_getMessages_draft_contactDetails', 'type'),
            idNat: idNat,
            typeBal: typeBal);
    replace(_$result);
    return _$result;
  }
}

class _$Gget_messagesData_getMessages_draft_draftRecipients
    extends Gget_messagesData_getMessages_draft_draftRecipients {
  @override
  final String G__typename;
  @override
  final BuiltList<Gget_messagesData_getMessages_draft_draftRecipients_to> to;

  factory _$Gget_messagesData_getMessages_draft_draftRecipients(
          [void Function(
                  Gget_messagesData_getMessages_draft_draftRecipientsBuilder)?
              updates]) =>
      (new Gget_messagesData_getMessages_draft_draftRecipientsBuilder()
            ..update(updates))
          ._build();

  _$Gget_messagesData_getMessages_draft_draftRecipients._(
      {required this.G__typename, required this.to})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_messagesData_getMessages_draft_draftRecipients', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        to, r'Gget_messagesData_getMessages_draft_draftRecipients', 'to');
  }

  @override
  Gget_messagesData_getMessages_draft_draftRecipients rebuild(
          void Function(
                  Gget_messagesData_getMessages_draft_draftRecipientsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_messagesData_getMessages_draft_draftRecipientsBuilder toBuilder() =>
      new Gget_messagesData_getMessages_draft_draftRecipientsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_messagesData_getMessages_draft_draftRecipients &&
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
            r'Gget_messagesData_getMessages_draft_draftRecipients')
          ..add('G__typename', G__typename)
          ..add('to', to))
        .toString();
  }
}

class Gget_messagesData_getMessages_draft_draftRecipientsBuilder
    implements
        Builder<Gget_messagesData_getMessages_draft_draftRecipients,
            Gget_messagesData_getMessages_draft_draftRecipientsBuilder> {
  _$Gget_messagesData_getMessages_draft_draftRecipients? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<Gget_messagesData_getMessages_draft_draftRecipients_to>? _to;
  ListBuilder<
      Gget_messagesData_getMessages_draft_draftRecipients_to> get to => _$this
          ._to ??=
      new ListBuilder<Gget_messagesData_getMessages_draft_draftRecipients_to>();
  set to(
          ListBuilder<Gget_messagesData_getMessages_draft_draftRecipients_to>?
              to) =>
      _$this._to = to;

  Gget_messagesData_getMessages_draft_draftRecipientsBuilder() {
    Gget_messagesData_getMessages_draft_draftRecipients._initializeBuilder(
        this);
  }

  Gget_messagesData_getMessages_draft_draftRecipientsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _to = $v.to.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_messagesData_getMessages_draft_draftRecipients other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_messagesData_getMessages_draft_draftRecipients;
  }

  @override
  void update(
      void Function(Gget_messagesData_getMessages_draft_draftRecipientsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_messagesData_getMessages_draft_draftRecipients build() => _build();

  _$Gget_messagesData_getMessages_draft_draftRecipients _build() {
    _$Gget_messagesData_getMessages_draft_draftRecipients _$result;
    try {
      _$result = _$v ??
          new _$Gget_messagesData_getMessages_draft_draftRecipients._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_messagesData_getMessages_draft_draftRecipients',
                  'G__typename'),
              to: to.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'to';
        to.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_messagesData_getMessages_draft_draftRecipients',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_messagesData_getMessages_draft_draftRecipients_to
    extends Gget_messagesData_getMessages_draft_draftRecipients_to {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String fullName;

  factory _$Gget_messagesData_getMessages_draft_draftRecipients_to(
          [void Function(
                  Gget_messagesData_getMessages_draft_draftRecipients_toBuilder)?
              updates]) =>
      (new Gget_messagesData_getMessages_draft_draftRecipients_toBuilder()
            ..update(updates))
          ._build();

  _$Gget_messagesData_getMessages_draft_draftRecipients_to._(
      {required this.G__typename, required this.id, required this.fullName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_messagesData_getMessages_draft_draftRecipients_to',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'Gget_messagesData_getMessages_draft_draftRecipients_to', 'id');
    BuiltValueNullFieldError.checkNotNull(fullName,
        r'Gget_messagesData_getMessages_draft_draftRecipients_to', 'fullName');
  }

  @override
  Gget_messagesData_getMessages_draft_draftRecipients_to rebuild(
          void Function(
                  Gget_messagesData_getMessages_draft_draftRecipients_toBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_messagesData_getMessages_draft_draftRecipients_toBuilder toBuilder() =>
      new Gget_messagesData_getMessages_draft_draftRecipients_toBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_messagesData_getMessages_draft_draftRecipients_to &&
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
            r'Gget_messagesData_getMessages_draft_draftRecipients_to')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('fullName', fullName))
        .toString();
  }
}

class Gget_messagesData_getMessages_draft_draftRecipients_toBuilder
    implements
        Builder<Gget_messagesData_getMessages_draft_draftRecipients_to,
            Gget_messagesData_getMessages_draft_draftRecipients_toBuilder> {
  _$Gget_messagesData_getMessages_draft_draftRecipients_to? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  Gget_messagesData_getMessages_draft_draftRecipients_toBuilder() {
    Gget_messagesData_getMessages_draft_draftRecipients_to._initializeBuilder(
        this);
  }

  Gget_messagesData_getMessages_draft_draftRecipients_toBuilder get _$this {
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
  void replace(Gget_messagesData_getMessages_draft_draftRecipients_to other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_messagesData_getMessages_draft_draftRecipients_to;
  }

  @override
  void update(
      void Function(
              Gget_messagesData_getMessages_draft_draftRecipients_toBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_messagesData_getMessages_draft_draftRecipients_to build() => _build();

  _$Gget_messagesData_getMessages_draft_draftRecipients_to _build() {
    final _$result = _$v ??
        new _$Gget_messagesData_getMessages_draft_draftRecipients_to._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_messagesData_getMessages_draft_draftRecipients_to',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id,
                r'Gget_messagesData_getMessages_draft_draftRecipients_to',
                'id'),
            fullName: BuiltValueNullFieldError.checkNotNull(
                fullName,
                r'Gget_messagesData_getMessages_draft_draftRecipients_to',
                'fullName'));
    replace(_$result);
    return _$result;
  }
}

class _$Gget_messagesData_getMessages_draft_files
    extends Gget_messagesData_getMessages_draft_files {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final double size;

  factory _$Gget_messagesData_getMessages_draft_files(
          [void Function(Gget_messagesData_getMessages_draft_filesBuilder)?
              updates]) =>
      (new Gget_messagesData_getMessages_draft_filesBuilder()..update(updates))
          ._build();

  _$Gget_messagesData_getMessages_draft_files._(
      {required this.G__typename,
      required this.id,
      required this.name,
      required this.size})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_messagesData_getMessages_draft_files', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'Gget_messagesData_getMessages_draft_files', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'Gget_messagesData_getMessages_draft_files', 'name');
    BuiltValueNullFieldError.checkNotNull(
        size, r'Gget_messagesData_getMessages_draft_files', 'size');
  }

  @override
  Gget_messagesData_getMessages_draft_files rebuild(
          void Function(Gget_messagesData_getMessages_draft_filesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_messagesData_getMessages_draft_filesBuilder toBuilder() =>
      new Gget_messagesData_getMessages_draft_filesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_messagesData_getMessages_draft_files &&
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
            r'Gget_messagesData_getMessages_draft_files')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('size', size))
        .toString();
  }
}

class Gget_messagesData_getMessages_draft_filesBuilder
    implements
        Builder<Gget_messagesData_getMessages_draft_files,
            Gget_messagesData_getMessages_draft_filesBuilder> {
  _$Gget_messagesData_getMessages_draft_files? _$v;

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

  Gget_messagesData_getMessages_draft_filesBuilder() {
    Gget_messagesData_getMessages_draft_files._initializeBuilder(this);
  }

  Gget_messagesData_getMessages_draft_filesBuilder get _$this {
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
  void replace(Gget_messagesData_getMessages_draft_files other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_messagesData_getMessages_draft_files;
  }

  @override
  void update(
      void Function(Gget_messagesData_getMessages_draft_filesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_messagesData_getMessages_draft_files build() => _build();

  _$Gget_messagesData_getMessages_draft_files _build() {
    final _$result = _$v ??
        new _$Gget_messagesData_getMessages_draft_files._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gget_messagesData_getMessages_draft_files', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'Gget_messagesData_getMessages_draft_files', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'Gget_messagesData_getMessages_draft_files', 'name'),
            size: BuiltValueNullFieldError.checkNotNull(
                size, r'Gget_messagesData_getMessages_draft_files', 'size'));
    replace(_$result);
    return _$result;
  }
}

class _$Gget_messagesData_getMessages_responseTemplate
    extends Gget_messagesData_getMessages_responseTemplate {
  @override
  final String G__typename;
  @override
  final String? conversationFinalizedBy;
  @override
  final String messageId;
  @override
  final BuiltList<_i3.GReplyTypeEnum> replyOptions;
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

  factory _$Gget_messagesData_getMessages_responseTemplate(
          [void Function(Gget_messagesData_getMessages_responseTemplateBuilder)?
              updates]) =>
      (new Gget_messagesData_getMessages_responseTemplateBuilder()
            ..update(updates))
          ._build();

  _$Gget_messagesData_getMessages_responseTemplate._(
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
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_messagesData_getMessages_responseTemplate', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(messageId,
        r'Gget_messagesData_getMessages_responseTemplate', 'messageId');
    BuiltValueNullFieldError.checkNotNull(replyOptions,
        r'Gget_messagesData_getMessages_responseTemplate', 'replyOptions');
    BuiltValueNullFieldError.checkNotNull(conversationId,
        r'Gget_messagesData_getMessages_responseTemplate', 'conversationId');
    BuiltValueNullFieldError.checkNotNull(
        from, r'Gget_messagesData_getMessages_responseTemplate', 'from');
    BuiltValueNullFieldError.checkNotNull(
        to, r'Gget_messagesData_getMessages_responseTemplate', 'to');
    BuiltValueNullFieldError.checkNotNull(remainSizeFiles,
        r'Gget_messagesData_getMessages_responseTemplate', 'remainSizeFiles');
  }

  @override
  Gget_messagesData_getMessages_responseTemplate rebuild(
          void Function(Gget_messagesData_getMessages_responseTemplateBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_messagesData_getMessages_responseTemplateBuilder toBuilder() =>
      new Gget_messagesData_getMessages_responseTemplateBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_messagesData_getMessages_responseTemplate &&
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
            r'Gget_messagesData_getMessages_responseTemplate')
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

class Gget_messagesData_getMessages_responseTemplateBuilder
    implements
        Builder<Gget_messagesData_getMessages_responseTemplate,
            Gget_messagesData_getMessages_responseTemplateBuilder> {
  _$Gget_messagesData_getMessages_responseTemplate? _$v;

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

  ListBuilder<_i3.GReplyTypeEnum>? _replyOptions;
  ListBuilder<_i3.GReplyTypeEnum> get replyOptions =>
      _$this._replyOptions ??= new ListBuilder<_i3.GReplyTypeEnum>();
  set replyOptions(ListBuilder<_i3.GReplyTypeEnum>? replyOptions) =>
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

  Gget_messagesData_getMessages_responseTemplateBuilder() {
    Gget_messagesData_getMessages_responseTemplate._initializeBuilder(this);
  }

  Gget_messagesData_getMessages_responseTemplateBuilder get _$this {
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
  void replace(Gget_messagesData_getMessages_responseTemplate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_messagesData_getMessages_responseTemplate;
  }

  @override
  void update(
      void Function(Gget_messagesData_getMessages_responseTemplateBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_messagesData_getMessages_responseTemplate build() => _build();

  _$Gget_messagesData_getMessages_responseTemplate _build() {
    _$Gget_messagesData_getMessages_responseTemplate _$result;
    try {
      _$result = _$v ??
          new _$Gget_messagesData_getMessages_responseTemplate._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gget_messagesData_getMessages_responseTemplate', 'G__typename'),
              conversationFinalizedBy: conversationFinalizedBy,
              messageId: BuiltValueNullFieldError.checkNotNull(
                  messageId, r'Gget_messagesData_getMessages_responseTemplate', 'messageId'),
              replyOptions: replyOptions.build(),
              conversationId: BuiltValueNullFieldError.checkNotNull(
                  conversationId,
                  r'Gget_messagesData_getMessages_responseTemplate',
                  'conversationId'),
              from: BuiltValueNullFieldError.checkNotNull(
                  from, r'Gget_messagesData_getMessages_responseTemplate', 'from'),
              to: BuiltValueNullFieldError.checkNotNull(
                  to, r'Gget_messagesData_getMessages_responseTemplate', 'to'),
              recipients: _recipients?.build(),
              remainSizeFiles: BuiltValueNullFieldError.checkNotNull(
                  remainSizeFiles,
                  r'Gget_messagesData_getMessages_responseTemplate',
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
            r'Gget_messagesData_getMessages_responseTemplate',
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
