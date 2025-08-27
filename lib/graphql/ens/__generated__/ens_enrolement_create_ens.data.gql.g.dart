// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_enrolement_create_ens.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gcreate_ensData> _$gcreateEnsDataSerializer =
    new _$Gcreate_ensDataSerializer();
Serializer<Gcreate_ensData_createEns> _$gcreateEnsDataCreateEnsSerializer =
    new _$Gcreate_ensData_createEnsSerializer();

class _$Gcreate_ensDataSerializer
    implements StructuredSerializer<Gcreate_ensData> {
  @override
  final Iterable<Type> types = const [Gcreate_ensData, _$Gcreate_ensData];
  @override
  final String wireName = 'Gcreate_ensData';

  @override
  Iterable<Object?> serialize(Serializers serializers, Gcreate_ensData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'createEns',
      serializers.serialize(object.createEns,
          specifiedType: const FullType(Gcreate_ensData_createEns)),
    ];

    return result;
  }

  @override
  Gcreate_ensData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gcreate_ensDataBuilder();

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
        case 'createEns':
          result.createEns.replace(serializers.deserialize(value,
                  specifiedType: const FullType(Gcreate_ensData_createEns))!
              as Gcreate_ensData_createEns);
          break;
      }
    }

    return result.build();
  }
}

class _$Gcreate_ensData_createEnsSerializer
    implements StructuredSerializer<Gcreate_ensData_createEns> {
  @override
  final Iterable<Type> types = const [
    Gcreate_ensData_createEns,
    _$Gcreate_ensData_createEns
  ];
  @override
  final String wireName = 'Gcreate_ensData_createEns';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gcreate_ensData_createEns object,
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
  Gcreate_ensData_createEns deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gcreate_ensData_createEnsBuilder();

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

class _$Gcreate_ensData extends Gcreate_ensData {
  @override
  final String G__typename;
  @override
  final Gcreate_ensData_createEns createEns;

  factory _$Gcreate_ensData([void Function(Gcreate_ensDataBuilder)? updates]) =>
      (new Gcreate_ensDataBuilder()..update(updates))._build();

  _$Gcreate_ensData._({required this.G__typename, required this.createEns})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gcreate_ensData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        createEns, r'Gcreate_ensData', 'createEns');
  }

  @override
  Gcreate_ensData rebuild(void Function(Gcreate_ensDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gcreate_ensDataBuilder toBuilder() =>
      new Gcreate_ensDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gcreate_ensData &&
        G__typename == other.G__typename &&
        createEns == other.createEns;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, createEns.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gcreate_ensData')
          ..add('G__typename', G__typename)
          ..add('createEns', createEns))
        .toString();
  }
}

class Gcreate_ensDataBuilder
    implements Builder<Gcreate_ensData, Gcreate_ensDataBuilder> {
  _$Gcreate_ensData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gcreate_ensData_createEnsBuilder? _createEns;
  Gcreate_ensData_createEnsBuilder get createEns =>
      _$this._createEns ??= new Gcreate_ensData_createEnsBuilder();
  set createEns(Gcreate_ensData_createEnsBuilder? createEns) =>
      _$this._createEns = createEns;

  Gcreate_ensDataBuilder() {
    Gcreate_ensData._initializeBuilder(this);
  }

  Gcreate_ensDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _createEns = $v.createEns.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gcreate_ensData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gcreate_ensData;
  }

  @override
  void update(void Function(Gcreate_ensDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gcreate_ensData build() => _build();

  _$Gcreate_ensData _build() {
    _$Gcreate_ensData _$result;
    try {
      _$result = _$v ??
          new _$Gcreate_ensData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gcreate_ensData', 'G__typename'),
              createEns: createEns.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createEns';
        createEns.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gcreate_ensData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gcreate_ensData_createEns extends Gcreate_ensData_createEns {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gcreate_ensData_createEns(
          [void Function(Gcreate_ensData_createEnsBuilder)? updates]) =>
      (new Gcreate_ensData_createEnsBuilder()..update(updates))._build();

  _$Gcreate_ensData_createEns._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gcreate_ensData_createEns', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success, r'Gcreate_ensData_createEns', 'success');
  }

  @override
  Gcreate_ensData_createEns rebuild(
          void Function(Gcreate_ensData_createEnsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gcreate_ensData_createEnsBuilder toBuilder() =>
      new Gcreate_ensData_createEnsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gcreate_ensData_createEns &&
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
    return (newBuiltValueToStringHelper(r'Gcreate_ensData_createEns')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gcreate_ensData_createEnsBuilder
    implements
        Builder<Gcreate_ensData_createEns, Gcreate_ensData_createEnsBuilder> {
  _$Gcreate_ensData_createEns? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gcreate_ensData_createEnsBuilder() {
    Gcreate_ensData_createEns._initializeBuilder(this);
  }

  Gcreate_ensData_createEnsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gcreate_ensData_createEns other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gcreate_ensData_createEns;
  }

  @override
  void update(void Function(Gcreate_ensData_createEnsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gcreate_ensData_createEns build() => _build();

  _$Gcreate_ensData_createEns _build() {
    final _$result = _$v ??
        new _$Gcreate_ensData_createEns._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'Gcreate_ensData_createEns', 'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'Gcreate_ensData_createEns', 'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
