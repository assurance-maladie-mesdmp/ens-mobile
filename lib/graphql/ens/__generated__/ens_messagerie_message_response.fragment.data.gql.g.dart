// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_messagerie_message_response.fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GmessageResponseData> _$gmessageResponseDataSerializer =
    new _$GmessageResponseDataSerializer();
Serializer<GmessageResponseData_messages>
    _$gmessageResponseDataMessagesSerializer =
    new _$GmessageResponseData_messagesSerializer();
Serializer<GmessageResponseData_messages_contactDetails>
    _$gmessageResponseDataMessagesContactDetailsSerializer =
    new _$GmessageResponseData_messages_contactDetailsSerializer();
Serializer<GmessageResponseData_messages_files>
    _$gmessageResponseDataMessagesFilesSerializer =
    new _$GmessageResponseData_messages_filesSerializer();
Serializer<GmessageResponseData_draft> _$gmessageResponseDataDraftSerializer =
    new _$GmessageResponseData_draftSerializer();
Serializer<GmessageResponseData_draft_contactDetails>
    _$gmessageResponseDataDraftContactDetailsSerializer =
    new _$GmessageResponseData_draft_contactDetailsSerializer();
Serializer<GmessageResponseData_draft_draftRecipients>
    _$gmessageResponseDataDraftDraftRecipientsSerializer =
    new _$GmessageResponseData_draft_draftRecipientsSerializer();
Serializer<GmessageResponseData_draft_draftRecipients_to>
    _$gmessageResponseDataDraftDraftRecipientsToSerializer =
    new _$GmessageResponseData_draft_draftRecipients_toSerializer();
Serializer<GmessageResponseData_draft_files>
    _$gmessageResponseDataDraftFilesSerializer =
    new _$GmessageResponseData_draft_filesSerializer();
Serializer<GmessageResponseData_responseTemplate>
    _$gmessageResponseDataResponseTemplateSerializer =
    new _$GmessageResponseData_responseTemplateSerializer();
Serializer<GContactDetailFragmentData> _$gContactDetailFragmentDataSerializer =
    new _$GContactDetailFragmentDataSerializer();

class _$GmessageResponseDataSerializer
    implements StructuredSerializer<GmessageResponseData> {
  @override
  final Iterable<Type> types = const [
    GmessageResponseData,
    _$GmessageResponseData
  ];
  @override
  final String wireName = 'GmessageResponseData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GmessageResponseData object,
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
          specifiedType: const FullType(GmessageResponseData_responseTemplate)),
    ];
    Object? value;
    value = object.messages;
    if (value != null) {
      result
        ..add('messages')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType(GmessageResponseData_messages)])));
    }
    value = object.draft;
    if (value != null) {
      result
        ..add('draft')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GmessageResponseData_draft)));
    }
    return result;
  }

  @override
  GmessageResponseData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GmessageResponseDataBuilder();

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
                const FullType(GmessageResponseData_messages)
              ]))! as BuiltList<Object?>);
          break;
        case 'draft':
          result.draft.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GmessageResponseData_draft))!
              as GmessageResponseData_draft);
          break;
        case 'responseTemplate':
          result.responseTemplate.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GmessageResponseData_responseTemplate))!
              as GmessageResponseData_responseTemplate);
          break;
      }
    }

    return result.build();
  }
}

class _$GmessageResponseData_messagesSerializer
    implements StructuredSerializer<GmessageResponseData_messages> {
  @override
  final Iterable<Type> types = const [
    GmessageResponseData_messages,
    _$GmessageResponseData_messages
  ];
  @override
  final String wireName = 'GmessageResponseData_messages';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GmessageResponseData_messages object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'contactDetails',
      serializers.serialize(object.contactDetails,
          specifiedType: const FullType(BuiltList, const [
            const FullType(GmessageResponseData_messages_contactDetails)
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
          specifiedType: const FullType(BuiltList,
              const [const FullType(GmessageResponseData_messages_files)])),
    ];

    return result;
  }

  @override
  GmessageResponseData_messages deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GmessageResponseData_messagesBuilder();

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
                const FullType(GmessageResponseData_messages_contactDetails)
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
                const FullType(GmessageResponseData_messages_files)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GmessageResponseData_messages_contactDetailsSerializer
    implements
        StructuredSerializer<GmessageResponseData_messages_contactDetails> {
  @override
  final Iterable<Type> types = const [
    GmessageResponseData_messages_contactDetails,
    _$GmessageResponseData_messages_contactDetails
  ];
  @override
  final String wireName = 'GmessageResponseData_messages_contactDetails';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GmessageResponseData_messages_contactDetails object,
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
  GmessageResponseData_messages_contactDetails deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GmessageResponseData_messages_contactDetailsBuilder();

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

class _$GmessageResponseData_messages_filesSerializer
    implements StructuredSerializer<GmessageResponseData_messages_files> {
  @override
  final Iterable<Type> types = const [
    GmessageResponseData_messages_files,
    _$GmessageResponseData_messages_files
  ];
  @override
  final String wireName = 'GmessageResponseData_messages_files';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GmessageResponseData_messages_files object,
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
  GmessageResponseData_messages_files deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GmessageResponseData_messages_filesBuilder();

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

class _$GmessageResponseData_draftSerializer
    implements StructuredSerializer<GmessageResponseData_draft> {
  @override
  final Iterable<Type> types = const [
    GmessageResponseData_draft,
    _$GmessageResponseData_draft
  ];
  @override
  final String wireName = 'GmessageResponseData_draft';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GmessageResponseData_draft object,
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
            const FullType(GmessageResponseData_draft_contactDetails)
          ])),
      'draftRecipients',
      serializers.serialize(object.draftRecipients,
          specifiedType:
              const FullType(GmessageResponseData_draft_draftRecipients)),
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
          specifiedType: const FullType(BuiltList,
              const [const FullType(GmessageResponseData_draft_files)])),
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
  GmessageResponseData_draft deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GmessageResponseData_draftBuilder();

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
                const FullType(GmessageResponseData_draft_contactDetails)
              ]))! as BuiltList<Object?>);
          break;
        case 'draftRecipients':
          result.draftRecipients.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GmessageResponseData_draft_draftRecipients))!
              as GmessageResponseData_draft_draftRecipients);
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
                const FullType(GmessageResponseData_draft_files)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GmessageResponseData_draft_contactDetailsSerializer
    implements StructuredSerializer<GmessageResponseData_draft_contactDetails> {
  @override
  final Iterable<Type> types = const [
    GmessageResponseData_draft_contactDetails,
    _$GmessageResponseData_draft_contactDetails
  ];
  @override
  final String wireName = 'GmessageResponseData_draft_contactDetails';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GmessageResponseData_draft_contactDetails object,
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
  GmessageResponseData_draft_contactDetails deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GmessageResponseData_draft_contactDetailsBuilder();

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

class _$GmessageResponseData_draft_draftRecipientsSerializer
    implements
        StructuredSerializer<GmessageResponseData_draft_draftRecipients> {
  @override
  final Iterable<Type> types = const [
    GmessageResponseData_draft_draftRecipients,
    _$GmessageResponseData_draft_draftRecipients
  ];
  @override
  final String wireName = 'GmessageResponseData_draft_draftRecipients';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GmessageResponseData_draft_draftRecipients object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'to',
      serializers.serialize(object.to,
          specifiedType: const FullType(BuiltList, const [
            const FullType(GmessageResponseData_draft_draftRecipients_to)
          ])),
    ];

    return result;
  }

  @override
  GmessageResponseData_draft_draftRecipients deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GmessageResponseData_draft_draftRecipientsBuilder();

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
                const FullType(GmessageResponseData_draft_draftRecipients_to)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GmessageResponseData_draft_draftRecipients_toSerializer
    implements
        StructuredSerializer<GmessageResponseData_draft_draftRecipients_to> {
  @override
  final Iterable<Type> types = const [
    GmessageResponseData_draft_draftRecipients_to,
    _$GmessageResponseData_draft_draftRecipients_to
  ];
  @override
  final String wireName = 'GmessageResponseData_draft_draftRecipients_to';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GmessageResponseData_draft_draftRecipients_to object,
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
  GmessageResponseData_draft_draftRecipients_to deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GmessageResponseData_draft_draftRecipients_toBuilder();

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

class _$GmessageResponseData_draft_filesSerializer
    implements StructuredSerializer<GmessageResponseData_draft_files> {
  @override
  final Iterable<Type> types = const [
    GmessageResponseData_draft_files,
    _$GmessageResponseData_draft_files
  ];
  @override
  final String wireName = 'GmessageResponseData_draft_files';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GmessageResponseData_draft_files object,
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
  GmessageResponseData_draft_files deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GmessageResponseData_draft_filesBuilder();

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

class _$GmessageResponseData_responseTemplateSerializer
    implements StructuredSerializer<GmessageResponseData_responseTemplate> {
  @override
  final Iterable<Type> types = const [
    GmessageResponseData_responseTemplate,
    _$GmessageResponseData_responseTemplate
  ];
  @override
  final String wireName = 'GmessageResponseData_responseTemplate';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GmessageResponseData_responseTemplate object,
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
              BuiltList, const [const FullType(_i1.GReplyTypeEnum)])),
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
  GmessageResponseData_responseTemplate deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GmessageResponseData_responseTemplateBuilder();

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
                      BuiltList, const [const FullType(_i1.GReplyTypeEnum)]))!
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

class _$GContactDetailFragmentDataSerializer
    implements StructuredSerializer<GContactDetailFragmentData> {
  @override
  final Iterable<Type> types = const [
    GContactDetailFragmentData,
    _$GContactDetailFragmentData
  ];
  @override
  final String wireName = 'GContactDetailFragmentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GContactDetailFragmentData object,
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
  GContactDetailFragmentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GContactDetailFragmentDataBuilder();

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

class _$GmessageResponseData extends GmessageResponseData {
  @override
  final String G__typename;
  @override
  final String subject;
  @override
  final bool acknowledge;
  @override
  final BuiltList<GmessageResponseData_messages>? messages;
  @override
  final GmessageResponseData_draft? draft;
  @override
  final GmessageResponseData_responseTemplate responseTemplate;

  factory _$GmessageResponseData(
          [void Function(GmessageResponseDataBuilder)? updates]) =>
      (new GmessageResponseDataBuilder()..update(updates))._build();

  _$GmessageResponseData._(
      {required this.G__typename,
      required this.subject,
      required this.acknowledge,
      this.messages,
      this.draft,
      required this.responseTemplate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GmessageResponseData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        subject, r'GmessageResponseData', 'subject');
    BuiltValueNullFieldError.checkNotNull(
        acknowledge, r'GmessageResponseData', 'acknowledge');
    BuiltValueNullFieldError.checkNotNull(
        responseTemplate, r'GmessageResponseData', 'responseTemplate');
  }

  @override
  GmessageResponseData rebuild(
          void Function(GmessageResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmessageResponseDataBuilder toBuilder() =>
      new GmessageResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmessageResponseData &&
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
    return (newBuiltValueToStringHelper(r'GmessageResponseData')
          ..add('G__typename', G__typename)
          ..add('subject', subject)
          ..add('acknowledge', acknowledge)
          ..add('messages', messages)
          ..add('draft', draft)
          ..add('responseTemplate', responseTemplate))
        .toString();
  }
}

class GmessageResponseDataBuilder
    implements Builder<GmessageResponseData, GmessageResponseDataBuilder> {
  _$GmessageResponseData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _subject;
  String? get subject => _$this._subject;
  set subject(String? subject) => _$this._subject = subject;

  bool? _acknowledge;
  bool? get acknowledge => _$this._acknowledge;
  set acknowledge(bool? acknowledge) => _$this._acknowledge = acknowledge;

  ListBuilder<GmessageResponseData_messages>? _messages;
  ListBuilder<GmessageResponseData_messages> get messages =>
      _$this._messages ??= new ListBuilder<GmessageResponseData_messages>();
  set messages(ListBuilder<GmessageResponseData_messages>? messages) =>
      _$this._messages = messages;

  GmessageResponseData_draftBuilder? _draft;
  GmessageResponseData_draftBuilder get draft =>
      _$this._draft ??= new GmessageResponseData_draftBuilder();
  set draft(GmessageResponseData_draftBuilder? draft) => _$this._draft = draft;

  GmessageResponseData_responseTemplateBuilder? _responseTemplate;
  GmessageResponseData_responseTemplateBuilder get responseTemplate =>
      _$this._responseTemplate ??=
          new GmessageResponseData_responseTemplateBuilder();
  set responseTemplate(
          GmessageResponseData_responseTemplateBuilder? responseTemplate) =>
      _$this._responseTemplate = responseTemplate;

  GmessageResponseDataBuilder() {
    GmessageResponseData._initializeBuilder(this);
  }

  GmessageResponseDataBuilder get _$this {
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
  void replace(GmessageResponseData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmessageResponseData;
  }

  @override
  void update(void Function(GmessageResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GmessageResponseData build() => _build();

  _$GmessageResponseData _build() {
    _$GmessageResponseData _$result;
    try {
      _$result = _$v ??
          new _$GmessageResponseData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GmessageResponseData', 'G__typename'),
              subject: BuiltValueNullFieldError.checkNotNull(
                  subject, r'GmessageResponseData', 'subject'),
              acknowledge: BuiltValueNullFieldError.checkNotNull(
                  acknowledge, r'GmessageResponseData', 'acknowledge'),
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
            r'GmessageResponseData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GmessageResponseData_messages extends GmessageResponseData_messages {
  @override
  final String G__typename;
  @override
  final BuiltList<GmessageResponseData_messages_contactDetails> contactDetails;
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
  final BuiltList<GmessageResponseData_messages_files> files;

  factory _$GmessageResponseData_messages(
          [void Function(GmessageResponseData_messagesBuilder)? updates]) =>
      (new GmessageResponseData_messagesBuilder()..update(updates))._build();

  _$GmessageResponseData_messages._(
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
        G__typename, r'GmessageResponseData_messages', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        contactDetails, r'GmessageResponseData_messages', 'contactDetails');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GmessageResponseData_messages', 'id');
    BuiltValueNullFieldError.checkNotNull(
        date, r'GmessageResponseData_messages', 'date');
    BuiltValueNullFieldError.checkNotNull(
        content, r'GmessageResponseData_messages', 'content');
    BuiltValueNullFieldError.checkNotNull(
        read, r'GmessageResponseData_messages', 'read');
    BuiltValueNullFieldError.checkNotNull(
        recipients, r'GmessageResponseData_messages', 'recipients');
    BuiltValueNullFieldError.checkNotNull(
        files, r'GmessageResponseData_messages', 'files');
  }

  @override
  GmessageResponseData_messages rebuild(
          void Function(GmessageResponseData_messagesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmessageResponseData_messagesBuilder toBuilder() =>
      new GmessageResponseData_messagesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmessageResponseData_messages &&
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
    return (newBuiltValueToStringHelper(r'GmessageResponseData_messages')
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

class GmessageResponseData_messagesBuilder
    implements
        Builder<GmessageResponseData_messages,
            GmessageResponseData_messagesBuilder> {
  _$GmessageResponseData_messages? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GmessageResponseData_messages_contactDetails>? _contactDetails;
  ListBuilder<GmessageResponseData_messages_contactDetails>
      get contactDetails => _$this._contactDetails ??=
          new ListBuilder<GmessageResponseData_messages_contactDetails>();
  set contactDetails(
          ListBuilder<GmessageResponseData_messages_contactDetails>?
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

  ListBuilder<GmessageResponseData_messages_files>? _files;
  ListBuilder<GmessageResponseData_messages_files> get files =>
      _$this._files ??= new ListBuilder<GmessageResponseData_messages_files>();
  set files(ListBuilder<GmessageResponseData_messages_files>? files) =>
      _$this._files = files;

  GmessageResponseData_messagesBuilder() {
    GmessageResponseData_messages._initializeBuilder(this);
  }

  GmessageResponseData_messagesBuilder get _$this {
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
  void replace(GmessageResponseData_messages other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmessageResponseData_messages;
  }

  @override
  void update(void Function(GmessageResponseData_messagesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GmessageResponseData_messages build() => _build();

  _$GmessageResponseData_messages _build() {
    _$GmessageResponseData_messages _$result;
    try {
      _$result = _$v ??
          new _$GmessageResponseData_messages._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GmessageResponseData_messages', 'G__typename'),
              contactDetails: contactDetails.build(),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GmessageResponseData_messages', 'id'),
              date: BuiltValueNullFieldError.checkNotNull(
                  date, r'GmessageResponseData_messages', 'date'),
              content: BuiltValueNullFieldError.checkNotNull(
                  content, r'GmessageResponseData_messages', 'content'),
              read: BuiltValueNullFieldError.checkNotNull(
                  read, r'GmessageResponseData_messages', 'read'),
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
            r'GmessageResponseData_messages', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GmessageResponseData_messages_contactDetails
    extends GmessageResponseData_messages_contactDetails {
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

  factory _$GmessageResponseData_messages_contactDetails(
          [void Function(GmessageResponseData_messages_contactDetailsBuilder)?
              updates]) =>
      (new GmessageResponseData_messages_contactDetailsBuilder()
            ..update(updates))
          ._build();

  _$GmessageResponseData_messages_contactDetails._(
      {required this.G__typename,
      required this.name,
      required this.type,
      this.idNat,
      this.typeBal})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GmessageResponseData_messages_contactDetails', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GmessageResponseData_messages_contactDetails', 'name');
    BuiltValueNullFieldError.checkNotNull(
        type, r'GmessageResponseData_messages_contactDetails', 'type');
  }

  @override
  GmessageResponseData_messages_contactDetails rebuild(
          void Function(GmessageResponseData_messages_contactDetailsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmessageResponseData_messages_contactDetailsBuilder toBuilder() =>
      new GmessageResponseData_messages_contactDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmessageResponseData_messages_contactDetails &&
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
            r'GmessageResponseData_messages_contactDetails')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('type', type)
          ..add('idNat', idNat)
          ..add('typeBal', typeBal))
        .toString();
  }
}

class GmessageResponseData_messages_contactDetailsBuilder
    implements
        Builder<GmessageResponseData_messages_contactDetails,
            GmessageResponseData_messages_contactDetailsBuilder> {
  _$GmessageResponseData_messages_contactDetails? _$v;

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

  GmessageResponseData_messages_contactDetailsBuilder() {
    GmessageResponseData_messages_contactDetails._initializeBuilder(this);
  }

  GmessageResponseData_messages_contactDetailsBuilder get _$this {
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
  void replace(GmessageResponseData_messages_contactDetails other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmessageResponseData_messages_contactDetails;
  }

  @override
  void update(
      void Function(GmessageResponseData_messages_contactDetailsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GmessageResponseData_messages_contactDetails build() => _build();

  _$GmessageResponseData_messages_contactDetails _build() {
    final _$result = _$v ??
        new _$GmessageResponseData_messages_contactDetails._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GmessageResponseData_messages_contactDetails', 'G__typename'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GmessageResponseData_messages_contactDetails', 'name'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'GmessageResponseData_messages_contactDetails', 'type'),
            idNat: idNat,
            typeBal: typeBal);
    replace(_$result);
    return _$result;
  }
}

class _$GmessageResponseData_messages_files
    extends GmessageResponseData_messages_files {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;

  factory _$GmessageResponseData_messages_files(
          [void Function(GmessageResponseData_messages_filesBuilder)?
              updates]) =>
      (new GmessageResponseData_messages_filesBuilder()..update(updates))
          ._build();

  _$GmessageResponseData_messages_files._(
      {required this.G__typename, required this.id, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GmessageResponseData_messages_files', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GmessageResponseData_messages_files', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GmessageResponseData_messages_files', 'name');
  }

  @override
  GmessageResponseData_messages_files rebuild(
          void Function(GmessageResponseData_messages_filesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmessageResponseData_messages_filesBuilder toBuilder() =>
      new GmessageResponseData_messages_filesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmessageResponseData_messages_files &&
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
    return (newBuiltValueToStringHelper(r'GmessageResponseData_messages_files')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GmessageResponseData_messages_filesBuilder
    implements
        Builder<GmessageResponseData_messages_files,
            GmessageResponseData_messages_filesBuilder> {
  _$GmessageResponseData_messages_files? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GmessageResponseData_messages_filesBuilder() {
    GmessageResponseData_messages_files._initializeBuilder(this);
  }

  GmessageResponseData_messages_filesBuilder get _$this {
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
  void replace(GmessageResponseData_messages_files other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmessageResponseData_messages_files;
  }

  @override
  void update(
      void Function(GmessageResponseData_messages_filesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GmessageResponseData_messages_files build() => _build();

  _$GmessageResponseData_messages_files _build() {
    final _$result = _$v ??
        new _$GmessageResponseData_messages_files._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GmessageResponseData_messages_files', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GmessageResponseData_messages_files', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GmessageResponseData_messages_files', 'name'));
    replace(_$result);
    return _$result;
  }
}

class _$GmessageResponseData_draft extends GmessageResponseData_draft {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String? parentId;
  @override
  final BuiltList<GmessageResponseData_draft_contactDetails> contactDetails;
  @override
  final GmessageResponseData_draft_draftRecipients draftRecipients;
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
  final BuiltList<GmessageResponseData_draft_files> files;

  factory _$GmessageResponseData_draft(
          [void Function(GmessageResponseData_draftBuilder)? updates]) =>
      (new GmessageResponseData_draftBuilder()..update(updates))._build();

  _$GmessageResponseData_draft._(
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
        G__typename, r'GmessageResponseData_draft', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GmessageResponseData_draft', 'id');
    BuiltValueNullFieldError.checkNotNull(
        contactDetails, r'GmessageResponseData_draft', 'contactDetails');
    BuiltValueNullFieldError.checkNotNull(
        draftRecipients, r'GmessageResponseData_draft', 'draftRecipients');
    BuiltValueNullFieldError.checkNotNull(
        date, r'GmessageResponseData_draft', 'date');
    BuiltValueNullFieldError.checkNotNull(
        content, r'GmessageResponseData_draft', 'content');
    BuiltValueNullFieldError.checkNotNull(
        subject, r'GmessageResponseData_draft', 'subject');
    BuiltValueNullFieldError.checkNotNull(
        read, r'GmessageResponseData_draft', 'read');
    BuiltValueNullFieldError.checkNotNull(
        remainSizeFiles, r'GmessageResponseData_draft', 'remainSizeFiles');
    BuiltValueNullFieldError.checkNotNull(
        recipients, r'GmessageResponseData_draft', 'recipients');
    BuiltValueNullFieldError.checkNotNull(
        files, r'GmessageResponseData_draft', 'files');
  }

  @override
  GmessageResponseData_draft rebuild(
          void Function(GmessageResponseData_draftBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmessageResponseData_draftBuilder toBuilder() =>
      new GmessageResponseData_draftBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmessageResponseData_draft &&
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
    return (newBuiltValueToStringHelper(r'GmessageResponseData_draft')
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

class GmessageResponseData_draftBuilder
    implements
        Builder<GmessageResponseData_draft, GmessageResponseData_draftBuilder> {
  _$GmessageResponseData_draft? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _parentId;
  String? get parentId => _$this._parentId;
  set parentId(String? parentId) => _$this._parentId = parentId;

  ListBuilder<GmessageResponseData_draft_contactDetails>? _contactDetails;
  ListBuilder<GmessageResponseData_draft_contactDetails> get contactDetails =>
      _$this._contactDetails ??=
          new ListBuilder<GmessageResponseData_draft_contactDetails>();
  set contactDetails(
          ListBuilder<GmessageResponseData_draft_contactDetails>?
              contactDetails) =>
      _$this._contactDetails = contactDetails;

  GmessageResponseData_draft_draftRecipientsBuilder? _draftRecipients;
  GmessageResponseData_draft_draftRecipientsBuilder get draftRecipients =>
      _$this._draftRecipients ??=
          new GmessageResponseData_draft_draftRecipientsBuilder();
  set draftRecipients(
          GmessageResponseData_draft_draftRecipientsBuilder? draftRecipients) =>
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

  ListBuilder<GmessageResponseData_draft_files>? _files;
  ListBuilder<GmessageResponseData_draft_files> get files =>
      _$this._files ??= new ListBuilder<GmessageResponseData_draft_files>();
  set files(ListBuilder<GmessageResponseData_draft_files>? files) =>
      _$this._files = files;

  GmessageResponseData_draftBuilder() {
    GmessageResponseData_draft._initializeBuilder(this);
  }

  GmessageResponseData_draftBuilder get _$this {
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
  void replace(GmessageResponseData_draft other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmessageResponseData_draft;
  }

  @override
  void update(void Function(GmessageResponseData_draftBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GmessageResponseData_draft build() => _build();

  _$GmessageResponseData_draft _build() {
    _$GmessageResponseData_draft _$result;
    try {
      _$result = _$v ??
          new _$GmessageResponseData_draft._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GmessageResponseData_draft', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GmessageResponseData_draft', 'id'),
              parentId: parentId,
              contactDetails: contactDetails.build(),
              draftRecipients: draftRecipients.build(),
              date: BuiltValueNullFieldError.checkNotNull(
                  date, r'GmessageResponseData_draft', 'date'),
              content: BuiltValueNullFieldError.checkNotNull(
                  content, r'GmessageResponseData_draft', 'content'),
              subject: BuiltValueNullFieldError.checkNotNull(
                  subject, r'GmessageResponseData_draft', 'subject'),
              read: BuiltValueNullFieldError.checkNotNull(
                  read, r'GmessageResponseData_draft', 'read'),
              remainSizeFiles: BuiltValueNullFieldError.checkNotNull(
                  remainSizeFiles,
                  r'GmessageResponseData_draft',
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
            r'GmessageResponseData_draft', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GmessageResponseData_draft_contactDetails
    extends GmessageResponseData_draft_contactDetails {
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

  factory _$GmessageResponseData_draft_contactDetails(
          [void Function(GmessageResponseData_draft_contactDetailsBuilder)?
              updates]) =>
      (new GmessageResponseData_draft_contactDetailsBuilder()..update(updates))
          ._build();

  _$GmessageResponseData_draft_contactDetails._(
      {required this.G__typename,
      required this.name,
      required this.type,
      this.idNat,
      this.typeBal})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GmessageResponseData_draft_contactDetails', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GmessageResponseData_draft_contactDetails', 'name');
    BuiltValueNullFieldError.checkNotNull(
        type, r'GmessageResponseData_draft_contactDetails', 'type');
  }

  @override
  GmessageResponseData_draft_contactDetails rebuild(
          void Function(GmessageResponseData_draft_contactDetailsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmessageResponseData_draft_contactDetailsBuilder toBuilder() =>
      new GmessageResponseData_draft_contactDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmessageResponseData_draft_contactDetails &&
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
            r'GmessageResponseData_draft_contactDetails')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('type', type)
          ..add('idNat', idNat)
          ..add('typeBal', typeBal))
        .toString();
  }
}

class GmessageResponseData_draft_contactDetailsBuilder
    implements
        Builder<GmessageResponseData_draft_contactDetails,
            GmessageResponseData_draft_contactDetailsBuilder> {
  _$GmessageResponseData_draft_contactDetails? _$v;

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

  GmessageResponseData_draft_contactDetailsBuilder() {
    GmessageResponseData_draft_contactDetails._initializeBuilder(this);
  }

  GmessageResponseData_draft_contactDetailsBuilder get _$this {
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
  void replace(GmessageResponseData_draft_contactDetails other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmessageResponseData_draft_contactDetails;
  }

  @override
  void update(
      void Function(GmessageResponseData_draft_contactDetailsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GmessageResponseData_draft_contactDetails build() => _build();

  _$GmessageResponseData_draft_contactDetails _build() {
    final _$result = _$v ??
        new _$GmessageResponseData_draft_contactDetails._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GmessageResponseData_draft_contactDetails', 'G__typename'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GmessageResponseData_draft_contactDetails', 'name'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'GmessageResponseData_draft_contactDetails', 'type'),
            idNat: idNat,
            typeBal: typeBal);
    replace(_$result);
    return _$result;
  }
}

class _$GmessageResponseData_draft_draftRecipients
    extends GmessageResponseData_draft_draftRecipients {
  @override
  final String G__typename;
  @override
  final BuiltList<GmessageResponseData_draft_draftRecipients_to> to;

  factory _$GmessageResponseData_draft_draftRecipients(
          [void Function(GmessageResponseData_draft_draftRecipientsBuilder)?
              updates]) =>
      (new GmessageResponseData_draft_draftRecipientsBuilder()..update(updates))
          ._build();

  _$GmessageResponseData_draft_draftRecipients._(
      {required this.G__typename, required this.to})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GmessageResponseData_draft_draftRecipients', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        to, r'GmessageResponseData_draft_draftRecipients', 'to');
  }

  @override
  GmessageResponseData_draft_draftRecipients rebuild(
          void Function(GmessageResponseData_draft_draftRecipientsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmessageResponseData_draft_draftRecipientsBuilder toBuilder() =>
      new GmessageResponseData_draft_draftRecipientsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmessageResponseData_draft_draftRecipients &&
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
            r'GmessageResponseData_draft_draftRecipients')
          ..add('G__typename', G__typename)
          ..add('to', to))
        .toString();
  }
}

class GmessageResponseData_draft_draftRecipientsBuilder
    implements
        Builder<GmessageResponseData_draft_draftRecipients,
            GmessageResponseData_draft_draftRecipientsBuilder> {
  _$GmessageResponseData_draft_draftRecipients? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GmessageResponseData_draft_draftRecipients_to>? _to;
  ListBuilder<GmessageResponseData_draft_draftRecipients_to> get to =>
      _$this._to ??=
          new ListBuilder<GmessageResponseData_draft_draftRecipients_to>();
  set to(ListBuilder<GmessageResponseData_draft_draftRecipients_to>? to) =>
      _$this._to = to;

  GmessageResponseData_draft_draftRecipientsBuilder() {
    GmessageResponseData_draft_draftRecipients._initializeBuilder(this);
  }

  GmessageResponseData_draft_draftRecipientsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _to = $v.to.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GmessageResponseData_draft_draftRecipients other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmessageResponseData_draft_draftRecipients;
  }

  @override
  void update(
      void Function(GmessageResponseData_draft_draftRecipientsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GmessageResponseData_draft_draftRecipients build() => _build();

  _$GmessageResponseData_draft_draftRecipients _build() {
    _$GmessageResponseData_draft_draftRecipients _$result;
    try {
      _$result = _$v ??
          new _$GmessageResponseData_draft_draftRecipients._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GmessageResponseData_draft_draftRecipients', 'G__typename'),
              to: to.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'to';
        to.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GmessageResponseData_draft_draftRecipients',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GmessageResponseData_draft_draftRecipients_to
    extends GmessageResponseData_draft_draftRecipients_to {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String fullName;

  factory _$GmessageResponseData_draft_draftRecipients_to(
          [void Function(GmessageResponseData_draft_draftRecipients_toBuilder)?
              updates]) =>
      (new GmessageResponseData_draft_draftRecipients_toBuilder()
            ..update(updates))
          ._build();

  _$GmessageResponseData_draft_draftRecipients_to._(
      {required this.G__typename, required this.id, required this.fullName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GmessageResponseData_draft_draftRecipients_to', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GmessageResponseData_draft_draftRecipients_to', 'id');
    BuiltValueNullFieldError.checkNotNull(
        fullName, r'GmessageResponseData_draft_draftRecipients_to', 'fullName');
  }

  @override
  GmessageResponseData_draft_draftRecipients_to rebuild(
          void Function(GmessageResponseData_draft_draftRecipients_toBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmessageResponseData_draft_draftRecipients_toBuilder toBuilder() =>
      new GmessageResponseData_draft_draftRecipients_toBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmessageResponseData_draft_draftRecipients_to &&
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
            r'GmessageResponseData_draft_draftRecipients_to')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('fullName', fullName))
        .toString();
  }
}

class GmessageResponseData_draft_draftRecipients_toBuilder
    implements
        Builder<GmessageResponseData_draft_draftRecipients_to,
            GmessageResponseData_draft_draftRecipients_toBuilder> {
  _$GmessageResponseData_draft_draftRecipients_to? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  GmessageResponseData_draft_draftRecipients_toBuilder() {
    GmessageResponseData_draft_draftRecipients_to._initializeBuilder(this);
  }

  GmessageResponseData_draft_draftRecipients_toBuilder get _$this {
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
  void replace(GmessageResponseData_draft_draftRecipients_to other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmessageResponseData_draft_draftRecipients_to;
  }

  @override
  void update(
      void Function(GmessageResponseData_draft_draftRecipients_toBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GmessageResponseData_draft_draftRecipients_to build() => _build();

  _$GmessageResponseData_draft_draftRecipients_to _build() {
    final _$result = _$v ??
        new _$GmessageResponseData_draft_draftRecipients_to._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GmessageResponseData_draft_draftRecipients_to',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GmessageResponseData_draft_draftRecipients_to', 'id'),
            fullName: BuiltValueNullFieldError.checkNotNull(fullName,
                r'GmessageResponseData_draft_draftRecipients_to', 'fullName'));
    replace(_$result);
    return _$result;
  }
}

class _$GmessageResponseData_draft_files
    extends GmessageResponseData_draft_files {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final double size;

  factory _$GmessageResponseData_draft_files(
          [void Function(GmessageResponseData_draft_filesBuilder)? updates]) =>
      (new GmessageResponseData_draft_filesBuilder()..update(updates))._build();

  _$GmessageResponseData_draft_files._(
      {required this.G__typename,
      required this.id,
      required this.name,
      required this.size})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GmessageResponseData_draft_files', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GmessageResponseData_draft_files', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GmessageResponseData_draft_files', 'name');
    BuiltValueNullFieldError.checkNotNull(
        size, r'GmessageResponseData_draft_files', 'size');
  }

  @override
  GmessageResponseData_draft_files rebuild(
          void Function(GmessageResponseData_draft_filesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmessageResponseData_draft_filesBuilder toBuilder() =>
      new GmessageResponseData_draft_filesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmessageResponseData_draft_files &&
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
    return (newBuiltValueToStringHelper(r'GmessageResponseData_draft_files')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('size', size))
        .toString();
  }
}

class GmessageResponseData_draft_filesBuilder
    implements
        Builder<GmessageResponseData_draft_files,
            GmessageResponseData_draft_filesBuilder> {
  _$GmessageResponseData_draft_files? _$v;

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

  GmessageResponseData_draft_filesBuilder() {
    GmessageResponseData_draft_files._initializeBuilder(this);
  }

  GmessageResponseData_draft_filesBuilder get _$this {
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
  void replace(GmessageResponseData_draft_files other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmessageResponseData_draft_files;
  }

  @override
  void update(void Function(GmessageResponseData_draft_filesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GmessageResponseData_draft_files build() => _build();

  _$GmessageResponseData_draft_files _build() {
    final _$result = _$v ??
        new _$GmessageResponseData_draft_files._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GmessageResponseData_draft_files', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GmessageResponseData_draft_files', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GmessageResponseData_draft_files', 'name'),
            size: BuiltValueNullFieldError.checkNotNull(
                size, r'GmessageResponseData_draft_files', 'size'));
    replace(_$result);
    return _$result;
  }
}

class _$GmessageResponseData_responseTemplate
    extends GmessageResponseData_responseTemplate {
  @override
  final String G__typename;
  @override
  final String? conversationFinalizedBy;
  @override
  final String messageId;
  @override
  final BuiltList<_i1.GReplyTypeEnum> replyOptions;
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

  factory _$GmessageResponseData_responseTemplate(
          [void Function(GmessageResponseData_responseTemplateBuilder)?
              updates]) =>
      (new GmessageResponseData_responseTemplateBuilder()..update(updates))
          ._build();

  _$GmessageResponseData_responseTemplate._(
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
        G__typename, r'GmessageResponseData_responseTemplate', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        messageId, r'GmessageResponseData_responseTemplate', 'messageId');
    BuiltValueNullFieldError.checkNotNull(
        replyOptions, r'GmessageResponseData_responseTemplate', 'replyOptions');
    BuiltValueNullFieldError.checkNotNull(conversationId,
        r'GmessageResponseData_responseTemplate', 'conversationId');
    BuiltValueNullFieldError.checkNotNull(
        from, r'GmessageResponseData_responseTemplate', 'from');
    BuiltValueNullFieldError.checkNotNull(
        to, r'GmessageResponseData_responseTemplate', 'to');
    BuiltValueNullFieldError.checkNotNull(remainSizeFiles,
        r'GmessageResponseData_responseTemplate', 'remainSizeFiles');
  }

  @override
  GmessageResponseData_responseTemplate rebuild(
          void Function(GmessageResponseData_responseTemplateBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmessageResponseData_responseTemplateBuilder toBuilder() =>
      new GmessageResponseData_responseTemplateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmessageResponseData_responseTemplate &&
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
            r'GmessageResponseData_responseTemplate')
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

class GmessageResponseData_responseTemplateBuilder
    implements
        Builder<GmessageResponseData_responseTemplate,
            GmessageResponseData_responseTemplateBuilder> {
  _$GmessageResponseData_responseTemplate? _$v;

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

  ListBuilder<_i1.GReplyTypeEnum>? _replyOptions;
  ListBuilder<_i1.GReplyTypeEnum> get replyOptions =>
      _$this._replyOptions ??= new ListBuilder<_i1.GReplyTypeEnum>();
  set replyOptions(ListBuilder<_i1.GReplyTypeEnum>? replyOptions) =>
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

  GmessageResponseData_responseTemplateBuilder() {
    GmessageResponseData_responseTemplate._initializeBuilder(this);
  }

  GmessageResponseData_responseTemplateBuilder get _$this {
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
  void replace(GmessageResponseData_responseTemplate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmessageResponseData_responseTemplate;
  }

  @override
  void update(
      void Function(GmessageResponseData_responseTemplateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GmessageResponseData_responseTemplate build() => _build();

  _$GmessageResponseData_responseTemplate _build() {
    _$GmessageResponseData_responseTemplate _$result;
    try {
      _$result = _$v ??
          new _$GmessageResponseData_responseTemplate._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GmessageResponseData_responseTemplate', 'G__typename'),
              conversationFinalizedBy: conversationFinalizedBy,
              messageId: BuiltValueNullFieldError.checkNotNull(
                  messageId, r'GmessageResponseData_responseTemplate', 'messageId'),
              replyOptions: replyOptions.build(),
              conversationId: BuiltValueNullFieldError.checkNotNull(
                  conversationId,
                  r'GmessageResponseData_responseTemplate',
                  'conversationId'),
              from: BuiltValueNullFieldError.checkNotNull(
                  from, r'GmessageResponseData_responseTemplate', 'from'),
              to: BuiltValueNullFieldError.checkNotNull(
                  to, r'GmessageResponseData_responseTemplate', 'to'),
              recipients: _recipients?.build(),
              remainSizeFiles: BuiltValueNullFieldError.checkNotNull(
                  remainSizeFiles,
                  r'GmessageResponseData_responseTemplate',
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
            r'GmessageResponseData_responseTemplate',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GContactDetailFragmentData extends GContactDetailFragmentData {
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

  factory _$GContactDetailFragmentData(
          [void Function(GContactDetailFragmentDataBuilder)? updates]) =>
      (new GContactDetailFragmentDataBuilder()..update(updates))._build();

  _$GContactDetailFragmentData._(
      {required this.G__typename,
      required this.name,
      required this.type,
      this.idNat,
      this.typeBal})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GContactDetailFragmentData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GContactDetailFragmentData', 'name');
    BuiltValueNullFieldError.checkNotNull(
        type, r'GContactDetailFragmentData', 'type');
  }

  @override
  GContactDetailFragmentData rebuild(
          void Function(GContactDetailFragmentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GContactDetailFragmentDataBuilder toBuilder() =>
      new GContactDetailFragmentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GContactDetailFragmentData &&
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
    return (newBuiltValueToStringHelper(r'GContactDetailFragmentData')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('type', type)
          ..add('idNat', idNat)
          ..add('typeBal', typeBal))
        .toString();
  }
}

class GContactDetailFragmentDataBuilder
    implements
        Builder<GContactDetailFragmentData, GContactDetailFragmentDataBuilder> {
  _$GContactDetailFragmentData? _$v;

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

  GContactDetailFragmentDataBuilder() {
    GContactDetailFragmentData._initializeBuilder(this);
  }

  GContactDetailFragmentDataBuilder get _$this {
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
  void replace(GContactDetailFragmentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GContactDetailFragmentData;
  }

  @override
  void update(void Function(GContactDetailFragmentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GContactDetailFragmentData build() => _build();

  _$GContactDetailFragmentData _build() {
    final _$result = _$v ??
        new _$GContactDetailFragmentData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GContactDetailFragmentData', 'G__typename'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GContactDetailFragmentData', 'name'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'GContactDetailFragmentData', 'type'),
            idNat: idNat,
            typeBal: typeBal);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
