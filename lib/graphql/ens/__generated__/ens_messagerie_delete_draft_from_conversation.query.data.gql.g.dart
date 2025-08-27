// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_messagerie_delete_draft_from_conversation.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gdelete_draft_from_conversationData>
    _$gdeleteDraftFromConversationDataSerializer =
    new _$Gdelete_draft_from_conversationDataSerializer();
Serializer<Gdelete_draft_from_conversationData_deleteDraftFromConversation>
    _$gdeleteDraftFromConversationDataDeleteDraftFromConversationSerializer =
    new _$Gdelete_draft_from_conversationData_deleteDraftFromConversationSerializer();
Serializer<
        Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox>
    _$gdeleteDraftFromConversationDataDeleteDraftFromConversationMailBoxSerializer =
    new _$Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBoxSerializer();
Serializer<
        Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversations>
    _$gdeleteDraftFromConversationDataDeleteDraftFromConversationMailBoxConversationsSerializer =
    new _$Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversationsSerializer();
Serializer<
        Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_contacts>
    _$gdeleteDraftFromConversationDataDeleteDraftFromConversationMailBoxContactsSerializer =
    new _$Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_contactsSerializer();

class _$Gdelete_draft_from_conversationDataSerializer
    implements StructuredSerializer<Gdelete_draft_from_conversationData> {
  @override
  final Iterable<Type> types = const [
    Gdelete_draft_from_conversationData,
    _$Gdelete_draft_from_conversationData
  ];
  @override
  final String wireName = 'Gdelete_draft_from_conversationData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gdelete_draft_from_conversationData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'deleteDraftFromConversation',
      serializers.serialize(object.deleteDraftFromConversation,
          specifiedType: const FullType(
              Gdelete_draft_from_conversationData_deleteDraftFromConversation)),
    ];

    return result;
  }

  @override
  Gdelete_draft_from_conversationData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_draft_from_conversationDataBuilder();

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
        case 'deleteDraftFromConversation':
          result.deleteDraftFromConversation.replace(serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                      Gdelete_draft_from_conversationData_deleteDraftFromConversation))!
              as Gdelete_draft_from_conversationData_deleteDraftFromConversation);
          break;
      }
    }

    return result.build();
  }
}

class _$Gdelete_draft_from_conversationData_deleteDraftFromConversationSerializer
    implements
        StructuredSerializer<
            Gdelete_draft_from_conversationData_deleteDraftFromConversation> {
  @override
  final Iterable<Type> types = const [
    Gdelete_draft_from_conversationData_deleteDraftFromConversation,
    _$Gdelete_draft_from_conversationData_deleteDraftFromConversation
  ];
  @override
  final String wireName =
      'Gdelete_draft_from_conversationData_deleteDraftFromConversation';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gdelete_draft_from_conversationData_deleteDraftFromConversation object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'success',
      serializers.serialize(object.success,
          specifiedType: const FullType(bool)),
      'mailBox',
      serializers.serialize(object.mailBox,
          specifiedType: const FullType(
              Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox)),
    ];

    return result;
  }

  @override
  Gdelete_draft_from_conversationData_deleteDraftFromConversation deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gdelete_draft_from_conversationData_deleteDraftFromConversationBuilder();

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
        case 'success':
          result.success = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'mailBox':
          result.mailBox.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox))!
              as Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox);
          break;
      }
    }

    return result.build();
  }
}

class _$Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBoxSerializer
    implements
        StructuredSerializer<
            Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox> {
  @override
  final Iterable<Type> types = const [
    Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox,
    _$Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox
  ];
  @override
  final String wireName =
      'Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox
          object,
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
            const FullType(
                Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_contacts)
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
                  Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversations)
            ])));
    }
    return result;
  }

  @override
  Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBoxBuilder();

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
                    Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversations)
              ]))! as BuiltList<Object?>);
          break;
        case 'contacts':
          result.contacts.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_contacts)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversationsSerializer
    implements
        StructuredSerializer<
            Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversations> {
  @override
  final Iterable<Type> types = const [
    Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversations,
    _$Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversations
  ];
  @override
  final String wireName =
      'Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversations';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversations
          object,
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
  Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversations
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversationsBuilder();

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

class _$Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_contactsSerializer
    implements
        StructuredSerializer<
            Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_contacts> {
  @override
  final Iterable<Type> types = const [
    Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_contacts,
    _$Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_contacts
  ];
  @override
  final String wireName =
      'Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_contacts';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_contacts
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
  Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_contacts
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_contactsBuilder();

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

class _$Gdelete_draft_from_conversationData
    extends Gdelete_draft_from_conversationData {
  @override
  final String G__typename;
  @override
  final Gdelete_draft_from_conversationData_deleteDraftFromConversation
      deleteDraftFromConversation;

  factory _$Gdelete_draft_from_conversationData(
          [void Function(Gdelete_draft_from_conversationDataBuilder)?
              updates]) =>
      (new Gdelete_draft_from_conversationDataBuilder()..update(updates))
          ._build();

  _$Gdelete_draft_from_conversationData._(
      {required this.G__typename, required this.deleteDraftFromConversation})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gdelete_draft_from_conversationData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(deleteDraftFromConversation,
        r'Gdelete_draft_from_conversationData', 'deleteDraftFromConversation');
  }

  @override
  Gdelete_draft_from_conversationData rebuild(
          void Function(Gdelete_draft_from_conversationDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_draft_from_conversationDataBuilder toBuilder() =>
      new Gdelete_draft_from_conversationDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_draft_from_conversationData &&
        G__typename == other.G__typename &&
        deleteDraftFromConversation == other.deleteDraftFromConversation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, deleteDraftFromConversation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gdelete_draft_from_conversationData')
          ..add('G__typename', G__typename)
          ..add('deleteDraftFromConversation', deleteDraftFromConversation))
        .toString();
  }
}

class Gdelete_draft_from_conversationDataBuilder
    implements
        Builder<Gdelete_draft_from_conversationData,
            Gdelete_draft_from_conversationDataBuilder> {
  _$Gdelete_draft_from_conversationData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gdelete_draft_from_conversationData_deleteDraftFromConversationBuilder?
      _deleteDraftFromConversation;
  Gdelete_draft_from_conversationData_deleteDraftFromConversationBuilder
      get deleteDraftFromConversation => _$this._deleteDraftFromConversation ??=
          new Gdelete_draft_from_conversationData_deleteDraftFromConversationBuilder();
  set deleteDraftFromConversation(
          Gdelete_draft_from_conversationData_deleteDraftFromConversationBuilder?
              deleteDraftFromConversation) =>
      _$this._deleteDraftFromConversation = deleteDraftFromConversation;

  Gdelete_draft_from_conversationDataBuilder() {
    Gdelete_draft_from_conversationData._initializeBuilder(this);
  }

  Gdelete_draft_from_conversationDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _deleteDraftFromConversation = $v.deleteDraftFromConversation.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_draft_from_conversationData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_draft_from_conversationData;
  }

  @override
  void update(
      void Function(Gdelete_draft_from_conversationDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_draft_from_conversationData build() => _build();

  _$Gdelete_draft_from_conversationData _build() {
    _$Gdelete_draft_from_conversationData _$result;
    try {
      _$result = _$v ??
          new _$Gdelete_draft_from_conversationData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gdelete_draft_from_conversationData', 'G__typename'),
              deleteDraftFromConversation: deleteDraftFromConversation.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deleteDraftFromConversation';
        deleteDraftFromConversation.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gdelete_draft_from_conversationData',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gdelete_draft_from_conversationData_deleteDraftFromConversation
    extends Gdelete_draft_from_conversationData_deleteDraftFromConversation {
  @override
  final String G__typename;
  @override
  final bool success;
  @override
  final Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox
      mailBox;

  factory _$Gdelete_draft_from_conversationData_deleteDraftFromConversation(
          [void Function(
                  Gdelete_draft_from_conversationData_deleteDraftFromConversationBuilder)?
              updates]) =>
      (new Gdelete_draft_from_conversationData_deleteDraftFromConversationBuilder()
            ..update(updates))
          ._build();

  _$Gdelete_draft_from_conversationData_deleteDraftFromConversation._(
      {required this.G__typename, required this.success, required this.mailBox})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gdelete_draft_from_conversationData_deleteDraftFromConversation',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success,
        r'Gdelete_draft_from_conversationData_deleteDraftFromConversation',
        'success');
    BuiltValueNullFieldError.checkNotNull(
        mailBox,
        r'Gdelete_draft_from_conversationData_deleteDraftFromConversation',
        'mailBox');
  }

  @override
  Gdelete_draft_from_conversationData_deleteDraftFromConversation rebuild(
          void Function(
                  Gdelete_draft_from_conversationData_deleteDraftFromConversationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_draft_from_conversationData_deleteDraftFromConversationBuilder
      toBuilder() =>
          new Gdelete_draft_from_conversationData_deleteDraftFromConversationBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gdelete_draft_from_conversationData_deleteDraftFromConversation &&
        G__typename == other.G__typename &&
        success == other.success &&
        mailBox == other.mailBox;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, mailBox.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gdelete_draft_from_conversationData_deleteDraftFromConversation')
          ..add('G__typename', G__typename)
          ..add('success', success)
          ..add('mailBox', mailBox))
        .toString();
  }
}

class Gdelete_draft_from_conversationData_deleteDraftFromConversationBuilder
    implements
        Builder<Gdelete_draft_from_conversationData_deleteDraftFromConversation,
            Gdelete_draft_from_conversationData_deleteDraftFromConversationBuilder> {
  _$Gdelete_draft_from_conversationData_deleteDraftFromConversation? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBoxBuilder?
      _mailBox;
  Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBoxBuilder
      get mailBox => _$this._mailBox ??=
          new Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBoxBuilder();
  set mailBox(
          Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBoxBuilder?
              mailBox) =>
      _$this._mailBox = mailBox;

  Gdelete_draft_from_conversationData_deleteDraftFromConversationBuilder() {
    Gdelete_draft_from_conversationData_deleteDraftFromConversation
        ._initializeBuilder(this);
  }

  Gdelete_draft_from_conversationData_deleteDraftFromConversationBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _mailBox = $v.mailBox.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gdelete_draft_from_conversationData_deleteDraftFromConversation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gdelete_draft_from_conversationData_deleteDraftFromConversation;
  }

  @override
  void update(
      void Function(
              Gdelete_draft_from_conversationData_deleteDraftFromConversationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_draft_from_conversationData_deleteDraftFromConversation build() =>
      _build();

  _$Gdelete_draft_from_conversationData_deleteDraftFromConversation _build() {
    _$Gdelete_draft_from_conversationData_deleteDraftFromConversation _$result;
    try {
      _$result = _$v ??
          new _$Gdelete_draft_from_conversationData_deleteDraftFromConversation
              ._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gdelete_draft_from_conversationData_deleteDraftFromConversation',
                  'G__typename'),
              success: BuiltValueNullFieldError.checkNotNull(
                  success,
                  r'Gdelete_draft_from_conversationData_deleteDraftFromConversation',
                  'success'),
              mailBox: mailBox.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mailBox';
        mailBox.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gdelete_draft_from_conversationData_deleteDraftFromConversation',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox
    extends Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox {
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
  final BuiltList<
          Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversations>?
      conversations;
  @override
  final BuiltList<
          Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_contacts>
      contacts;

  factory _$Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox(
          [void Function(
                  Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBoxBuilder)?
              updates]) =>
      (new Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBoxBuilder()
            ..update(updates))
          ._build();

  _$Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox._(
      {required this.G__typename,
      required this.userMail,
      required this.totalElements,
      required this.totalPages,
      required this.oneOrMoreUnreadConversation,
      this.conversations,
      required this.contacts})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        userMail,
        r'Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox',
        'userMail');
    BuiltValueNullFieldError.checkNotNull(
        totalElements,
        r'Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox',
        'totalElements');
    BuiltValueNullFieldError.checkNotNull(
        totalPages,
        r'Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox',
        'totalPages');
    BuiltValueNullFieldError.checkNotNull(
        oneOrMoreUnreadConversation,
        r'Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox',
        'oneOrMoreUnreadConversation');
    BuiltValueNullFieldError.checkNotNull(
        contacts,
        r'Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox',
        'contacts');
  }

  @override
  Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox rebuild(
          void Function(
                  Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBoxBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBoxBuilder
      toBuilder() =>
          new Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBoxBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox &&
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
            r'Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox')
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

class Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBoxBuilder
    implements
        Builder<
            Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox,
            Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBoxBuilder> {
  _$Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox?
      _$v;

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

  ListBuilder<
          Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversations>?
      _conversations;
  ListBuilder<
          Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversations>
      get conversations => _$this._conversations ??= new ListBuilder<
          Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversations>();
  set conversations(
          ListBuilder<
                  Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversations>?
              conversations) =>
      _$this._conversations = conversations;

  ListBuilder<
          Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_contacts>?
      _contacts;
  ListBuilder<
          Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_contacts>
      get contacts => _$this._contacts ??= new ListBuilder<
          Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_contacts>();
  set contacts(
          ListBuilder<
                  Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_contacts>?
              contacts) =>
      _$this._contacts = contacts;

  Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBoxBuilder() {
    Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox
        ._initializeBuilder(this);
  }

  Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBoxBuilder
      get _$this {
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
  void replace(
      Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox;
  }

  @override
  void update(
      void Function(
              Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBoxBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox
      build() => _build();

  _$Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox
      _build() {
    _$Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox
        _$result;
    try {
      _$result = _$v ??
          new _$Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox', 'G__typename'),
              userMail: BuiltValueNullFieldError.checkNotNull(
                  userMail,
                  r'Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox',
                  'userMail'),
              totalElements: BuiltValueNullFieldError.checkNotNull(
                  totalElements,
                  r'Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox',
                  'totalElements'),
              totalPages: BuiltValueNullFieldError.checkNotNull(
                  totalPages,
                  r'Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox',
                  'totalPages'),
              oneOrMoreUnreadConversation: BuiltValueNullFieldError.checkNotNull(
                  oneOrMoreUnreadConversation,
                  r'Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox',
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
            r'Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversations
    extends Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversations {
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

  factory _$Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversations(
          [void Function(
                  Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversationsBuilder)?
              updates]) =>
      (new Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversationsBuilder()
            ..update(updates))
          ._build();

  _$Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversations._(
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
        r'Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversations',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversations',
        'id');
    BuiltValueNullFieldError.checkNotNull(
        date,
        r'Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversations',
        'date');
    BuiltValueNullFieldError.checkNotNull(
        hasAttachment,
        r'Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversations',
        'hasAttachment');
    BuiltValueNullFieldError.checkNotNull(
        subject,
        r'Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversations',
        'subject');
    BuiltValueNullFieldError.checkNotNull(
        healthProfessionalNames,
        r'Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversations',
        'healthProfessionalNames');
    BuiltValueNullFieldError.checkNotNull(
        read,
        r'Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversations',
        'read');
    BuiltValueNullFieldError.checkNotNull(
        hasDraft,
        r'Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversations',
        'hasDraft');
    BuiltValueNullFieldError.checkNotNull(
        isNewMessage,
        r'Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversations',
        'isNewMessage');
  }

  @override
  Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversations
      rebuild(
              void Function(
                      Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversationsBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversationsBuilder
      toBuilder() =>
          new Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversationsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversations &&
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
            r'Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversations')
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

class Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversationsBuilder
    implements
        Builder<
            Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversations,
            Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversationsBuilder> {
  _$Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversations?
      _$v;

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

  Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversationsBuilder() {
    Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversations
        ._initializeBuilder(this);
  }

  Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversationsBuilder
      get _$this {
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
  void replace(
      Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversations
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversations;
  }

  @override
  void update(
      void Function(
              Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversationsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversations
      build() => _build();

  _$Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversations
      _build() {
    _$Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversations
        _$result;
    try {
      _$result = _$v ??
          new _$Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversations._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversations',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversations', 'id'),
              date: BuiltValueNullFieldError.checkNotNull(
                  date, r'Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversations', 'date'),
              hasAttachment: BuiltValueNullFieldError.checkNotNull(
                  hasAttachment,
                  r'Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversations',
                  'hasAttachment'),
              subject: BuiltValueNullFieldError.checkNotNull(
                  subject, r'Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversations', 'subject'),
              healthProfessionalNames: healthProfessionalNames.build(),
              read: BuiltValueNullFieldError.checkNotNull(
                  read, r'Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversations', 'read'),
              hasDraft: BuiltValueNullFieldError.checkNotNull(hasDraft, r'Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversations', 'hasDraft'),
              isNewMessage: BuiltValueNullFieldError.checkNotNull(isNewMessage, r'Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversations', 'isNewMessage'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'healthProfessionalNames';
        healthProfessionalNames.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversations',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_contacts
    extends Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_contacts {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String fullName;

  factory _$Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_contacts(
          [void Function(
                  Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_contactsBuilder)?
              updates]) =>
      (new Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_contactsBuilder()
            ..update(updates))
          ._build();

  _$Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_contacts._(
      {required this.G__typename, required this.id, required this.fullName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_contacts',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_contacts',
        'id');
    BuiltValueNullFieldError.checkNotNull(
        fullName,
        r'Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_contacts',
        'fullName');
  }

  @override
  Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_contacts
      rebuild(
              void Function(
                      Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_contactsBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_contactsBuilder
      toBuilder() =>
          new Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_contactsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_contacts &&
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
            r'Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_contacts')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('fullName', fullName))
        .toString();
  }
}

class Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_contactsBuilder
    implements
        Builder<
            Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_contacts,
            Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_contactsBuilder> {
  _$Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_contacts?
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

  Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_contactsBuilder() {
    Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_contacts
        ._initializeBuilder(this);
  }

  Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_contactsBuilder
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
      Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_contacts
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_contacts;
  }

  @override
  void update(
      void Function(
              Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_contactsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_contacts
      build() => _build();

  _$Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_contacts
      _build() {
    final _$result = _$v ??
        new _$Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_contacts
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_contacts',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id,
                r'Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_contacts',
                'id'),
            fullName: BuiltValueNullFieldError.checkNotNull(
                fullName,
                r'Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_contacts',
                'fullName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
