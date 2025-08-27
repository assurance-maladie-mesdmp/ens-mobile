// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_messagerie_get_conversation_Id_from_message_Id.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_conversation_id_from_message_idData>
    _$ggetConversationIdFromMessageIdDataSerializer =
    new _$Gget_conversation_id_from_message_idDataSerializer();
Serializer<Gget_conversation_id_from_message_idData_getMessageById>
    _$ggetConversationIdFromMessageIdDataGetMessageByIdSerializer =
    new _$Gget_conversation_id_from_message_idData_getMessageByIdSerializer();

class _$Gget_conversation_id_from_message_idDataSerializer
    implements StructuredSerializer<Gget_conversation_id_from_message_idData> {
  @override
  final Iterable<Type> types = const [
    Gget_conversation_id_from_message_idData,
    _$Gget_conversation_id_from_message_idData
  ];
  @override
  final String wireName = 'Gget_conversation_id_from_message_idData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_conversation_id_from_message_idData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'getMessageById',
      serializers.serialize(object.getMessageById,
          specifiedType: const FullType(
              Gget_conversation_id_from_message_idData_getMessageById)),
    ];

    return result;
  }

  @override
  Gget_conversation_id_from_message_idData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_conversation_id_from_message_idDataBuilder();

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
        case 'getMessageById':
          result.getMessageById.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_conversation_id_from_message_idData_getMessageById))!
              as Gget_conversation_id_from_message_idData_getMessageById);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_conversation_id_from_message_idData_getMessageByIdSerializer
    implements
        StructuredSerializer<
            Gget_conversation_id_from_message_idData_getMessageById> {
  @override
  final Iterable<Type> types = const [
    Gget_conversation_id_from_message_idData_getMessageById,
    _$Gget_conversation_id_from_message_idData_getMessageById
  ];
  @override
  final String wireName =
      'Gget_conversation_id_from_message_idData_getMessageById';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_conversation_id_from_message_idData_getMessageById object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'conversationId',
      serializers.serialize(object.conversationId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_conversation_id_from_message_idData_getMessageById deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_conversation_id_from_message_idData_getMessageByIdBuilder();

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
      }
    }

    return result.build();
  }
}

class _$Gget_conversation_id_from_message_idData
    extends Gget_conversation_id_from_message_idData {
  @override
  final String G__typename;
  @override
  final Gget_conversation_id_from_message_idData_getMessageById getMessageById;

  factory _$Gget_conversation_id_from_message_idData(
          [void Function(Gget_conversation_id_from_message_idDataBuilder)?
              updates]) =>
      (new Gget_conversation_id_from_message_idDataBuilder()..update(updates))
          ._build();

  _$Gget_conversation_id_from_message_idData._(
      {required this.G__typename, required this.getMessageById})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_conversation_id_from_message_idData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(getMessageById,
        r'Gget_conversation_id_from_message_idData', 'getMessageById');
  }

  @override
  Gget_conversation_id_from_message_idData rebuild(
          void Function(Gget_conversation_id_from_message_idDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_conversation_id_from_message_idDataBuilder toBuilder() =>
      new Gget_conversation_id_from_message_idDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_conversation_id_from_message_idData &&
        G__typename == other.G__typename &&
        getMessageById == other.getMessageById;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getMessageById.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_conversation_id_from_message_idData')
          ..add('G__typename', G__typename)
          ..add('getMessageById', getMessageById))
        .toString();
  }
}

class Gget_conversation_id_from_message_idDataBuilder
    implements
        Builder<Gget_conversation_id_from_message_idData,
            Gget_conversation_id_from_message_idDataBuilder> {
  _$Gget_conversation_id_from_message_idData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_conversation_id_from_message_idData_getMessageByIdBuilder?
      _getMessageById;
  Gget_conversation_id_from_message_idData_getMessageByIdBuilder
      get getMessageById => _$this._getMessageById ??=
          new Gget_conversation_id_from_message_idData_getMessageByIdBuilder();
  set getMessageById(
          Gget_conversation_id_from_message_idData_getMessageByIdBuilder?
              getMessageById) =>
      _$this._getMessageById = getMessageById;

  Gget_conversation_id_from_message_idDataBuilder() {
    Gget_conversation_id_from_message_idData._initializeBuilder(this);
  }

  Gget_conversation_id_from_message_idDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getMessageById = $v.getMessageById.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_conversation_id_from_message_idData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_conversation_id_from_message_idData;
  }

  @override
  void update(
      void Function(Gget_conversation_id_from_message_idDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_conversation_id_from_message_idData build() => _build();

  _$Gget_conversation_id_from_message_idData _build() {
    _$Gget_conversation_id_from_message_idData _$result;
    try {
      _$result = _$v ??
          new _$Gget_conversation_id_from_message_idData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gget_conversation_id_from_message_idData', 'G__typename'),
              getMessageById: getMessageById.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getMessageById';
        getMessageById.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_conversation_id_from_message_idData',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_conversation_id_from_message_idData_getMessageById
    extends Gget_conversation_id_from_message_idData_getMessageById {
  @override
  final String G__typename;
  @override
  final String conversationId;

  factory _$Gget_conversation_id_from_message_idData_getMessageById(
          [void Function(
                  Gget_conversation_id_from_message_idData_getMessageByIdBuilder)?
              updates]) =>
      (new Gget_conversation_id_from_message_idData_getMessageByIdBuilder()
            ..update(updates))
          ._build();

  _$Gget_conversation_id_from_message_idData_getMessageById._(
      {required this.G__typename, required this.conversationId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_conversation_id_from_message_idData_getMessageById',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        conversationId,
        r'Gget_conversation_id_from_message_idData_getMessageById',
        'conversationId');
  }

  @override
  Gget_conversation_id_from_message_idData_getMessageById rebuild(
          void Function(
                  Gget_conversation_id_from_message_idData_getMessageByIdBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_conversation_id_from_message_idData_getMessageByIdBuilder toBuilder() =>
      new Gget_conversation_id_from_message_idData_getMessageByIdBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_conversation_id_from_message_idData_getMessageById &&
        G__typename == other.G__typename &&
        conversationId == other.conversationId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, conversationId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_conversation_id_from_message_idData_getMessageById')
          ..add('G__typename', G__typename)
          ..add('conversationId', conversationId))
        .toString();
  }
}

class Gget_conversation_id_from_message_idData_getMessageByIdBuilder
    implements
        Builder<Gget_conversation_id_from_message_idData_getMessageById,
            Gget_conversation_id_from_message_idData_getMessageByIdBuilder> {
  _$Gget_conversation_id_from_message_idData_getMessageById? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _conversationId;
  String? get conversationId => _$this._conversationId;
  set conversationId(String? conversationId) =>
      _$this._conversationId = conversationId;

  Gget_conversation_id_from_message_idData_getMessageByIdBuilder() {
    Gget_conversation_id_from_message_idData_getMessageById._initializeBuilder(
        this);
  }

  Gget_conversation_id_from_message_idData_getMessageByIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _conversationId = $v.conversationId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_conversation_id_from_message_idData_getMessageById other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_conversation_id_from_message_idData_getMessageById;
  }

  @override
  void update(
      void Function(
              Gget_conversation_id_from_message_idData_getMessageByIdBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_conversation_id_from_message_idData_getMessageById build() => _build();

  _$Gget_conversation_id_from_message_idData_getMessageById _build() {
    final _$result = _$v ??
        new _$Gget_conversation_id_from_message_idData_getMessageById._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_conversation_id_from_message_idData_getMessageById',
                'G__typename'),
            conversationId: BuiltValueNullFieldError.checkNotNull(
                conversationId,
                r'Gget_conversation_id_from_message_idData_getMessageById',
                'conversationId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
