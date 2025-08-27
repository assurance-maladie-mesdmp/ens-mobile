// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_enrolement_create_account.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gcreate_accountData> _$gcreateAccountDataSerializer =
    new _$Gcreate_accountDataSerializer();
Serializer<Gcreate_accountData_createAccountEns>
    _$gcreateAccountDataCreateAccountEnsSerializer =
    new _$Gcreate_accountData_createAccountEnsSerializer();

class _$Gcreate_accountDataSerializer
    implements StructuredSerializer<Gcreate_accountData> {
  @override
  final Iterable<Type> types = const [
    Gcreate_accountData,
    _$Gcreate_accountData
  ];
  @override
  final String wireName = 'Gcreate_accountData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gcreate_accountData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'createAccountEns',
      serializers.serialize(object.createAccountEns,
          specifiedType: const FullType(Gcreate_accountData_createAccountEns)),
    ];

    return result;
  }

  @override
  Gcreate_accountData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gcreate_accountDataBuilder();

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
        case 'createAccountEns':
          result.createAccountEns.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(Gcreate_accountData_createAccountEns))!
              as Gcreate_accountData_createAccountEns);
          break;
      }
    }

    return result.build();
  }
}

class _$Gcreate_accountData_createAccountEnsSerializer
    implements StructuredSerializer<Gcreate_accountData_createAccountEns> {
  @override
  final Iterable<Type> types = const [
    Gcreate_accountData_createAccountEns,
    _$Gcreate_accountData_createAccountEns
  ];
  @override
  final String wireName = 'Gcreate_accountData_createAccountEns';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gcreate_accountData_createAccountEns object,
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
  Gcreate_accountData_createAccountEns deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gcreate_accountData_createAccountEnsBuilder();

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

class _$Gcreate_accountData extends Gcreate_accountData {
  @override
  final String G__typename;
  @override
  final Gcreate_accountData_createAccountEns createAccountEns;

  factory _$Gcreate_accountData(
          [void Function(Gcreate_accountDataBuilder)? updates]) =>
      (new Gcreate_accountDataBuilder()..update(updates))._build();

  _$Gcreate_accountData._(
      {required this.G__typename, required this.createAccountEns})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gcreate_accountData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        createAccountEns, r'Gcreate_accountData', 'createAccountEns');
  }

  @override
  Gcreate_accountData rebuild(
          void Function(Gcreate_accountDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gcreate_accountDataBuilder toBuilder() =>
      new Gcreate_accountDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gcreate_accountData &&
        G__typename == other.G__typename &&
        createAccountEns == other.createAccountEns;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, createAccountEns.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gcreate_accountData')
          ..add('G__typename', G__typename)
          ..add('createAccountEns', createAccountEns))
        .toString();
  }
}

class Gcreate_accountDataBuilder
    implements Builder<Gcreate_accountData, Gcreate_accountDataBuilder> {
  _$Gcreate_accountData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gcreate_accountData_createAccountEnsBuilder? _createAccountEns;
  Gcreate_accountData_createAccountEnsBuilder get createAccountEns =>
      _$this._createAccountEns ??=
          new Gcreate_accountData_createAccountEnsBuilder();
  set createAccountEns(
          Gcreate_accountData_createAccountEnsBuilder? createAccountEns) =>
      _$this._createAccountEns = createAccountEns;

  Gcreate_accountDataBuilder() {
    Gcreate_accountData._initializeBuilder(this);
  }

  Gcreate_accountDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _createAccountEns = $v.createAccountEns.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gcreate_accountData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gcreate_accountData;
  }

  @override
  void update(void Function(Gcreate_accountDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gcreate_accountData build() => _build();

  _$Gcreate_accountData _build() {
    _$Gcreate_accountData _$result;
    try {
      _$result = _$v ??
          new _$Gcreate_accountData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gcreate_accountData', 'G__typename'),
              createAccountEns: createAccountEns.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createAccountEns';
        createAccountEns.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gcreate_accountData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gcreate_accountData_createAccountEns
    extends Gcreate_accountData_createAccountEns {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gcreate_accountData_createAccountEns(
          [void Function(Gcreate_accountData_createAccountEnsBuilder)?
              updates]) =>
      (new Gcreate_accountData_createAccountEnsBuilder()..update(updates))
          ._build();

  _$Gcreate_accountData_createAccountEns._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gcreate_accountData_createAccountEns', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success, r'Gcreate_accountData_createAccountEns', 'success');
  }

  @override
  Gcreate_accountData_createAccountEns rebuild(
          void Function(Gcreate_accountData_createAccountEnsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gcreate_accountData_createAccountEnsBuilder toBuilder() =>
      new Gcreate_accountData_createAccountEnsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gcreate_accountData_createAccountEns &&
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
    return (newBuiltValueToStringHelper(r'Gcreate_accountData_createAccountEns')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gcreate_accountData_createAccountEnsBuilder
    implements
        Builder<Gcreate_accountData_createAccountEns,
            Gcreate_accountData_createAccountEnsBuilder> {
  _$Gcreate_accountData_createAccountEns? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gcreate_accountData_createAccountEnsBuilder() {
    Gcreate_accountData_createAccountEns._initializeBuilder(this);
  }

  Gcreate_accountData_createAccountEnsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gcreate_accountData_createAccountEns other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gcreate_accountData_createAccountEns;
  }

  @override
  void update(
      void Function(Gcreate_accountData_createAccountEnsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gcreate_accountData_createAccountEns build() => _build();

  _$Gcreate_accountData_createAccountEns _build() {
    final _$result = _$v ??
        new _$Gcreate_accountData_createAccountEns._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gcreate_accountData_createAccountEns', 'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'Gcreate_accountData_createAccountEns', 'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
