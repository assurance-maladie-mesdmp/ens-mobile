// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_messagerie_mailbox.fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GmailBoxData> _$gmailBoxDataSerializer =
    new _$GmailBoxDataSerializer();
Serializer<GmailBoxData_conversations> _$gmailBoxDataConversationsSerializer =
    new _$GmailBoxData_conversationsSerializer();
Serializer<GmailBoxData_contacts> _$gmailBoxDataContactsSerializer =
    new _$GmailBoxData_contactsSerializer();

class _$GmailBoxDataSerializer implements StructuredSerializer<GmailBoxData> {
  @override
  final Iterable<Type> types = const [GmailBoxData, _$GmailBoxData];
  @override
  final String wireName = 'GmailBoxData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GmailBoxData object,
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
          specifiedType: const FullType(
              BuiltList, const [const FullType(GmailBoxData_contacts)])),
    ];
    Object? value;
    value = object.conversations;
    if (value != null) {
      result
        ..add('conversations')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType(GmailBoxData_conversations)])));
    }
    return result;
  }

  @override
  GmailBoxData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GmailBoxDataBuilder();

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
                const FullType(GmailBoxData_conversations)
              ]))! as BuiltList<Object?>);
          break;
        case 'contacts':
          result.contacts.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GmailBoxData_contacts)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GmailBoxData_conversationsSerializer
    implements StructuredSerializer<GmailBoxData_conversations> {
  @override
  final Iterable<Type> types = const [
    GmailBoxData_conversations,
    _$GmailBoxData_conversations
  ];
  @override
  final String wireName = 'GmailBoxData_conversations';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GmailBoxData_conversations object,
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
  GmailBoxData_conversations deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GmailBoxData_conversationsBuilder();

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

class _$GmailBoxData_contactsSerializer
    implements StructuredSerializer<GmailBoxData_contacts> {
  @override
  final Iterable<Type> types = const [
    GmailBoxData_contacts,
    _$GmailBoxData_contacts
  ];
  @override
  final String wireName = 'GmailBoxData_contacts';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GmailBoxData_contacts object,
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
  GmailBoxData_contacts deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GmailBoxData_contactsBuilder();

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

class _$GmailBoxData extends GmailBoxData {
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
  final BuiltList<GmailBoxData_conversations>? conversations;
  @override
  final BuiltList<GmailBoxData_contacts> contacts;

  factory _$GmailBoxData([void Function(GmailBoxDataBuilder)? updates]) =>
      (new GmailBoxDataBuilder()..update(updates))._build();

  _$GmailBoxData._(
      {required this.G__typename,
      required this.userMail,
      required this.totalElements,
      required this.totalPages,
      required this.oneOrMoreUnreadConversation,
      this.conversations,
      required this.contacts})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GmailBoxData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        userMail, r'GmailBoxData', 'userMail');
    BuiltValueNullFieldError.checkNotNull(
        totalElements, r'GmailBoxData', 'totalElements');
    BuiltValueNullFieldError.checkNotNull(
        totalPages, r'GmailBoxData', 'totalPages');
    BuiltValueNullFieldError.checkNotNull(oneOrMoreUnreadConversation,
        r'GmailBoxData', 'oneOrMoreUnreadConversation');
    BuiltValueNullFieldError.checkNotNull(
        contacts, r'GmailBoxData', 'contacts');
  }

  @override
  GmailBoxData rebuild(void Function(GmailBoxDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmailBoxDataBuilder toBuilder() => new GmailBoxDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmailBoxData &&
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
    return (newBuiltValueToStringHelper(r'GmailBoxData')
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

class GmailBoxDataBuilder
    implements Builder<GmailBoxData, GmailBoxDataBuilder> {
  _$GmailBoxData? _$v;

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

  ListBuilder<GmailBoxData_conversations>? _conversations;
  ListBuilder<GmailBoxData_conversations> get conversations =>
      _$this._conversations ??= new ListBuilder<GmailBoxData_conversations>();
  set conversations(ListBuilder<GmailBoxData_conversations>? conversations) =>
      _$this._conversations = conversations;

  ListBuilder<GmailBoxData_contacts>? _contacts;
  ListBuilder<GmailBoxData_contacts> get contacts =>
      _$this._contacts ??= new ListBuilder<GmailBoxData_contacts>();
  set contacts(ListBuilder<GmailBoxData_contacts>? contacts) =>
      _$this._contacts = contacts;

  GmailBoxDataBuilder() {
    GmailBoxData._initializeBuilder(this);
  }

  GmailBoxDataBuilder get _$this {
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
  void replace(GmailBoxData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmailBoxData;
  }

  @override
  void update(void Function(GmailBoxDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GmailBoxData build() => _build();

  _$GmailBoxData _build() {
    _$GmailBoxData _$result;
    try {
      _$result = _$v ??
          new _$GmailBoxData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GmailBoxData', 'G__typename'),
              userMail: BuiltValueNullFieldError.checkNotNull(
                  userMail, r'GmailBoxData', 'userMail'),
              totalElements: BuiltValueNullFieldError.checkNotNull(
                  totalElements, r'GmailBoxData', 'totalElements'),
              totalPages: BuiltValueNullFieldError.checkNotNull(
                  totalPages, r'GmailBoxData', 'totalPages'),
              oneOrMoreUnreadConversation:
                  BuiltValueNullFieldError.checkNotNull(
                      oneOrMoreUnreadConversation,
                      r'GmailBoxData',
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
            r'GmailBoxData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GmailBoxData_conversations extends GmailBoxData_conversations {
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

  factory _$GmailBoxData_conversations(
          [void Function(GmailBoxData_conversationsBuilder)? updates]) =>
      (new GmailBoxData_conversationsBuilder()..update(updates))._build();

  _$GmailBoxData_conversations._(
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
        G__typename, r'GmailBoxData_conversations', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GmailBoxData_conversations', 'id');
    BuiltValueNullFieldError.checkNotNull(
        date, r'GmailBoxData_conversations', 'date');
    BuiltValueNullFieldError.checkNotNull(
        hasAttachment, r'GmailBoxData_conversations', 'hasAttachment');
    BuiltValueNullFieldError.checkNotNull(
        subject, r'GmailBoxData_conversations', 'subject');
    BuiltValueNullFieldError.checkNotNull(healthProfessionalNames,
        r'GmailBoxData_conversations', 'healthProfessionalNames');
    BuiltValueNullFieldError.checkNotNull(
        read, r'GmailBoxData_conversations', 'read');
    BuiltValueNullFieldError.checkNotNull(
        hasDraft, r'GmailBoxData_conversations', 'hasDraft');
    BuiltValueNullFieldError.checkNotNull(
        isNewMessage, r'GmailBoxData_conversations', 'isNewMessage');
  }

  @override
  GmailBoxData_conversations rebuild(
          void Function(GmailBoxData_conversationsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmailBoxData_conversationsBuilder toBuilder() =>
      new GmailBoxData_conversationsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmailBoxData_conversations &&
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
    return (newBuiltValueToStringHelper(r'GmailBoxData_conversations')
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

class GmailBoxData_conversationsBuilder
    implements
        Builder<GmailBoxData_conversations, GmailBoxData_conversationsBuilder> {
  _$GmailBoxData_conversations? _$v;

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

  GmailBoxData_conversationsBuilder() {
    GmailBoxData_conversations._initializeBuilder(this);
  }

  GmailBoxData_conversationsBuilder get _$this {
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
  void replace(GmailBoxData_conversations other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmailBoxData_conversations;
  }

  @override
  void update(void Function(GmailBoxData_conversationsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GmailBoxData_conversations build() => _build();

  _$GmailBoxData_conversations _build() {
    _$GmailBoxData_conversations _$result;
    try {
      _$result = _$v ??
          new _$GmailBoxData_conversations._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GmailBoxData_conversations', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GmailBoxData_conversations', 'id'),
              date: BuiltValueNullFieldError.checkNotNull(
                  date, r'GmailBoxData_conversations', 'date'),
              hasAttachment: BuiltValueNullFieldError.checkNotNull(
                  hasAttachment, r'GmailBoxData_conversations', 'hasAttachment'),
              subject: BuiltValueNullFieldError.checkNotNull(
                  subject, r'GmailBoxData_conversations', 'subject'),
              healthProfessionalNames: healthProfessionalNames.build(),
              read: BuiltValueNullFieldError.checkNotNull(
                  read, r'GmailBoxData_conversations', 'read'),
              hasDraft: BuiltValueNullFieldError.checkNotNull(
                  hasDraft, r'GmailBoxData_conversations', 'hasDraft'),
              isNewMessage: BuiltValueNullFieldError.checkNotNull(
                  isNewMessage, r'GmailBoxData_conversations', 'isNewMessage'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'healthProfessionalNames';
        healthProfessionalNames.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GmailBoxData_conversations', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GmailBoxData_contacts extends GmailBoxData_contacts {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String fullName;

  factory _$GmailBoxData_contacts(
          [void Function(GmailBoxData_contactsBuilder)? updates]) =>
      (new GmailBoxData_contactsBuilder()..update(updates))._build();

  _$GmailBoxData_contacts._(
      {required this.G__typename, required this.id, required this.fullName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GmailBoxData_contacts', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GmailBoxData_contacts', 'id');
    BuiltValueNullFieldError.checkNotNull(
        fullName, r'GmailBoxData_contacts', 'fullName');
  }

  @override
  GmailBoxData_contacts rebuild(
          void Function(GmailBoxData_contactsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmailBoxData_contactsBuilder toBuilder() =>
      new GmailBoxData_contactsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmailBoxData_contacts &&
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
    return (newBuiltValueToStringHelper(r'GmailBoxData_contacts')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('fullName', fullName))
        .toString();
  }
}

class GmailBoxData_contactsBuilder
    implements Builder<GmailBoxData_contacts, GmailBoxData_contactsBuilder> {
  _$GmailBoxData_contacts? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  GmailBoxData_contactsBuilder() {
    GmailBoxData_contacts._initializeBuilder(this);
  }

  GmailBoxData_contactsBuilder get _$this {
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
  void replace(GmailBoxData_contacts other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmailBoxData_contacts;
  }

  @override
  void update(void Function(GmailBoxData_contactsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GmailBoxData_contacts build() => _build();

  _$GmailBoxData_contacts _build() {
    final _$result = _$v ??
        new _$GmailBoxData_contacts._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GmailBoxData_contacts', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GmailBoxData_contacts', 'id'),
            fullName: BuiltValueNullFieldError.checkNotNull(
                fullName, r'GmailBoxData_contacts', 'fullName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
