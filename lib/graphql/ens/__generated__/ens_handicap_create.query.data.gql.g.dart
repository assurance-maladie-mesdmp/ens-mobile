// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_handicap_create.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gadd_handicapData> _$gaddHandicapDataSerializer =
    new _$Gadd_handicapDataSerializer();
Serializer<Gadd_handicapData_createDisability>
    _$gaddHandicapDataCreateDisabilitySerializer =
    new _$Gadd_handicapData_createDisabilitySerializer();

class _$Gadd_handicapDataSerializer
    implements StructuredSerializer<Gadd_handicapData> {
  @override
  final Iterable<Type> types = const [Gadd_handicapData, _$Gadd_handicapData];
  @override
  final String wireName = 'Gadd_handicapData';

  @override
  Iterable<Object?> serialize(Serializers serializers, Gadd_handicapData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'createDisability',
      serializers.serialize(object.createDisability,
          specifiedType: const FullType(Gadd_handicapData_createDisability)),
    ];

    return result;
  }

  @override
  Gadd_handicapData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gadd_handicapDataBuilder();

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
        case 'createDisability':
          result.createDisability.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(Gadd_handicapData_createDisability))!
              as Gadd_handicapData_createDisability);
          break;
      }
    }

    return result.build();
  }
}

class _$Gadd_handicapData_createDisabilitySerializer
    implements StructuredSerializer<Gadd_handicapData_createDisability> {
  @override
  final Iterable<Type> types = const [
    Gadd_handicapData_createDisability,
    _$Gadd_handicapData_createDisability
  ];
  @override
  final String wireName = 'Gadd_handicapData_createDisability';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gadd_handicapData_createDisability object,
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
  Gadd_handicapData_createDisability deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gadd_handicapData_createDisabilityBuilder();

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

class _$Gadd_handicapData extends Gadd_handicapData {
  @override
  final String G__typename;
  @override
  final Gadd_handicapData_createDisability createDisability;

  factory _$Gadd_handicapData(
          [void Function(Gadd_handicapDataBuilder)? updates]) =>
      (new Gadd_handicapDataBuilder()..update(updates))._build();

  _$Gadd_handicapData._(
      {required this.G__typename, required this.createDisability})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gadd_handicapData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        createDisability, r'Gadd_handicapData', 'createDisability');
  }

  @override
  Gadd_handicapData rebuild(void Function(Gadd_handicapDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gadd_handicapDataBuilder toBuilder() =>
      new Gadd_handicapDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gadd_handicapData &&
        G__typename == other.G__typename &&
        createDisability == other.createDisability;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, createDisability.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gadd_handicapData')
          ..add('G__typename', G__typename)
          ..add('createDisability', createDisability))
        .toString();
  }
}

class Gadd_handicapDataBuilder
    implements Builder<Gadd_handicapData, Gadd_handicapDataBuilder> {
  _$Gadd_handicapData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gadd_handicapData_createDisabilityBuilder? _createDisability;
  Gadd_handicapData_createDisabilityBuilder get createDisability =>
      _$this._createDisability ??=
          new Gadd_handicapData_createDisabilityBuilder();
  set createDisability(
          Gadd_handicapData_createDisabilityBuilder? createDisability) =>
      _$this._createDisability = createDisability;

  Gadd_handicapDataBuilder() {
    Gadd_handicapData._initializeBuilder(this);
  }

  Gadd_handicapDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _createDisability = $v.createDisability.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gadd_handicapData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gadd_handicapData;
  }

  @override
  void update(void Function(Gadd_handicapDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gadd_handicapData build() => _build();

  _$Gadd_handicapData _build() {
    _$Gadd_handicapData _$result;
    try {
      _$result = _$v ??
          new _$Gadd_handicapData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gadd_handicapData', 'G__typename'),
              createDisability: createDisability.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createDisability';
        createDisability.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gadd_handicapData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gadd_handicapData_createDisability
    extends Gadd_handicapData_createDisability {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gadd_handicapData_createDisability(
          [void Function(Gadd_handicapData_createDisabilityBuilder)?
              updates]) =>
      (new Gadd_handicapData_createDisabilityBuilder()..update(updates))
          ._build();

  _$Gadd_handicapData_createDisability._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gadd_handicapData_createDisability', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success, r'Gadd_handicapData_createDisability', 'success');
  }

  @override
  Gadd_handicapData_createDisability rebuild(
          void Function(Gadd_handicapData_createDisabilityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gadd_handicapData_createDisabilityBuilder toBuilder() =>
      new Gadd_handicapData_createDisabilityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gadd_handicapData_createDisability &&
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
    return (newBuiltValueToStringHelper(r'Gadd_handicapData_createDisability')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gadd_handicapData_createDisabilityBuilder
    implements
        Builder<Gadd_handicapData_createDisability,
            Gadd_handicapData_createDisabilityBuilder> {
  _$Gadd_handicapData_createDisability? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gadd_handicapData_createDisabilityBuilder() {
    Gadd_handicapData_createDisability._initializeBuilder(this);
  }

  Gadd_handicapData_createDisabilityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gadd_handicapData_createDisability other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gadd_handicapData_createDisability;
  }

  @override
  void update(
      void Function(Gadd_handicapData_createDisabilityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gadd_handicapData_createDisability build() => _build();

  _$Gadd_handicapData_createDisability _build() {
    final _$result = _$v ??
        new _$Gadd_handicapData_createDisability._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gadd_handicapData_createDisability', 'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'Gadd_handicapData_createDisability', 'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
