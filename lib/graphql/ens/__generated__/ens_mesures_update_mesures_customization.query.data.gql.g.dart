// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_mesures_update_mesures_customization.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gupdate_mesures_customizationData>
    _$gupdateMesuresCustomizationDataSerializer =
    new _$Gupdate_mesures_customizationDataSerializer();
Serializer<Gupdate_mesures_customizationData_updateMeasuresTiles>
    _$gupdateMesuresCustomizationDataUpdateMeasuresTilesSerializer =
    new _$Gupdate_mesures_customizationData_updateMeasuresTilesSerializer();

class _$Gupdate_mesures_customizationDataSerializer
    implements StructuredSerializer<Gupdate_mesures_customizationData> {
  @override
  final Iterable<Type> types = const [
    Gupdate_mesures_customizationData,
    _$Gupdate_mesures_customizationData
  ];
  @override
  final String wireName = 'Gupdate_mesures_customizationData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_mesures_customizationData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'updateMeasuresTiles',
      serializers.serialize(object.updateMeasuresTiles,
          specifiedType: const FullType(
              Gupdate_mesures_customizationData_updateMeasuresTiles)),
    ];

    return result;
  }

  @override
  Gupdate_mesures_customizationData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_mesures_customizationDataBuilder();

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
        case 'updateMeasuresTiles':
          result.updateMeasuresTiles.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gupdate_mesures_customizationData_updateMeasuresTiles))!
              as Gupdate_mesures_customizationData_updateMeasuresTiles);
          break;
      }
    }

    return result.build();
  }
}

class _$Gupdate_mesures_customizationData_updateMeasuresTilesSerializer
    implements
        StructuredSerializer<
            Gupdate_mesures_customizationData_updateMeasuresTiles> {
  @override
  final Iterable<Type> types = const [
    Gupdate_mesures_customizationData_updateMeasuresTiles,
    _$Gupdate_mesures_customizationData_updateMeasuresTiles
  ];
  @override
  final String wireName =
      'Gupdate_mesures_customizationData_updateMeasuresTiles';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gupdate_mesures_customizationData_updateMeasuresTiles object,
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
  Gupdate_mesures_customizationData_updateMeasuresTiles deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gupdate_mesures_customizationData_updateMeasuresTilesBuilder();

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

class _$Gupdate_mesures_customizationData
    extends Gupdate_mesures_customizationData {
  @override
  final String G__typename;
  @override
  final Gupdate_mesures_customizationData_updateMeasuresTiles
      updateMeasuresTiles;

  factory _$Gupdate_mesures_customizationData(
          [void Function(Gupdate_mesures_customizationDataBuilder)? updates]) =>
      (new Gupdate_mesures_customizationDataBuilder()..update(updates))
          ._build();

  _$Gupdate_mesures_customizationData._(
      {required this.G__typename, required this.updateMeasuresTiles})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gupdate_mesures_customizationData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(updateMeasuresTiles,
        r'Gupdate_mesures_customizationData', 'updateMeasuresTiles');
  }

  @override
  Gupdate_mesures_customizationData rebuild(
          void Function(Gupdate_mesures_customizationDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_mesures_customizationDataBuilder toBuilder() =>
      new Gupdate_mesures_customizationDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_mesures_customizationData &&
        G__typename == other.G__typename &&
        updateMeasuresTiles == other.updateMeasuresTiles;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, updateMeasuresTiles.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gupdate_mesures_customizationData')
          ..add('G__typename', G__typename)
          ..add('updateMeasuresTiles', updateMeasuresTiles))
        .toString();
  }
}

class Gupdate_mesures_customizationDataBuilder
    implements
        Builder<Gupdate_mesures_customizationData,
            Gupdate_mesures_customizationDataBuilder> {
  _$Gupdate_mesures_customizationData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gupdate_mesures_customizationData_updateMeasuresTilesBuilder?
      _updateMeasuresTiles;
  Gupdate_mesures_customizationData_updateMeasuresTilesBuilder
      get updateMeasuresTiles => _$this._updateMeasuresTiles ??=
          new Gupdate_mesures_customizationData_updateMeasuresTilesBuilder();
  set updateMeasuresTiles(
          Gupdate_mesures_customizationData_updateMeasuresTilesBuilder?
              updateMeasuresTiles) =>
      _$this._updateMeasuresTiles = updateMeasuresTiles;

  Gupdate_mesures_customizationDataBuilder() {
    Gupdate_mesures_customizationData._initializeBuilder(this);
  }

  Gupdate_mesures_customizationDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _updateMeasuresTiles = $v.updateMeasuresTiles.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_mesures_customizationData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_mesures_customizationData;
  }

  @override
  void update(
      void Function(Gupdate_mesures_customizationDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_mesures_customizationData build() => _build();

  _$Gupdate_mesures_customizationData _build() {
    _$Gupdate_mesures_customizationData _$result;
    try {
      _$result = _$v ??
          new _$Gupdate_mesures_customizationData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gupdate_mesures_customizationData', 'G__typename'),
              updateMeasuresTiles: updateMeasuresTiles.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'updateMeasuresTiles';
        updateMeasuresTiles.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gupdate_mesures_customizationData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gupdate_mesures_customizationData_updateMeasuresTiles
    extends Gupdate_mesures_customizationData_updateMeasuresTiles {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gupdate_mesures_customizationData_updateMeasuresTiles(
          [void Function(
                  Gupdate_mesures_customizationData_updateMeasuresTilesBuilder)?
              updates]) =>
      (new Gupdate_mesures_customizationData_updateMeasuresTilesBuilder()
            ..update(updates))
          ._build();

  _$Gupdate_mesures_customizationData_updateMeasuresTiles._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gupdate_mesures_customizationData_updateMeasuresTiles',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(success,
        r'Gupdate_mesures_customizationData_updateMeasuresTiles', 'success');
  }

  @override
  Gupdate_mesures_customizationData_updateMeasuresTiles rebuild(
          void Function(
                  Gupdate_mesures_customizationData_updateMeasuresTilesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_mesures_customizationData_updateMeasuresTilesBuilder toBuilder() =>
      new Gupdate_mesures_customizationData_updateMeasuresTilesBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_mesures_customizationData_updateMeasuresTiles &&
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
            r'Gupdate_mesures_customizationData_updateMeasuresTiles')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gupdate_mesures_customizationData_updateMeasuresTilesBuilder
    implements
        Builder<Gupdate_mesures_customizationData_updateMeasuresTiles,
            Gupdate_mesures_customizationData_updateMeasuresTilesBuilder> {
  _$Gupdate_mesures_customizationData_updateMeasuresTiles? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gupdate_mesures_customizationData_updateMeasuresTilesBuilder() {
    Gupdate_mesures_customizationData_updateMeasuresTiles._initializeBuilder(
        this);
  }

  Gupdate_mesures_customizationData_updateMeasuresTilesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_mesures_customizationData_updateMeasuresTiles other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_mesures_customizationData_updateMeasuresTiles;
  }

  @override
  void update(
      void Function(
              Gupdate_mesures_customizationData_updateMeasuresTilesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_mesures_customizationData_updateMeasuresTiles build() => _build();

  _$Gupdate_mesures_customizationData_updateMeasuresTiles _build() {
    final _$result = _$v ??
        new _$Gupdate_mesures_customizationData_updateMeasuresTiles._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gupdate_mesures_customizationData_updateMeasuresTiles',
                'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success,
                r'Gupdate_mesures_customizationData_updateMeasuresTiles',
                'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
