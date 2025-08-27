// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_mesures_remove_mesure.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gremove_mesureData> _$gremoveMesureDataSerializer =
    new _$Gremove_mesureDataSerializer();
Serializer<Gremove_mesureData_removeMeasure>
    _$gremoveMesureDataRemoveMeasureSerializer =
    new _$Gremove_mesureData_removeMeasureSerializer();

class _$Gremove_mesureDataSerializer
    implements StructuredSerializer<Gremove_mesureData> {
  @override
  final Iterable<Type> types = const [Gremove_mesureData, _$Gremove_mesureData];
  @override
  final String wireName = 'Gremove_mesureData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gremove_mesureData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'removeMeasure',
      serializers.serialize(object.removeMeasure,
          specifiedType: const FullType(Gremove_mesureData_removeMeasure)),
    ];

    return result;
  }

  @override
  Gremove_mesureData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gremove_mesureDataBuilder();

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
        case 'removeMeasure':
          result.removeMeasure.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(Gremove_mesureData_removeMeasure))!
              as Gremove_mesureData_removeMeasure);
          break;
      }
    }

    return result.build();
  }
}

class _$Gremove_mesureData_removeMeasureSerializer
    implements StructuredSerializer<Gremove_mesureData_removeMeasure> {
  @override
  final Iterable<Type> types = const [
    Gremove_mesureData_removeMeasure,
    _$Gremove_mesureData_removeMeasure
  ];
  @override
  final String wireName = 'Gremove_mesureData_removeMeasure';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gremove_mesureData_removeMeasure object,
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
  Gremove_mesureData_removeMeasure deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gremove_mesureData_removeMeasureBuilder();

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

class _$Gremove_mesureData extends Gremove_mesureData {
  @override
  final String G__typename;
  @override
  final Gremove_mesureData_removeMeasure removeMeasure;

  factory _$Gremove_mesureData(
          [void Function(Gremove_mesureDataBuilder)? updates]) =>
      (new Gremove_mesureDataBuilder()..update(updates))._build();

  _$Gremove_mesureData._(
      {required this.G__typename, required this.removeMeasure})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gremove_mesureData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        removeMeasure, r'Gremove_mesureData', 'removeMeasure');
  }

  @override
  Gremove_mesureData rebuild(
          void Function(Gremove_mesureDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gremove_mesureDataBuilder toBuilder() =>
      new Gremove_mesureDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gremove_mesureData &&
        G__typename == other.G__typename &&
        removeMeasure == other.removeMeasure;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, removeMeasure.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gremove_mesureData')
          ..add('G__typename', G__typename)
          ..add('removeMeasure', removeMeasure))
        .toString();
  }
}

class Gremove_mesureDataBuilder
    implements Builder<Gremove_mesureData, Gremove_mesureDataBuilder> {
  _$Gremove_mesureData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gremove_mesureData_removeMeasureBuilder? _removeMeasure;
  Gremove_mesureData_removeMeasureBuilder get removeMeasure =>
      _$this._removeMeasure ??= new Gremove_mesureData_removeMeasureBuilder();
  set removeMeasure(Gremove_mesureData_removeMeasureBuilder? removeMeasure) =>
      _$this._removeMeasure = removeMeasure;

  Gremove_mesureDataBuilder() {
    Gremove_mesureData._initializeBuilder(this);
  }

  Gremove_mesureDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _removeMeasure = $v.removeMeasure.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gremove_mesureData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gremove_mesureData;
  }

  @override
  void update(void Function(Gremove_mesureDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gremove_mesureData build() => _build();

  _$Gremove_mesureData _build() {
    _$Gremove_mesureData _$result;
    try {
      _$result = _$v ??
          new _$Gremove_mesureData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gremove_mesureData', 'G__typename'),
              removeMeasure: removeMeasure.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'removeMeasure';
        removeMeasure.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gremove_mesureData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gremove_mesureData_removeMeasure
    extends Gremove_mesureData_removeMeasure {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gremove_mesureData_removeMeasure(
          [void Function(Gremove_mesureData_removeMeasureBuilder)? updates]) =>
      (new Gremove_mesureData_removeMeasureBuilder()..update(updates))._build();

  _$Gremove_mesureData_removeMeasure._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gremove_mesureData_removeMeasure', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success, r'Gremove_mesureData_removeMeasure', 'success');
  }

  @override
  Gremove_mesureData_removeMeasure rebuild(
          void Function(Gremove_mesureData_removeMeasureBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gremove_mesureData_removeMeasureBuilder toBuilder() =>
      new Gremove_mesureData_removeMeasureBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gremove_mesureData_removeMeasure &&
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
    return (newBuiltValueToStringHelper(r'Gremove_mesureData_removeMeasure')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gremove_mesureData_removeMeasureBuilder
    implements
        Builder<Gremove_mesureData_removeMeasure,
            Gremove_mesureData_removeMeasureBuilder> {
  _$Gremove_mesureData_removeMeasure? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gremove_mesureData_removeMeasureBuilder() {
    Gremove_mesureData_removeMeasure._initializeBuilder(this);
  }

  Gremove_mesureData_removeMeasureBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gremove_mesureData_removeMeasure other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gremove_mesureData_removeMeasure;
  }

  @override
  void update(void Function(Gremove_mesureData_removeMeasureBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gremove_mesureData_removeMeasure build() => _build();

  _$Gremove_mesureData_removeMeasure _build() {
    final _$result = _$v ??
        new _$Gremove_mesureData_removeMeasure._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gremove_mesureData_removeMeasure', 'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'Gremove_mesureData_removeMeasure', 'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
