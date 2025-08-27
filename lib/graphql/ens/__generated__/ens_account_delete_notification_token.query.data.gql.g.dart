// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_account_delete_notification_token.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gdelete_notification_tokenData>
    _$gdeleteNotificationTokenDataSerializer =
    new _$Gdelete_notification_tokenDataSerializer();
Serializer<Gdelete_notification_tokenData_deleteNotificationToken>
    _$gdeleteNotificationTokenDataDeleteNotificationTokenSerializer =
    new _$Gdelete_notification_tokenData_deleteNotificationTokenSerializer();

class _$Gdelete_notification_tokenDataSerializer
    implements StructuredSerializer<Gdelete_notification_tokenData> {
  @override
  final Iterable<Type> types = const [
    Gdelete_notification_tokenData,
    _$Gdelete_notification_tokenData
  ];
  @override
  final String wireName = 'Gdelete_notification_tokenData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gdelete_notification_tokenData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'deleteNotificationToken',
      serializers.serialize(object.deleteNotificationToken,
          specifiedType: const FullType(
              Gdelete_notification_tokenData_deleteNotificationToken)),
    ];

    return result;
  }

  @override
  Gdelete_notification_tokenData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_notification_tokenDataBuilder();

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
        case 'deleteNotificationToken':
          result.deleteNotificationToken.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gdelete_notification_tokenData_deleteNotificationToken))!
              as Gdelete_notification_tokenData_deleteNotificationToken);
          break;
      }
    }

    return result.build();
  }
}

class _$Gdelete_notification_tokenData_deleteNotificationTokenSerializer
    implements
        StructuredSerializer<
            Gdelete_notification_tokenData_deleteNotificationToken> {
  @override
  final Iterable<Type> types = const [
    Gdelete_notification_tokenData_deleteNotificationToken,
    _$Gdelete_notification_tokenData_deleteNotificationToken
  ];
  @override
  final String wireName =
      'Gdelete_notification_tokenData_deleteNotificationToken';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gdelete_notification_tokenData_deleteNotificationToken object,
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
  Gdelete_notification_tokenData_deleteNotificationToken deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gdelete_notification_tokenData_deleteNotificationTokenBuilder();

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

class _$Gdelete_notification_tokenData extends Gdelete_notification_tokenData {
  @override
  final String G__typename;
  @override
  final Gdelete_notification_tokenData_deleteNotificationToken
      deleteNotificationToken;

  factory _$Gdelete_notification_tokenData(
          [void Function(Gdelete_notification_tokenDataBuilder)? updates]) =>
      (new Gdelete_notification_tokenDataBuilder()..update(updates))._build();

  _$Gdelete_notification_tokenData._(
      {required this.G__typename, required this.deleteNotificationToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gdelete_notification_tokenData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(deleteNotificationToken,
        r'Gdelete_notification_tokenData', 'deleteNotificationToken');
  }

  @override
  Gdelete_notification_tokenData rebuild(
          void Function(Gdelete_notification_tokenDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_notification_tokenDataBuilder toBuilder() =>
      new Gdelete_notification_tokenDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_notification_tokenData &&
        G__typename == other.G__typename &&
        deleteNotificationToken == other.deleteNotificationToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, deleteNotificationToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gdelete_notification_tokenData')
          ..add('G__typename', G__typename)
          ..add('deleteNotificationToken', deleteNotificationToken))
        .toString();
  }
}

class Gdelete_notification_tokenDataBuilder
    implements
        Builder<Gdelete_notification_tokenData,
            Gdelete_notification_tokenDataBuilder> {
  _$Gdelete_notification_tokenData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gdelete_notification_tokenData_deleteNotificationTokenBuilder?
      _deleteNotificationToken;
  Gdelete_notification_tokenData_deleteNotificationTokenBuilder
      get deleteNotificationToken => _$this._deleteNotificationToken ??=
          new Gdelete_notification_tokenData_deleteNotificationTokenBuilder();
  set deleteNotificationToken(
          Gdelete_notification_tokenData_deleteNotificationTokenBuilder?
              deleteNotificationToken) =>
      _$this._deleteNotificationToken = deleteNotificationToken;

  Gdelete_notification_tokenDataBuilder() {
    Gdelete_notification_tokenData._initializeBuilder(this);
  }

  Gdelete_notification_tokenDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _deleteNotificationToken = $v.deleteNotificationToken.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_notification_tokenData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_notification_tokenData;
  }

  @override
  void update(void Function(Gdelete_notification_tokenDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_notification_tokenData build() => _build();

  _$Gdelete_notification_tokenData _build() {
    _$Gdelete_notification_tokenData _$result;
    try {
      _$result = _$v ??
          new _$Gdelete_notification_tokenData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gdelete_notification_tokenData', 'G__typename'),
              deleteNotificationToken: deleteNotificationToken.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deleteNotificationToken';
        deleteNotificationToken.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gdelete_notification_tokenData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gdelete_notification_tokenData_deleteNotificationToken
    extends Gdelete_notification_tokenData_deleteNotificationToken {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gdelete_notification_tokenData_deleteNotificationToken(
          [void Function(
                  Gdelete_notification_tokenData_deleteNotificationTokenBuilder)?
              updates]) =>
      (new Gdelete_notification_tokenData_deleteNotificationTokenBuilder()
            ..update(updates))
          ._build();

  _$Gdelete_notification_tokenData_deleteNotificationToken._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gdelete_notification_tokenData_deleteNotificationToken',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(success,
        r'Gdelete_notification_tokenData_deleteNotificationToken', 'success');
  }

  @override
  Gdelete_notification_tokenData_deleteNotificationToken rebuild(
          void Function(
                  Gdelete_notification_tokenData_deleteNotificationTokenBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_notification_tokenData_deleteNotificationTokenBuilder toBuilder() =>
      new Gdelete_notification_tokenData_deleteNotificationTokenBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_notification_tokenData_deleteNotificationToken &&
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
            r'Gdelete_notification_tokenData_deleteNotificationToken')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gdelete_notification_tokenData_deleteNotificationTokenBuilder
    implements
        Builder<Gdelete_notification_tokenData_deleteNotificationToken,
            Gdelete_notification_tokenData_deleteNotificationTokenBuilder> {
  _$Gdelete_notification_tokenData_deleteNotificationToken? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gdelete_notification_tokenData_deleteNotificationTokenBuilder() {
    Gdelete_notification_tokenData_deleteNotificationToken._initializeBuilder(
        this);
  }

  Gdelete_notification_tokenData_deleteNotificationTokenBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_notification_tokenData_deleteNotificationToken other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_notification_tokenData_deleteNotificationToken;
  }

  @override
  void update(
      void Function(
              Gdelete_notification_tokenData_deleteNotificationTokenBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_notification_tokenData_deleteNotificationToken build() => _build();

  _$Gdelete_notification_tokenData_deleteNotificationToken _build() {
    final _$result = _$v ??
        new _$Gdelete_notification_tokenData_deleteNotificationToken._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gdelete_notification_tokenData_deleteNotificationToken',
                'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success,
                r'Gdelete_notification_tokenData_deleteNotificationToken',
                'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
