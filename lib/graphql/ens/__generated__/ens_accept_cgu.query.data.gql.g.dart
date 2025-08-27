// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_accept_cgu.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gaccept_cguData> _$gacceptCguDataSerializer =
    new _$Gaccept_cguDataSerializer();
Serializer<Gaccept_cguData_setCGU> _$gacceptCguDataSetCGUSerializer =
    new _$Gaccept_cguData_setCGUSerializer();

class _$Gaccept_cguDataSerializer
    implements StructuredSerializer<Gaccept_cguData> {
  @override
  final Iterable<Type> types = const [Gaccept_cguData, _$Gaccept_cguData];
  @override
  final String wireName = 'Gaccept_cguData';

  @override
  Iterable<Object?> serialize(Serializers serializers, Gaccept_cguData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'setCGU',
      serializers.serialize(object.setCGU,
          specifiedType: const FullType(Gaccept_cguData_setCGU)),
    ];

    return result;
  }

  @override
  Gaccept_cguData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gaccept_cguDataBuilder();

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
        case 'setCGU':
          result.setCGU.replace(serializers.deserialize(value,
                  specifiedType: const FullType(Gaccept_cguData_setCGU))!
              as Gaccept_cguData_setCGU);
          break;
      }
    }

    return result.build();
  }
}

class _$Gaccept_cguData_setCGUSerializer
    implements StructuredSerializer<Gaccept_cguData_setCGU> {
  @override
  final Iterable<Type> types = const [
    Gaccept_cguData_setCGU,
    _$Gaccept_cguData_setCGU
  ];
  @override
  final String wireName = 'Gaccept_cguData_setCGU';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gaccept_cguData_setCGU object,
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
  Gaccept_cguData_setCGU deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gaccept_cguData_setCGUBuilder();

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

class _$Gaccept_cguData extends Gaccept_cguData {
  @override
  final String G__typename;
  @override
  final Gaccept_cguData_setCGU setCGU;

  factory _$Gaccept_cguData([void Function(Gaccept_cguDataBuilder)? updates]) =>
      (new Gaccept_cguDataBuilder()..update(updates))._build();

  _$Gaccept_cguData._({required this.G__typename, required this.setCGU})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gaccept_cguData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(setCGU, r'Gaccept_cguData', 'setCGU');
  }

  @override
  Gaccept_cguData rebuild(void Function(Gaccept_cguDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gaccept_cguDataBuilder toBuilder() =>
      new Gaccept_cguDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gaccept_cguData &&
        G__typename == other.G__typename &&
        setCGU == other.setCGU;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, setCGU.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gaccept_cguData')
          ..add('G__typename', G__typename)
          ..add('setCGU', setCGU))
        .toString();
  }
}

class Gaccept_cguDataBuilder
    implements Builder<Gaccept_cguData, Gaccept_cguDataBuilder> {
  _$Gaccept_cguData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gaccept_cguData_setCGUBuilder? _setCGU;
  Gaccept_cguData_setCGUBuilder get setCGU =>
      _$this._setCGU ??= new Gaccept_cguData_setCGUBuilder();
  set setCGU(Gaccept_cguData_setCGUBuilder? setCGU) => _$this._setCGU = setCGU;

  Gaccept_cguDataBuilder() {
    Gaccept_cguData._initializeBuilder(this);
  }

  Gaccept_cguDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _setCGU = $v.setCGU.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gaccept_cguData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gaccept_cguData;
  }

  @override
  void update(void Function(Gaccept_cguDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gaccept_cguData build() => _build();

  _$Gaccept_cguData _build() {
    _$Gaccept_cguData _$result;
    try {
      _$result = _$v ??
          new _$Gaccept_cguData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gaccept_cguData', 'G__typename'),
              setCGU: setCGU.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'setCGU';
        setCGU.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gaccept_cguData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gaccept_cguData_setCGU extends Gaccept_cguData_setCGU {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gaccept_cguData_setCGU(
          [void Function(Gaccept_cguData_setCGUBuilder)? updates]) =>
      (new Gaccept_cguData_setCGUBuilder()..update(updates))._build();

  _$Gaccept_cguData_setCGU._({required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gaccept_cguData_setCGU', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success, r'Gaccept_cguData_setCGU', 'success');
  }

  @override
  Gaccept_cguData_setCGU rebuild(
          void Function(Gaccept_cguData_setCGUBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gaccept_cguData_setCGUBuilder toBuilder() =>
      new Gaccept_cguData_setCGUBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gaccept_cguData_setCGU &&
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
    return (newBuiltValueToStringHelper(r'Gaccept_cguData_setCGU')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gaccept_cguData_setCGUBuilder
    implements Builder<Gaccept_cguData_setCGU, Gaccept_cguData_setCGUBuilder> {
  _$Gaccept_cguData_setCGU? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gaccept_cguData_setCGUBuilder() {
    Gaccept_cguData_setCGU._initializeBuilder(this);
  }

  Gaccept_cguData_setCGUBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gaccept_cguData_setCGU other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gaccept_cguData_setCGU;
  }

  @override
  void update(void Function(Gaccept_cguData_setCGUBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gaccept_cguData_setCGU build() => _build();

  _$Gaccept_cguData_setCGU _build() {
    final _$result = _$v ??
        new _$Gaccept_cguData_setCGU._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'Gaccept_cguData_setCGU', 'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'Gaccept_cguData_setCGU', 'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
