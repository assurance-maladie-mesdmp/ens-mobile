// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_account_change_password.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gchange_passwordData> _$gchangePasswordDataSerializer =
    new _$Gchange_passwordDataSerializer();
Serializer<Gchange_passwordData_changePassword>
    _$gchangePasswordDataChangePasswordSerializer =
    new _$Gchange_passwordData_changePasswordSerializer();

class _$Gchange_passwordDataSerializer
    implements StructuredSerializer<Gchange_passwordData> {
  @override
  final Iterable<Type> types = const [
    Gchange_passwordData,
    _$Gchange_passwordData
  ];
  @override
  final String wireName = 'Gchange_passwordData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gchange_passwordData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'changePassword',
      serializers.serialize(object.changePassword,
          specifiedType: const FullType(Gchange_passwordData_changePassword)),
    ];

    return result;
  }

  @override
  Gchange_passwordData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gchange_passwordDataBuilder();

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
        case 'changePassword':
          result.changePassword.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(Gchange_passwordData_changePassword))!
              as Gchange_passwordData_changePassword);
          break;
      }
    }

    return result.build();
  }
}

class _$Gchange_passwordData_changePasswordSerializer
    implements StructuredSerializer<Gchange_passwordData_changePassword> {
  @override
  final Iterable<Type> types = const [
    Gchange_passwordData_changePassword,
    _$Gchange_passwordData_changePassword
  ];
  @override
  final String wireName = 'Gchange_passwordData_changePassword';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gchange_passwordData_changePassword object,
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
  Gchange_passwordData_changePassword deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gchange_passwordData_changePasswordBuilder();

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

class _$Gchange_passwordData extends Gchange_passwordData {
  @override
  final String G__typename;
  @override
  final Gchange_passwordData_changePassword changePassword;

  factory _$Gchange_passwordData(
          [void Function(Gchange_passwordDataBuilder)? updates]) =>
      (new Gchange_passwordDataBuilder()..update(updates))._build();

  _$Gchange_passwordData._(
      {required this.G__typename, required this.changePassword})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gchange_passwordData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        changePassword, r'Gchange_passwordData', 'changePassword');
  }

  @override
  Gchange_passwordData rebuild(
          void Function(Gchange_passwordDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gchange_passwordDataBuilder toBuilder() =>
      new Gchange_passwordDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gchange_passwordData &&
        G__typename == other.G__typename &&
        changePassword == other.changePassword;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, changePassword.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gchange_passwordData')
          ..add('G__typename', G__typename)
          ..add('changePassword', changePassword))
        .toString();
  }
}

class Gchange_passwordDataBuilder
    implements Builder<Gchange_passwordData, Gchange_passwordDataBuilder> {
  _$Gchange_passwordData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gchange_passwordData_changePasswordBuilder? _changePassword;
  Gchange_passwordData_changePasswordBuilder get changePassword =>
      _$this._changePassword ??=
          new Gchange_passwordData_changePasswordBuilder();
  set changePassword(
          Gchange_passwordData_changePasswordBuilder? changePassword) =>
      _$this._changePassword = changePassword;

  Gchange_passwordDataBuilder() {
    Gchange_passwordData._initializeBuilder(this);
  }

  Gchange_passwordDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _changePassword = $v.changePassword.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gchange_passwordData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gchange_passwordData;
  }

  @override
  void update(void Function(Gchange_passwordDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gchange_passwordData build() => _build();

  _$Gchange_passwordData _build() {
    _$Gchange_passwordData _$result;
    try {
      _$result = _$v ??
          new _$Gchange_passwordData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gchange_passwordData', 'G__typename'),
              changePassword: changePassword.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'changePassword';
        changePassword.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gchange_passwordData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gchange_passwordData_changePassword
    extends Gchange_passwordData_changePassword {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gchange_passwordData_changePassword(
          [void Function(Gchange_passwordData_changePasswordBuilder)?
              updates]) =>
      (new Gchange_passwordData_changePasswordBuilder()..update(updates))
          ._build();

  _$Gchange_passwordData_changePassword._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gchange_passwordData_changePassword', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success, r'Gchange_passwordData_changePassword', 'success');
  }

  @override
  Gchange_passwordData_changePassword rebuild(
          void Function(Gchange_passwordData_changePasswordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gchange_passwordData_changePasswordBuilder toBuilder() =>
      new Gchange_passwordData_changePasswordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gchange_passwordData_changePassword &&
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
    return (newBuiltValueToStringHelper(r'Gchange_passwordData_changePassword')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gchange_passwordData_changePasswordBuilder
    implements
        Builder<Gchange_passwordData_changePassword,
            Gchange_passwordData_changePasswordBuilder> {
  _$Gchange_passwordData_changePassword? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gchange_passwordData_changePasswordBuilder() {
    Gchange_passwordData_changePassword._initializeBuilder(this);
  }

  Gchange_passwordData_changePasswordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gchange_passwordData_changePassword other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gchange_passwordData_changePassword;
  }

  @override
  void update(
      void Function(Gchange_passwordData_changePasswordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gchange_passwordData_changePassword build() => _build();

  _$Gchange_passwordData_changePassword _build() {
    final _$result = _$v ??
        new _$Gchange_passwordData_changePassword._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gchange_passwordData_changePassword', 'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'Gchange_passwordData_changePassword', 'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
