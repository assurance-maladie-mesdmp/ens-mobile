// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_mesures_update_mesure_target.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gupdate_mesure_targetData> _$gupdateMesureTargetDataSerializer =
    new _$Gupdate_mesure_targetDataSerializer();
Serializer<Gupdate_mesure_targetData_updateMeasureTarget>
    _$gupdateMesureTargetDataUpdateMeasureTargetSerializer =
    new _$Gupdate_mesure_targetData_updateMeasureTargetSerializer();

class _$Gupdate_mesure_targetDataSerializer
    implements StructuredSerializer<Gupdate_mesure_targetData> {
  @override
  final Iterable<Type> types = const [
    Gupdate_mesure_targetData,
    _$Gupdate_mesure_targetData
  ];
  @override
  final String wireName = 'Gupdate_mesure_targetData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_mesure_targetData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'updateMeasureTarget',
      serializers.serialize(object.updateMeasureTarget,
          specifiedType:
              const FullType(Gupdate_mesure_targetData_updateMeasureTarget)),
    ];

    return result;
  }

  @override
  Gupdate_mesure_targetData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_mesure_targetDataBuilder();

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
        case 'updateMeasureTarget':
          result.updateMeasureTarget.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gupdate_mesure_targetData_updateMeasureTarget))!
              as Gupdate_mesure_targetData_updateMeasureTarget);
          break;
      }
    }

    return result.build();
  }
}

class _$Gupdate_mesure_targetData_updateMeasureTargetSerializer
    implements
        StructuredSerializer<Gupdate_mesure_targetData_updateMeasureTarget> {
  @override
  final Iterable<Type> types = const [
    Gupdate_mesure_targetData_updateMeasureTarget,
    _$Gupdate_mesure_targetData_updateMeasureTarget
  ];
  @override
  final String wireName = 'Gupdate_mesure_targetData_updateMeasureTarget';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gupdate_mesure_targetData_updateMeasureTarget object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type,
          specifiedType: const FullType(_i2.GMeasureCode)),
      'value',
      serializers.serialize(object.value,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  Gupdate_mesure_targetData_updateMeasureTarget deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_mesure_targetData_updateMeasureTargetBuilder();

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GMeasureCode))!
              as _i2.GMeasureCode;
          break;
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
      }
    }

    return result.build();
  }
}

class _$Gupdate_mesure_targetData extends Gupdate_mesure_targetData {
  @override
  final String G__typename;
  @override
  final Gupdate_mesure_targetData_updateMeasureTarget updateMeasureTarget;

  factory _$Gupdate_mesure_targetData(
          [void Function(Gupdate_mesure_targetDataBuilder)? updates]) =>
      (new Gupdate_mesure_targetDataBuilder()..update(updates))._build();

  _$Gupdate_mesure_targetData._(
      {required this.G__typename, required this.updateMeasureTarget})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gupdate_mesure_targetData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(updateMeasureTarget,
        r'Gupdate_mesure_targetData', 'updateMeasureTarget');
  }

  @override
  Gupdate_mesure_targetData rebuild(
          void Function(Gupdate_mesure_targetDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_mesure_targetDataBuilder toBuilder() =>
      new Gupdate_mesure_targetDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_mesure_targetData &&
        G__typename == other.G__typename &&
        updateMeasureTarget == other.updateMeasureTarget;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, updateMeasureTarget.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gupdate_mesure_targetData')
          ..add('G__typename', G__typename)
          ..add('updateMeasureTarget', updateMeasureTarget))
        .toString();
  }
}

class Gupdate_mesure_targetDataBuilder
    implements
        Builder<Gupdate_mesure_targetData, Gupdate_mesure_targetDataBuilder> {
  _$Gupdate_mesure_targetData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gupdate_mesure_targetData_updateMeasureTargetBuilder? _updateMeasureTarget;
  Gupdate_mesure_targetData_updateMeasureTargetBuilder
      get updateMeasureTarget => _$this._updateMeasureTarget ??=
          new Gupdate_mesure_targetData_updateMeasureTargetBuilder();
  set updateMeasureTarget(
          Gupdate_mesure_targetData_updateMeasureTargetBuilder?
              updateMeasureTarget) =>
      _$this._updateMeasureTarget = updateMeasureTarget;

  Gupdate_mesure_targetDataBuilder() {
    Gupdate_mesure_targetData._initializeBuilder(this);
  }

  Gupdate_mesure_targetDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _updateMeasureTarget = $v.updateMeasureTarget.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_mesure_targetData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_mesure_targetData;
  }

  @override
  void update(void Function(Gupdate_mesure_targetDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_mesure_targetData build() => _build();

  _$Gupdate_mesure_targetData _build() {
    _$Gupdate_mesure_targetData _$result;
    try {
      _$result = _$v ??
          new _$Gupdate_mesure_targetData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gupdate_mesure_targetData', 'G__typename'),
              updateMeasureTarget: updateMeasureTarget.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'updateMeasureTarget';
        updateMeasureTarget.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gupdate_mesure_targetData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gupdate_mesure_targetData_updateMeasureTarget
    extends Gupdate_mesure_targetData_updateMeasureTarget {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final _i2.GMeasureCode type;
  @override
  final double value;

  factory _$Gupdate_mesure_targetData_updateMeasureTarget(
          [void Function(Gupdate_mesure_targetData_updateMeasureTargetBuilder)?
              updates]) =>
      (new Gupdate_mesure_targetData_updateMeasureTargetBuilder()
            ..update(updates))
          ._build();

  _$Gupdate_mesure_targetData_updateMeasureTarget._(
      {required this.G__typename,
      required this.id,
      required this.type,
      required this.value})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gupdate_mesure_targetData_updateMeasureTarget', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'Gupdate_mesure_targetData_updateMeasureTarget', 'id');
    BuiltValueNullFieldError.checkNotNull(
        type, r'Gupdate_mesure_targetData_updateMeasureTarget', 'type');
    BuiltValueNullFieldError.checkNotNull(
        value, r'Gupdate_mesure_targetData_updateMeasureTarget', 'value');
  }

  @override
  Gupdate_mesure_targetData_updateMeasureTarget rebuild(
          void Function(Gupdate_mesure_targetData_updateMeasureTargetBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_mesure_targetData_updateMeasureTargetBuilder toBuilder() =>
      new Gupdate_mesure_targetData_updateMeasureTargetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_mesure_targetData_updateMeasureTarget &&
        G__typename == other.G__typename &&
        id == other.id &&
        type == other.type &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gupdate_mesure_targetData_updateMeasureTarget')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('type', type)
          ..add('value', value))
        .toString();
  }
}

class Gupdate_mesure_targetData_updateMeasureTargetBuilder
    implements
        Builder<Gupdate_mesure_targetData_updateMeasureTarget,
            Gupdate_mesure_targetData_updateMeasureTargetBuilder> {
  _$Gupdate_mesure_targetData_updateMeasureTarget? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  _i2.GMeasureCode? _type;
  _i2.GMeasureCode? get type => _$this._type;
  set type(_i2.GMeasureCode? type) => _$this._type = type;

  double? _value;
  double? get value => _$this._value;
  set value(double? value) => _$this._value = value;

  Gupdate_mesure_targetData_updateMeasureTargetBuilder() {
    Gupdate_mesure_targetData_updateMeasureTarget._initializeBuilder(this);
  }

  Gupdate_mesure_targetData_updateMeasureTargetBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _type = $v.type;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_mesure_targetData_updateMeasureTarget other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_mesure_targetData_updateMeasureTarget;
  }

  @override
  void update(
      void Function(Gupdate_mesure_targetData_updateMeasureTargetBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_mesure_targetData_updateMeasureTarget build() => _build();

  _$Gupdate_mesure_targetData_updateMeasureTarget _build() {
    final _$result = _$v ??
        new _$Gupdate_mesure_targetData_updateMeasureTarget._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gupdate_mesure_targetData_updateMeasureTarget',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'Gupdate_mesure_targetData_updateMeasureTarget', 'id'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'Gupdate_mesure_targetData_updateMeasureTarget', 'type'),
            value: BuiltValueNullFieldError.checkNotNull(value,
                r'Gupdate_mesure_targetData_updateMeasureTarget', 'value'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
