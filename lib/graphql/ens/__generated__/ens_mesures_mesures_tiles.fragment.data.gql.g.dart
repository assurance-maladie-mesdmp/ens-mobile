// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_mesures_mesures_tiles.fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GmesuresTilesData> _$gmesuresTilesDataSerializer =
    new _$GmesuresTilesDataSerializer();
Serializer<GmesuresTilesData_tiles> _$gmesuresTilesDataTilesSerializer =
    new _$GmesuresTilesData_tilesSerializer();

class _$GmesuresTilesDataSerializer
    implements StructuredSerializer<GmesuresTilesData> {
  @override
  final Iterable<Type> types = const [GmesuresTilesData, _$GmesuresTilesData];
  @override
  final String wireName = 'GmesuresTilesData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GmesuresTilesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'tiles',
      serializers.serialize(object.tiles,
          specifiedType: const FullType(
              BuiltList, const [const FullType(GmesuresTilesData_tiles)])),
    ];

    return result;
  }

  @override
  GmesuresTilesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GmesuresTilesDataBuilder();

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
        case 'tiles':
          result.tiles.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GmesuresTilesData_tiles)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GmesuresTilesData_tilesSerializer
    implements StructuredSerializer<GmesuresTilesData_tiles> {
  @override
  final Iterable<Type> types = const [
    GmesuresTilesData_tiles,
    _$GmesuresTilesData_tiles
  ];
  @override
  final String wireName = 'GmesuresTilesData_tiles';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GmesuresTilesData_tiles object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type,
          specifiedType: const FullType(_i1.GMeasureCode)),
      'visible',
      serializers.serialize(object.visible,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  GmesuresTilesData_tiles deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GmesuresTilesData_tilesBuilder();

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
        case 'type':
          result.type = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GMeasureCode))!
              as _i1.GMeasureCode;
          break;
        case 'visible':
          result.visible = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GmesuresTilesData extends GmesuresTilesData {
  @override
  final String G__typename;
  @override
  final BuiltList<GmesuresTilesData_tiles> tiles;

  factory _$GmesuresTilesData(
          [void Function(GmesuresTilesDataBuilder)? updates]) =>
      (new GmesuresTilesDataBuilder()..update(updates))._build();

  _$GmesuresTilesData._({required this.G__typename, required this.tiles})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GmesuresTilesData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(tiles, r'GmesuresTilesData', 'tiles');
  }

  @override
  GmesuresTilesData rebuild(void Function(GmesuresTilesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmesuresTilesDataBuilder toBuilder() =>
      new GmesuresTilesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmesuresTilesData &&
        G__typename == other.G__typename &&
        tiles == other.tiles;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, tiles.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GmesuresTilesData')
          ..add('G__typename', G__typename)
          ..add('tiles', tiles))
        .toString();
  }
}

class GmesuresTilesDataBuilder
    implements Builder<GmesuresTilesData, GmesuresTilesDataBuilder> {
  _$GmesuresTilesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GmesuresTilesData_tiles>? _tiles;
  ListBuilder<GmesuresTilesData_tiles> get tiles =>
      _$this._tiles ??= new ListBuilder<GmesuresTilesData_tiles>();
  set tiles(ListBuilder<GmesuresTilesData_tiles>? tiles) =>
      _$this._tiles = tiles;

  GmesuresTilesDataBuilder() {
    GmesuresTilesData._initializeBuilder(this);
  }

  GmesuresTilesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _tiles = $v.tiles.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GmesuresTilesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmesuresTilesData;
  }

  @override
  void update(void Function(GmesuresTilesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GmesuresTilesData build() => _build();

  _$GmesuresTilesData _build() {
    _$GmesuresTilesData _$result;
    try {
      _$result = _$v ??
          new _$GmesuresTilesData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GmesuresTilesData', 'G__typename'),
              tiles: tiles.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tiles';
        tiles.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GmesuresTilesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GmesuresTilesData_tiles extends GmesuresTilesData_tiles {
  @override
  final String G__typename;
  @override
  final _i1.GMeasureCode type;
  @override
  final bool visible;

  factory _$GmesuresTilesData_tiles(
          [void Function(GmesuresTilesData_tilesBuilder)? updates]) =>
      (new GmesuresTilesData_tilesBuilder()..update(updates))._build();

  _$GmesuresTilesData_tiles._(
      {required this.G__typename, required this.type, required this.visible})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GmesuresTilesData_tiles', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        type, r'GmesuresTilesData_tiles', 'type');
    BuiltValueNullFieldError.checkNotNull(
        visible, r'GmesuresTilesData_tiles', 'visible');
  }

  @override
  GmesuresTilesData_tiles rebuild(
          void Function(GmesuresTilesData_tilesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmesuresTilesData_tilesBuilder toBuilder() =>
      new GmesuresTilesData_tilesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmesuresTilesData_tiles &&
        G__typename == other.G__typename &&
        type == other.type &&
        visible == other.visible;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, visible.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GmesuresTilesData_tiles')
          ..add('G__typename', G__typename)
          ..add('type', type)
          ..add('visible', visible))
        .toString();
  }
}

class GmesuresTilesData_tilesBuilder
    implements
        Builder<GmesuresTilesData_tiles, GmesuresTilesData_tilesBuilder> {
  _$GmesuresTilesData_tiles? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i1.GMeasureCode? _type;
  _i1.GMeasureCode? get type => _$this._type;
  set type(_i1.GMeasureCode? type) => _$this._type = type;

  bool? _visible;
  bool? get visible => _$this._visible;
  set visible(bool? visible) => _$this._visible = visible;

  GmesuresTilesData_tilesBuilder() {
    GmesuresTilesData_tiles._initializeBuilder(this);
  }

  GmesuresTilesData_tilesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _type = $v.type;
      _visible = $v.visible;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GmesuresTilesData_tiles other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmesuresTilesData_tiles;
  }

  @override
  void update(void Function(GmesuresTilesData_tilesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GmesuresTilesData_tiles build() => _build();

  _$GmesuresTilesData_tiles _build() {
    final _$result = _$v ??
        new _$GmesuresTilesData_tiles._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GmesuresTilesData_tiles', 'G__typename'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'GmesuresTilesData_tiles', 'type'),
            visible: BuiltValueNullFieldError.checkNotNull(
                visible, r'GmesuresTilesData_tiles', 'visible'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
