// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_messagerie_get_inbox.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_inboxData> _$ggetInboxDataSerializer =
    new _$Gget_inboxDataSerializer();
Serializer<Gget_inboxData_getInbox> _$ggetInboxDataGetInboxSerializer =
    new _$Gget_inboxData_getInboxSerializer();
Serializer<Gget_inboxData_getInbox_conversations>
    _$ggetInboxDataGetInboxConversationsSerializer =
    new _$Gget_inboxData_getInbox_conversationsSerializer();
Serializer<Gget_inboxData_getInbox_contacts>
    _$ggetInboxDataGetInboxContactsSerializer =
    new _$Gget_inboxData_getInbox_contactsSerializer();

class _$Gget_inboxDataSerializer
    implements StructuredSerializer<Gget_inboxData> {
  @override
  final Iterable<Type> types = const [Gget_inboxData, _$Gget_inboxData];
  @override
  final String wireName = 'Gget_inboxData';

  @override
  Iterable<Object?> serialize(Serializers serializers, Gget_inboxData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'getInbox',
      serializers.serialize(object.getInbox,
          specifiedType: const FullType(Gget_inboxData_getInbox)),
    ];

    return result;
  }

  @override
  Gget_inboxData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_inboxDataBuilder();

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
        case 'getInbox':
          result.getInbox.replace(serializers.deserialize(value,
                  specifiedType: const FullType(Gget_inboxData_getInbox))!
              as Gget_inboxData_getInbox);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_inboxData_getInboxSerializer
    implements StructuredSerializer<Gget_inboxData_getInbox> {
  @override
  final Iterable<Type> types = const [
    Gget_inboxData_getInbox,
    _$Gget_inboxData_getInbox
  ];
  @override
  final String wireName = 'Gget_inboxData_getInbox';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_inboxData_getInbox object,
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
          specifiedType: const FullType(BuiltList,
              const [const FullType(Gget_inboxData_getInbox_contacts)])),
    ];
    Object? value;
    value = object.conversations;
    if (value != null) {
      result
        ..add('conversations')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(Gget_inboxData_getInbox_conversations)
            ])));
    }
    return result;
  }

  @override
  Gget_inboxData_getInbox deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_inboxData_getInboxBuilder();

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
                const FullType(Gget_inboxData_getInbox_conversations)
              ]))! as BuiltList<Object?>);
          break;
        case 'contacts':
          result.contacts.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(Gget_inboxData_getInbox_contacts)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_inboxData_getInbox_conversationsSerializer
    implements StructuredSerializer<Gget_inboxData_getInbox_conversations> {
  @override
  final Iterable<Type> types = const [
    Gget_inboxData_getInbox_conversations,
    _$Gget_inboxData_getInbox_conversations
  ];
  @override
  final String wireName = 'Gget_inboxData_getInbox_conversations';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_inboxData_getInbox_conversations object,
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
  Gget_inboxData_getInbox_conversations deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_inboxData_getInbox_conversationsBuilder();

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

class _$Gget_inboxData_getInbox_contactsSerializer
    implements StructuredSerializer<Gget_inboxData_getInbox_contacts> {
  @override
  final Iterable<Type> types = const [
    Gget_inboxData_getInbox_contacts,
    _$Gget_inboxData_getInbox_contacts
  ];
  @override
  final String wireName = 'Gget_inboxData_getInbox_contacts';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_inboxData_getInbox_contacts object,
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
  Gget_inboxData_getInbox_contacts deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_inboxData_getInbox_contactsBuilder();

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

class _$Gget_inboxData extends Gget_inboxData {
  @override
  final String G__typename;
  @override
  final Gget_inboxData_getInbox getInbox;

  factory _$Gget_inboxData([void Function(Gget_inboxDataBuilder)? updates]) =>
      (new Gget_inboxDataBuilder()..update(updates))._build();

  _$Gget_inboxData._({required this.G__typename, required this.getInbox})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_inboxData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        getInbox, r'Gget_inboxData', 'getInbox');
  }

  @override
  Gget_inboxData rebuild(void Function(Gget_inboxDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_inboxDataBuilder toBuilder() =>
      new Gget_inboxDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_inboxData &&
        G__typename == other.G__typename &&
        getInbox == other.getInbox;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getInbox.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_inboxData')
          ..add('G__typename', G__typename)
          ..add('getInbox', getInbox))
        .toString();
  }
}

class Gget_inboxDataBuilder
    implements Builder<Gget_inboxData, Gget_inboxDataBuilder> {
  _$Gget_inboxData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_inboxData_getInboxBuilder? _getInbox;
  Gget_inboxData_getInboxBuilder get getInbox =>
      _$this._getInbox ??= new Gget_inboxData_getInboxBuilder();
  set getInbox(Gget_inboxData_getInboxBuilder? getInbox) =>
      _$this._getInbox = getInbox;

  Gget_inboxDataBuilder() {
    Gget_inboxData._initializeBuilder(this);
  }

  Gget_inboxDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getInbox = $v.getInbox.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_inboxData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_inboxData;
  }

  @override
  void update(void Function(Gget_inboxDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_inboxData build() => _build();

  _$Gget_inboxData _build() {
    _$Gget_inboxData _$result;
    try {
      _$result = _$v ??
          new _$Gget_inboxData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gget_inboxData', 'G__typename'),
              getInbox: getInbox.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getInbox';
        getInbox.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_inboxData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_inboxData_getInbox extends Gget_inboxData_getInbox {
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
  final BuiltList<Gget_inboxData_getInbox_conversations>? conversations;
  @override
  final BuiltList<Gget_inboxData_getInbox_contacts> contacts;

  factory _$Gget_inboxData_getInbox(
          [void Function(Gget_inboxData_getInboxBuilder)? updates]) =>
      (new Gget_inboxData_getInboxBuilder()..update(updates))._build();

  _$Gget_inboxData_getInbox._(
      {required this.G__typename,
      required this.userMail,
      required this.totalElements,
      required this.totalPages,
      required this.oneOrMoreUnreadConversation,
      this.conversations,
      required this.contacts})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_inboxData_getInbox', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        userMail, r'Gget_inboxData_getInbox', 'userMail');
    BuiltValueNullFieldError.checkNotNull(
        totalElements, r'Gget_inboxData_getInbox', 'totalElements');
    BuiltValueNullFieldError.checkNotNull(
        totalPages, r'Gget_inboxData_getInbox', 'totalPages');
    BuiltValueNullFieldError.checkNotNull(oneOrMoreUnreadConversation,
        r'Gget_inboxData_getInbox', 'oneOrMoreUnreadConversation');
    BuiltValueNullFieldError.checkNotNull(
        contacts, r'Gget_inboxData_getInbox', 'contacts');
  }

  @override
  Gget_inboxData_getInbox rebuild(
          void Function(Gget_inboxData_getInboxBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_inboxData_getInboxBuilder toBuilder() =>
      new Gget_inboxData_getInboxBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_inboxData_getInbox &&
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
    return (newBuiltValueToStringHelper(r'Gget_inboxData_getInbox')
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

class Gget_inboxData_getInboxBuilder
    implements
        Builder<Gget_inboxData_getInbox, Gget_inboxData_getInboxBuilder> {
  _$Gget_inboxData_getInbox? _$v;

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

  ListBuilder<Gget_inboxData_getInbox_conversations>? _conversations;
  ListBuilder<Gget_inboxData_getInbox_conversations> get conversations =>
      _$this._conversations ??=
          new ListBuilder<Gget_inboxData_getInbox_conversations>();
  set conversations(
          ListBuilder<Gget_inboxData_getInbox_conversations>? conversations) =>
      _$this._conversations = conversations;

  ListBuilder<Gget_inboxData_getInbox_contacts>? _contacts;
  ListBuilder<Gget_inboxData_getInbox_contacts> get contacts =>
      _$this._contacts ??= new ListBuilder<Gget_inboxData_getInbox_contacts>();
  set contacts(ListBuilder<Gget_inboxData_getInbox_contacts>? contacts) =>
      _$this._contacts = contacts;

  Gget_inboxData_getInboxBuilder() {
    Gget_inboxData_getInbox._initializeBuilder(this);
  }

  Gget_inboxData_getInboxBuilder get _$this {
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
  void replace(Gget_inboxData_getInbox other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_inboxData_getInbox;
  }

  @override
  void update(void Function(Gget_inboxData_getInboxBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_inboxData_getInbox build() => _build();

  _$Gget_inboxData_getInbox _build() {
    _$Gget_inboxData_getInbox _$result;
    try {
      _$result = _$v ??
          new _$Gget_inboxData_getInbox._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gget_inboxData_getInbox', 'G__typename'),
              userMail: BuiltValueNullFieldError.checkNotNull(
                  userMail, r'Gget_inboxData_getInbox', 'userMail'),
              totalElements: BuiltValueNullFieldError.checkNotNull(
                  totalElements, r'Gget_inboxData_getInbox', 'totalElements'),
              totalPages: BuiltValueNullFieldError.checkNotNull(
                  totalPages, r'Gget_inboxData_getInbox', 'totalPages'),
              oneOrMoreUnreadConversation:
                  BuiltValueNullFieldError.checkNotNull(
                      oneOrMoreUnreadConversation,
                      r'Gget_inboxData_getInbox',
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
            r'Gget_inboxData_getInbox', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_inboxData_getInbox_conversations
    extends Gget_inboxData_getInbox_conversations {
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

  factory _$Gget_inboxData_getInbox_conversations(
          [void Function(Gget_inboxData_getInbox_conversationsBuilder)?
              updates]) =>
      (new Gget_inboxData_getInbox_conversationsBuilder()..update(updates))
          ._build();

  _$Gget_inboxData_getInbox_conversations._(
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
        G__typename, r'Gget_inboxData_getInbox_conversations', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'Gget_inboxData_getInbox_conversations', 'id');
    BuiltValueNullFieldError.checkNotNull(
        date, r'Gget_inboxData_getInbox_conversations', 'date');
    BuiltValueNullFieldError.checkNotNull(hasAttachment,
        r'Gget_inboxData_getInbox_conversations', 'hasAttachment');
    BuiltValueNullFieldError.checkNotNull(
        subject, r'Gget_inboxData_getInbox_conversations', 'subject');
    BuiltValueNullFieldError.checkNotNull(healthProfessionalNames,
        r'Gget_inboxData_getInbox_conversations', 'healthProfessionalNames');
    BuiltValueNullFieldError.checkNotNull(
        read, r'Gget_inboxData_getInbox_conversations', 'read');
    BuiltValueNullFieldError.checkNotNull(
        hasDraft, r'Gget_inboxData_getInbox_conversations', 'hasDraft');
    BuiltValueNullFieldError.checkNotNull(
        isNewMessage, r'Gget_inboxData_getInbox_conversations', 'isNewMessage');
  }

  @override
  Gget_inboxData_getInbox_conversations rebuild(
          void Function(Gget_inboxData_getInbox_conversationsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_inboxData_getInbox_conversationsBuilder toBuilder() =>
      new Gget_inboxData_getInbox_conversationsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_inboxData_getInbox_conversations &&
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
            r'Gget_inboxData_getInbox_conversations')
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

class Gget_inboxData_getInbox_conversationsBuilder
    implements
        Builder<Gget_inboxData_getInbox_conversations,
            Gget_inboxData_getInbox_conversationsBuilder> {
  _$Gget_inboxData_getInbox_conversations? _$v;

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

  Gget_inboxData_getInbox_conversationsBuilder() {
    Gget_inboxData_getInbox_conversations._initializeBuilder(this);
  }

  Gget_inboxData_getInbox_conversationsBuilder get _$this {
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
  void replace(Gget_inboxData_getInbox_conversations other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_inboxData_getInbox_conversations;
  }

  @override
  void update(
      void Function(Gget_inboxData_getInbox_conversationsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_inboxData_getInbox_conversations build() => _build();

  _$Gget_inboxData_getInbox_conversations _build() {
    _$Gget_inboxData_getInbox_conversations _$result;
    try {
      _$result = _$v ??
          new _$Gget_inboxData_getInbox_conversations._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gget_inboxData_getInbox_conversations', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'Gget_inboxData_getInbox_conversations', 'id'),
              date: BuiltValueNullFieldError.checkNotNull(
                  date, r'Gget_inboxData_getInbox_conversations', 'date'),
              hasAttachment: BuiltValueNullFieldError.checkNotNull(
                  hasAttachment,
                  r'Gget_inboxData_getInbox_conversations',
                  'hasAttachment'),
              subject: BuiltValueNullFieldError.checkNotNull(
                  subject, r'Gget_inboxData_getInbox_conversations', 'subject'),
              healthProfessionalNames: healthProfessionalNames.build(),
              read: BuiltValueNullFieldError.checkNotNull(
                  read, r'Gget_inboxData_getInbox_conversations', 'read'),
              hasDraft: BuiltValueNullFieldError.checkNotNull(
                  hasDraft, r'Gget_inboxData_getInbox_conversations', 'hasDraft'),
              isNewMessage: BuiltValueNullFieldError.checkNotNull(isNewMessage, r'Gget_inboxData_getInbox_conversations', 'isNewMessage'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'healthProfessionalNames';
        healthProfessionalNames.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_inboxData_getInbox_conversations',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_inboxData_getInbox_contacts
    extends Gget_inboxData_getInbox_contacts {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String fullName;

  factory _$Gget_inboxData_getInbox_contacts(
          [void Function(Gget_inboxData_getInbox_contactsBuilder)? updates]) =>
      (new Gget_inboxData_getInbox_contactsBuilder()..update(updates))._build();

  _$Gget_inboxData_getInbox_contacts._(
      {required this.G__typename, required this.id, required this.fullName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_inboxData_getInbox_contacts', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'Gget_inboxData_getInbox_contacts', 'id');
    BuiltValueNullFieldError.checkNotNull(
        fullName, r'Gget_inboxData_getInbox_contacts', 'fullName');
  }

  @override
  Gget_inboxData_getInbox_contacts rebuild(
          void Function(Gget_inboxData_getInbox_contactsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_inboxData_getInbox_contactsBuilder toBuilder() =>
      new Gget_inboxData_getInbox_contactsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_inboxData_getInbox_contacts &&
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
    return (newBuiltValueToStringHelper(r'Gget_inboxData_getInbox_contacts')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('fullName', fullName))
        .toString();
  }
}

class Gget_inboxData_getInbox_contactsBuilder
    implements
        Builder<Gget_inboxData_getInbox_contacts,
            Gget_inboxData_getInbox_contactsBuilder> {
  _$Gget_inboxData_getInbox_contacts? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  Gget_inboxData_getInbox_contactsBuilder() {
    Gget_inboxData_getInbox_contacts._initializeBuilder(this);
  }

  Gget_inboxData_getInbox_contactsBuilder get _$this {
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
  void replace(Gget_inboxData_getInbox_contacts other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_inboxData_getInbox_contacts;
  }

  @override
  void update(void Function(Gget_inboxData_getInbox_contactsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_inboxData_getInbox_contacts build() => _build();

  _$Gget_inboxData_getInbox_contacts _build() {
    final _$result = _$v ??
        new _$Gget_inboxData_getInbox_contacts._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gget_inboxData_getInbox_contacts', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'Gget_inboxData_getInbox_contacts', 'id'),
            fullName: BuiltValueNullFieldError.checkNotNull(
                fullName, r'Gget_inboxData_getInbox_contacts', 'fullName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
