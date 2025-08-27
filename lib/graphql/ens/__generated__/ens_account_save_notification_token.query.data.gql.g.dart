// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_account_save_notification_token.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gsave_notification_tokenData>
    _$gsaveNotificationTokenDataSerializer =
    new _$Gsave_notification_tokenDataSerializer();
Serializer<Gsave_notification_tokenData_saveNotificationToken>
    _$gsaveNotificationTokenDataSaveNotificationTokenSerializer =
    new _$Gsave_notification_tokenData_saveNotificationTokenSerializer();

class _$Gsave_notification_tokenDataSerializer
    implements StructuredSerializer<Gsave_notification_tokenData> {
  @override
  final Iterable<Type> types = const [
    Gsave_notification_tokenData,
    _$Gsave_notification_tokenData
  ];
  @override
  final String wireName = 'Gsave_notification_tokenData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gsave_notification_tokenData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'saveNotificationToken',
      serializers.serialize(object.saveNotificationToken,
          specifiedType: const FullType(
              Gsave_notification_tokenData_saveNotificationToken)),
    ];

    return result;
  }

  @override
  Gsave_notification_tokenData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gsave_notification_tokenDataBuilder();

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
        case 'saveNotificationToken':
          result.saveNotificationToken.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gsave_notification_tokenData_saveNotificationToken))!
              as Gsave_notification_tokenData_saveNotificationToken);
          break;
      }
    }

    return result.build();
  }
}

class _$Gsave_notification_tokenData_saveNotificationTokenSerializer
    implements
        StructuredSerializer<
            Gsave_notification_tokenData_saveNotificationToken> {
  @override
  final Iterable<Type> types = const [
    Gsave_notification_tokenData_saveNotificationToken,
    _$Gsave_notification_tokenData_saveNotificationToken
  ];
  @override
  final String wireName = 'Gsave_notification_tokenData_saveNotificationToken';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gsave_notification_tokenData_saveNotificationToken object,
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
  Gsave_notification_tokenData_saveNotificationToken deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gsave_notification_tokenData_saveNotificationTokenBuilder();

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

class _$Gsave_notification_tokenData extends Gsave_notification_tokenData {
  @override
  final String G__typename;
  @override
  final Gsave_notification_tokenData_saveNotificationToken
      saveNotificationToken;

  factory _$Gsave_notification_tokenData(
          [void Function(Gsave_notification_tokenDataBuilder)? updates]) =>
      (new Gsave_notification_tokenDataBuilder()..update(updates))._build();

  _$Gsave_notification_tokenData._(
      {required this.G__typename, required this.saveNotificationToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gsave_notification_tokenData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(saveNotificationToken,
        r'Gsave_notification_tokenData', 'saveNotificationToken');
  }

  @override
  Gsave_notification_tokenData rebuild(
          void Function(Gsave_notification_tokenDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gsave_notification_tokenDataBuilder toBuilder() =>
      new Gsave_notification_tokenDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gsave_notification_tokenData &&
        G__typename == other.G__typename &&
        saveNotificationToken == other.saveNotificationToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, saveNotificationToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gsave_notification_tokenData')
          ..add('G__typename', G__typename)
          ..add('saveNotificationToken', saveNotificationToken))
        .toString();
  }
}

class Gsave_notification_tokenDataBuilder
    implements
        Builder<Gsave_notification_tokenData,
            Gsave_notification_tokenDataBuilder> {
  _$Gsave_notification_tokenData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gsave_notification_tokenData_saveNotificationTokenBuilder?
      _saveNotificationToken;
  Gsave_notification_tokenData_saveNotificationTokenBuilder
      get saveNotificationToken => _$this._saveNotificationToken ??=
          new Gsave_notification_tokenData_saveNotificationTokenBuilder();
  set saveNotificationToken(
          Gsave_notification_tokenData_saveNotificationTokenBuilder?
              saveNotificationToken) =>
      _$this._saveNotificationToken = saveNotificationToken;

  Gsave_notification_tokenDataBuilder() {
    Gsave_notification_tokenData._initializeBuilder(this);
  }

  Gsave_notification_tokenDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _saveNotificationToken = $v.saveNotificationToken.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gsave_notification_tokenData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gsave_notification_tokenData;
  }

  @override
  void update(void Function(Gsave_notification_tokenDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gsave_notification_tokenData build() => _build();

  _$Gsave_notification_tokenData _build() {
    _$Gsave_notification_tokenData _$result;
    try {
      _$result = _$v ??
          new _$Gsave_notification_tokenData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gsave_notification_tokenData', 'G__typename'),
              saveNotificationToken: saveNotificationToken.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'saveNotificationToken';
        saveNotificationToken.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gsave_notification_tokenData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gsave_notification_tokenData_saveNotificationToken
    extends Gsave_notification_tokenData_saveNotificationToken {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gsave_notification_tokenData_saveNotificationToken(
          [void Function(
                  Gsave_notification_tokenData_saveNotificationTokenBuilder)?
              updates]) =>
      (new Gsave_notification_tokenData_saveNotificationTokenBuilder()
            ..update(updates))
          ._build();

  _$Gsave_notification_tokenData_saveNotificationToken._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gsave_notification_tokenData_saveNotificationToken', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(success,
        r'Gsave_notification_tokenData_saveNotificationToken', 'success');
  }

  @override
  Gsave_notification_tokenData_saveNotificationToken rebuild(
          void Function(
                  Gsave_notification_tokenData_saveNotificationTokenBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gsave_notification_tokenData_saveNotificationTokenBuilder toBuilder() =>
      new Gsave_notification_tokenData_saveNotificationTokenBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gsave_notification_tokenData_saveNotificationToken &&
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
            r'Gsave_notification_tokenData_saveNotificationToken')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gsave_notification_tokenData_saveNotificationTokenBuilder
    implements
        Builder<Gsave_notification_tokenData_saveNotificationToken,
            Gsave_notification_tokenData_saveNotificationTokenBuilder> {
  _$Gsave_notification_tokenData_saveNotificationToken? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gsave_notification_tokenData_saveNotificationTokenBuilder() {
    Gsave_notification_tokenData_saveNotificationToken._initializeBuilder(this);
  }

  Gsave_notification_tokenData_saveNotificationTokenBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gsave_notification_tokenData_saveNotificationToken other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gsave_notification_tokenData_saveNotificationToken;
  }

  @override
  void update(
      void Function(Gsave_notification_tokenData_saveNotificationTokenBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gsave_notification_tokenData_saveNotificationToken build() => _build();

  _$Gsave_notification_tokenData_saveNotificationToken _build() {
    final _$result = _$v ??
        new _$Gsave_notification_tokenData_saveNotificationToken._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gsave_notification_tokenData_saveNotificationToken',
                'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success,
                r'Gsave_notification_tokenData_saveNotificationToken',
                'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
