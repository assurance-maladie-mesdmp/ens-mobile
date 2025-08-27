// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_messagerie_delete_conversation.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gdelete_conversationData> _$gdeleteConversationDataSerializer =
    new _$Gdelete_conversationDataSerializer();
Serializer<Gdelete_conversationData_moveToTrashConversation>
    _$gdeleteConversationDataMoveToTrashConversationSerializer =
    new _$Gdelete_conversationData_moveToTrashConversationSerializer();

class _$Gdelete_conversationDataSerializer
    implements StructuredSerializer<Gdelete_conversationData> {
  @override
  final Iterable<Type> types = const [
    Gdelete_conversationData,
    _$Gdelete_conversationData
  ];
  @override
  final String wireName = 'Gdelete_conversationData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gdelete_conversationData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'moveToTrashConversation',
      serializers.serialize(object.moveToTrashConversation,
          specifiedType:
              const FullType(Gdelete_conversationData_moveToTrashConversation)),
    ];

    return result;
  }

  @override
  Gdelete_conversationData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_conversationDataBuilder();

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
        case 'moveToTrashConversation':
          result.moveToTrashConversation.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gdelete_conversationData_moveToTrashConversation))!
              as Gdelete_conversationData_moveToTrashConversation);
          break;
      }
    }

    return result.build();
  }
}

class _$Gdelete_conversationData_moveToTrashConversationSerializer
    implements
        StructuredSerializer<Gdelete_conversationData_moveToTrashConversation> {
  @override
  final Iterable<Type> types = const [
    Gdelete_conversationData_moveToTrashConversation,
    _$Gdelete_conversationData_moveToTrashConversation
  ];
  @override
  final String wireName = 'Gdelete_conversationData_moveToTrashConversation';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gdelete_conversationData_moveToTrashConversation object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'success',
      serializers.serialize(object.success,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  Gdelete_conversationData_moveToTrashConversation deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gdelete_conversationData_moveToTrashConversationBuilder();

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
      }
    }

    return result.build();
  }
}

class _$Gdelete_conversationData extends Gdelete_conversationData {
  @override
  final String G__typename;
  @override
  final Gdelete_conversationData_moveToTrashConversation
      moveToTrashConversation;

  factory _$Gdelete_conversationData(
          [void Function(Gdelete_conversationDataBuilder)? updates]) =>
      (new Gdelete_conversationDataBuilder()..update(updates))._build();

  _$Gdelete_conversationData._(
      {required this.G__typename, required this.moveToTrashConversation})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gdelete_conversationData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(moveToTrashConversation,
        r'Gdelete_conversationData', 'moveToTrashConversation');
  }

  @override
  Gdelete_conversationData rebuild(
          void Function(Gdelete_conversationDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_conversationDataBuilder toBuilder() =>
      new Gdelete_conversationDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_conversationData &&
        G__typename == other.G__typename &&
        moveToTrashConversation == other.moveToTrashConversation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, moveToTrashConversation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gdelete_conversationData')
          ..add('G__typename', G__typename)
          ..add('moveToTrashConversation', moveToTrashConversation))
        .toString();
  }
}

class Gdelete_conversationDataBuilder
    implements
        Builder<Gdelete_conversationData, Gdelete_conversationDataBuilder> {
  _$Gdelete_conversationData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gdelete_conversationData_moveToTrashConversationBuilder?
      _moveToTrashConversation;
  Gdelete_conversationData_moveToTrashConversationBuilder
      get moveToTrashConversation => _$this._moveToTrashConversation ??=
          new Gdelete_conversationData_moveToTrashConversationBuilder();
  set moveToTrashConversation(
          Gdelete_conversationData_moveToTrashConversationBuilder?
              moveToTrashConversation) =>
      _$this._moveToTrashConversation = moveToTrashConversation;

  Gdelete_conversationDataBuilder() {
    Gdelete_conversationData._initializeBuilder(this);
  }

  Gdelete_conversationDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _moveToTrashConversation = $v.moveToTrashConversation.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_conversationData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_conversationData;
  }

  @override
  void update(void Function(Gdelete_conversationDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_conversationData build() => _build();

  _$Gdelete_conversationData _build() {
    _$Gdelete_conversationData _$result;
    try {
      _$result = _$v ??
          new _$Gdelete_conversationData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gdelete_conversationData', 'G__typename'),
              moveToTrashConversation: moveToTrashConversation.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'moveToTrashConversation';
        moveToTrashConversation.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gdelete_conversationData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gdelete_conversationData_moveToTrashConversation
    extends Gdelete_conversationData_moveToTrashConversation {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gdelete_conversationData_moveToTrashConversation(
          [void Function(
                  Gdelete_conversationData_moveToTrashConversationBuilder)?
              updates]) =>
      (new Gdelete_conversationData_moveToTrashConversationBuilder()
            ..update(updates))
          ._build();

  _$Gdelete_conversationData_moveToTrashConversation._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gdelete_conversationData_moveToTrashConversation', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(success,
        r'Gdelete_conversationData_moveToTrashConversation', 'success');
  }

  @override
  Gdelete_conversationData_moveToTrashConversation rebuild(
          void Function(Gdelete_conversationData_moveToTrashConversationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_conversationData_moveToTrashConversationBuilder toBuilder() =>
      new Gdelete_conversationData_moveToTrashConversationBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_conversationData_moveToTrashConversation &&
        G__typename == other.G__typename &&
        success == other.success;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gdelete_conversationData_moveToTrashConversation')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gdelete_conversationData_moveToTrashConversationBuilder
    implements
        Builder<Gdelete_conversationData_moveToTrashConversation,
            Gdelete_conversationData_moveToTrashConversationBuilder> {
  _$Gdelete_conversationData_moveToTrashConversation? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gdelete_conversationData_moveToTrashConversationBuilder() {
    Gdelete_conversationData_moveToTrashConversation._initializeBuilder(this);
  }

  Gdelete_conversationData_moveToTrashConversationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_conversationData_moveToTrashConversation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_conversationData_moveToTrashConversation;
  }

  @override
  void update(
      void Function(Gdelete_conversationData_moveToTrashConversationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_conversationData_moveToTrashConversation build() => _build();

  _$Gdelete_conversationData_moveToTrashConversation _build() {
    final _$result = _$v ??
        new _$Gdelete_conversationData_moveToTrashConversation._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gdelete_conversationData_moveToTrashConversation',
                'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success,
                r'Gdelete_conversationData_moveToTrashConversation',
                'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
