// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_ps_block_ps.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gblock_psData> _$gblockPsDataSerializer =
    new _$Gblock_psDataSerializer();
Serializer<Gblock_psData_blockPS> _$gblockPsDataBlockPSSerializer =
    new _$Gblock_psData_blockPSSerializer();

class _$Gblock_psDataSerializer implements StructuredSerializer<Gblock_psData> {
  @override
  final Iterable<Type> types = const [Gblock_psData, _$Gblock_psData];
  @override
  final String wireName = 'Gblock_psData';

  @override
  Iterable<Object?> serialize(Serializers serializers, Gblock_psData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'blockPS',
      serializers.serialize(object.blockPS,
          specifiedType: const FullType(Gblock_psData_blockPS)),
    ];

    return result;
  }

  @override
  Gblock_psData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gblock_psDataBuilder();

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
        case 'blockPS':
          result.blockPS.replace(serializers.deserialize(value,
                  specifiedType: const FullType(Gblock_psData_blockPS))!
              as Gblock_psData_blockPS);
          break;
      }
    }

    return result.build();
  }
}

class _$Gblock_psData_blockPSSerializer
    implements StructuredSerializer<Gblock_psData_blockPS> {
  @override
  final Iterable<Type> types = const [
    Gblock_psData_blockPS,
    _$Gblock_psData_blockPS
  ];
  @override
  final String wireName = 'Gblock_psData_blockPS';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gblock_psData_blockPS object,
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
  Gblock_psData_blockPS deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gblock_psData_blockPSBuilder();

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

class _$Gblock_psData extends Gblock_psData {
  @override
  final String G__typename;
  @override
  final Gblock_psData_blockPS blockPS;

  factory _$Gblock_psData([void Function(Gblock_psDataBuilder)? updates]) =>
      (new Gblock_psDataBuilder()..update(updates))._build();

  _$Gblock_psData._({required this.G__typename, required this.blockPS})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gblock_psData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(blockPS, r'Gblock_psData', 'blockPS');
  }

  @override
  Gblock_psData rebuild(void Function(Gblock_psDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gblock_psDataBuilder toBuilder() => new Gblock_psDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gblock_psData &&
        G__typename == other.G__typename &&
        blockPS == other.blockPS;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, blockPS.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gblock_psData')
          ..add('G__typename', G__typename)
          ..add('blockPS', blockPS))
        .toString();
  }
}

class Gblock_psDataBuilder
    implements Builder<Gblock_psData, Gblock_psDataBuilder> {
  _$Gblock_psData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gblock_psData_blockPSBuilder? _blockPS;
  Gblock_psData_blockPSBuilder get blockPS =>
      _$this._blockPS ??= new Gblock_psData_blockPSBuilder();
  set blockPS(Gblock_psData_blockPSBuilder? blockPS) =>
      _$this._blockPS = blockPS;

  Gblock_psDataBuilder() {
    Gblock_psData._initializeBuilder(this);
  }

  Gblock_psDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _blockPS = $v.blockPS.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gblock_psData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gblock_psData;
  }

  @override
  void update(void Function(Gblock_psDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gblock_psData build() => _build();

  _$Gblock_psData _build() {
    _$Gblock_psData _$result;
    try {
      _$result = _$v ??
          new _$Gblock_psData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gblock_psData', 'G__typename'),
              blockPS: blockPS.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'blockPS';
        blockPS.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gblock_psData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gblock_psData_blockPS extends Gblock_psData_blockPS {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gblock_psData_blockPS(
          [void Function(Gblock_psData_blockPSBuilder)? updates]) =>
      (new Gblock_psData_blockPSBuilder()..update(updates))._build();

  _$Gblock_psData_blockPS._({required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gblock_psData_blockPS', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success, r'Gblock_psData_blockPS', 'success');
  }

  @override
  Gblock_psData_blockPS rebuild(
          void Function(Gblock_psData_blockPSBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gblock_psData_blockPSBuilder toBuilder() =>
      new Gblock_psData_blockPSBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gblock_psData_blockPS &&
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
    return (newBuiltValueToStringHelper(r'Gblock_psData_blockPS')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gblock_psData_blockPSBuilder
    implements Builder<Gblock_psData_blockPS, Gblock_psData_blockPSBuilder> {
  _$Gblock_psData_blockPS? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gblock_psData_blockPSBuilder() {
    Gblock_psData_blockPS._initializeBuilder(this);
  }

  Gblock_psData_blockPSBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gblock_psData_blockPS other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gblock_psData_blockPS;
  }

  @override
  void update(void Function(Gblock_psData_blockPSBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gblock_psData_blockPS build() => _build();

  _$Gblock_psData_blockPS _build() {
    final _$result = _$v ??
        new _$Gblock_psData_blockPS._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'Gblock_psData_blockPS', 'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'Gblock_psData_blockPS', 'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
