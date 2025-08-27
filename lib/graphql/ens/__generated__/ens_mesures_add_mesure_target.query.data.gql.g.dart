// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_mesures_add_mesure_target.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gadd_mesure_targetData> _$gaddMesureTargetDataSerializer =
    new _$Gadd_mesure_targetDataSerializer();
Serializer<Gadd_mesure_targetData_addMeasureTarget>
    _$gaddMesureTargetDataAddMeasureTargetSerializer =
    new _$Gadd_mesure_targetData_addMeasureTargetSerializer();

class _$Gadd_mesure_targetDataSerializer
    implements StructuredSerializer<Gadd_mesure_targetData> {
  @override
  final Iterable<Type> types = const [
    Gadd_mesure_targetData,
    _$Gadd_mesure_targetData
  ];
  @override
  final String wireName = 'Gadd_mesure_targetData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gadd_mesure_targetData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'addMeasureTarget',
      serializers.serialize(object.addMeasureTarget,
          specifiedType:
              const FullType(Gadd_mesure_targetData_addMeasureTarget)),
    ];

    return result;
  }

  @override
  Gadd_mesure_targetData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gadd_mesure_targetDataBuilder();

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
        case 'addMeasureTarget':
          result.addMeasureTarget.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(Gadd_mesure_targetData_addMeasureTarget))!
              as Gadd_mesure_targetData_addMeasureTarget);
          break;
      }
    }

    return result.build();
  }
}

class _$Gadd_mesure_targetData_addMeasureTargetSerializer
    implements StructuredSerializer<Gadd_mesure_targetData_addMeasureTarget> {
  @override
  final Iterable<Type> types = const [
    Gadd_mesure_targetData_addMeasureTarget,
    _$Gadd_mesure_targetData_addMeasureTarget
  ];
  @override
  final String wireName = 'Gadd_mesure_targetData_addMeasureTarget';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gadd_mesure_targetData_addMeasureTarget object,
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
  Gadd_mesure_targetData_addMeasureTarget deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gadd_mesure_targetData_addMeasureTargetBuilder();

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

class _$Gadd_mesure_targetData extends Gadd_mesure_targetData {
  @override
  final String G__typename;
  @override
  final Gadd_mesure_targetData_addMeasureTarget addMeasureTarget;

  factory _$Gadd_mesure_targetData(
          [void Function(Gadd_mesure_targetDataBuilder)? updates]) =>
      (new Gadd_mesure_targetDataBuilder()..update(updates))._build();

  _$Gadd_mesure_targetData._(
      {required this.G__typename, required this.addMeasureTarget})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gadd_mesure_targetData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        addMeasureTarget, r'Gadd_mesure_targetData', 'addMeasureTarget');
  }

  @override
  Gadd_mesure_targetData rebuild(
          void Function(Gadd_mesure_targetDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gadd_mesure_targetDataBuilder toBuilder() =>
      new Gadd_mesure_targetDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gadd_mesure_targetData &&
        G__typename == other.G__typename &&
        addMeasureTarget == other.addMeasureTarget;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, addMeasureTarget.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gadd_mesure_targetData')
          ..add('G__typename', G__typename)
          ..add('addMeasureTarget', addMeasureTarget))
        .toString();
  }
}

class Gadd_mesure_targetDataBuilder
    implements Builder<Gadd_mesure_targetData, Gadd_mesure_targetDataBuilder> {
  _$Gadd_mesure_targetData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gadd_mesure_targetData_addMeasureTargetBuilder? _addMeasureTarget;
  Gadd_mesure_targetData_addMeasureTargetBuilder get addMeasureTarget =>
      _$this._addMeasureTarget ??=
          new Gadd_mesure_targetData_addMeasureTargetBuilder();
  set addMeasureTarget(
          Gadd_mesure_targetData_addMeasureTargetBuilder? addMeasureTarget) =>
      _$this._addMeasureTarget = addMeasureTarget;

  Gadd_mesure_targetDataBuilder() {
    Gadd_mesure_targetData._initializeBuilder(this);
  }

  Gadd_mesure_targetDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _addMeasureTarget = $v.addMeasureTarget.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gadd_mesure_targetData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gadd_mesure_targetData;
  }

  @override
  void update(void Function(Gadd_mesure_targetDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gadd_mesure_targetData build() => _build();

  _$Gadd_mesure_targetData _build() {
    _$Gadd_mesure_targetData _$result;
    try {
      _$result = _$v ??
          new _$Gadd_mesure_targetData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gadd_mesure_targetData', 'G__typename'),
              addMeasureTarget: addMeasureTarget.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'addMeasureTarget';
        addMeasureTarget.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gadd_mesure_targetData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gadd_mesure_targetData_addMeasureTarget
    extends Gadd_mesure_targetData_addMeasureTarget {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final _i2.GMeasureCode type;
  @override
  final double value;

  factory _$Gadd_mesure_targetData_addMeasureTarget(
          [void Function(Gadd_mesure_targetData_addMeasureTargetBuilder)?
              updates]) =>
      (new Gadd_mesure_targetData_addMeasureTargetBuilder()..update(updates))
          ._build();

  _$Gadd_mesure_targetData_addMeasureTarget._(
      {required this.G__typename,
      required this.id,
      required this.type,
      required this.value})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gadd_mesure_targetData_addMeasureTarget', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'Gadd_mesure_targetData_addMeasureTarget', 'id');
    BuiltValueNullFieldError.checkNotNull(
        type, r'Gadd_mesure_targetData_addMeasureTarget', 'type');
    BuiltValueNullFieldError.checkNotNull(
        value, r'Gadd_mesure_targetData_addMeasureTarget', 'value');
  }

  @override
  Gadd_mesure_targetData_addMeasureTarget rebuild(
          void Function(Gadd_mesure_targetData_addMeasureTargetBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gadd_mesure_targetData_addMeasureTargetBuilder toBuilder() =>
      new Gadd_mesure_targetData_addMeasureTargetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gadd_mesure_targetData_addMeasureTarget &&
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
            r'Gadd_mesure_targetData_addMeasureTarget')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('type', type)
          ..add('value', value))
        .toString();
  }
}

class Gadd_mesure_targetData_addMeasureTargetBuilder
    implements
        Builder<Gadd_mesure_targetData_addMeasureTarget,
            Gadd_mesure_targetData_addMeasureTargetBuilder> {
  _$Gadd_mesure_targetData_addMeasureTarget? _$v;

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

  Gadd_mesure_targetData_addMeasureTargetBuilder() {
    Gadd_mesure_targetData_addMeasureTarget._initializeBuilder(this);
  }

  Gadd_mesure_targetData_addMeasureTargetBuilder get _$this {
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
  void replace(Gadd_mesure_targetData_addMeasureTarget other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gadd_mesure_targetData_addMeasureTarget;
  }

  @override
  void update(
      void Function(Gadd_mesure_targetData_addMeasureTargetBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gadd_mesure_targetData_addMeasureTarget build() => _build();

  _$Gadd_mesure_targetData_addMeasureTarget _build() {
    final _$result = _$v ??
        new _$Gadd_mesure_targetData_addMeasureTarget._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gadd_mesure_targetData_addMeasureTarget', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'Gadd_mesure_targetData_addMeasureTarget', 'id'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'Gadd_mesure_targetData_addMeasureTarget', 'type'),
            value: BuiltValueNullFieldError.checkNotNull(
                value, r'Gadd_mesure_targetData_addMeasureTarget', 'value'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
