// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_mesures_mesures_targets.fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GmesuresTargetsData> _$gmesuresTargetsDataSerializer =
    new _$GmesuresTargetsDataSerializer();
Serializer<GmesuresTargetsData_targets> _$gmesuresTargetsDataTargetsSerializer =
    new _$GmesuresTargetsData_targetsSerializer();

class _$GmesuresTargetsDataSerializer
    implements StructuredSerializer<GmesuresTargetsData> {
  @override
  final Iterable<Type> types = const [
    GmesuresTargetsData,
    _$GmesuresTargetsData
  ];
  @override
  final String wireName = 'GmesuresTargetsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GmesuresTargetsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'targets',
      serializers.serialize(object.targets,
          specifiedType: const FullType(
              BuiltList, const [const FullType(GmesuresTargetsData_targets)])),
    ];

    return result;
  }

  @override
  GmesuresTargetsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GmesuresTargetsDataBuilder();

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
        case 'targets':
          result.targets.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GmesuresTargetsData_targets)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GmesuresTargetsData_targetsSerializer
    implements StructuredSerializer<GmesuresTargetsData_targets> {
  @override
  final Iterable<Type> types = const [
    GmesuresTargetsData_targets,
    _$GmesuresTargetsData_targets
  ];
  @override
  final String wireName = 'GmesuresTargetsData_targets';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GmesuresTargetsData_targets object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type,
          specifiedType: const FullType(_i1.GMeasureCode)),
      'value',
      serializers.serialize(object.value,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  GmesuresTargetsData_targets deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GmesuresTargetsData_targetsBuilder();

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
                  specifiedType: const FullType(_i1.GMeasureCode))!
              as _i1.GMeasureCode;
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

class _$GmesuresTargetsData extends GmesuresTargetsData {
  @override
  final String G__typename;
  @override
  final BuiltList<GmesuresTargetsData_targets> targets;

  factory _$GmesuresTargetsData(
          [void Function(GmesuresTargetsDataBuilder)? updates]) =>
      (new GmesuresTargetsDataBuilder()..update(updates))._build();

  _$GmesuresTargetsData._({required this.G__typename, required this.targets})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GmesuresTargetsData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        targets, r'GmesuresTargetsData', 'targets');
  }

  @override
  GmesuresTargetsData rebuild(
          void Function(GmesuresTargetsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmesuresTargetsDataBuilder toBuilder() =>
      new GmesuresTargetsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmesuresTargetsData &&
        G__typename == other.G__typename &&
        targets == other.targets;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, targets.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GmesuresTargetsData')
          ..add('G__typename', G__typename)
          ..add('targets', targets))
        .toString();
  }
}

class GmesuresTargetsDataBuilder
    implements Builder<GmesuresTargetsData, GmesuresTargetsDataBuilder> {
  _$GmesuresTargetsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GmesuresTargetsData_targets>? _targets;
  ListBuilder<GmesuresTargetsData_targets> get targets =>
      _$this._targets ??= new ListBuilder<GmesuresTargetsData_targets>();
  set targets(ListBuilder<GmesuresTargetsData_targets>? targets) =>
      _$this._targets = targets;

  GmesuresTargetsDataBuilder() {
    GmesuresTargetsData._initializeBuilder(this);
  }

  GmesuresTargetsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _targets = $v.targets.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GmesuresTargetsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmesuresTargetsData;
  }

  @override
  void update(void Function(GmesuresTargetsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GmesuresTargetsData build() => _build();

  _$GmesuresTargetsData _build() {
    _$GmesuresTargetsData _$result;
    try {
      _$result = _$v ??
          new _$GmesuresTargetsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GmesuresTargetsData', 'G__typename'),
              targets: targets.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'targets';
        targets.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GmesuresTargetsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GmesuresTargetsData_targets extends GmesuresTargetsData_targets {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final _i1.GMeasureCode type;
  @override
  final double value;

  factory _$GmesuresTargetsData_targets(
          [void Function(GmesuresTargetsData_targetsBuilder)? updates]) =>
      (new GmesuresTargetsData_targetsBuilder()..update(updates))._build();

  _$GmesuresTargetsData_targets._(
      {required this.G__typename,
      required this.id,
      required this.type,
      required this.value})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GmesuresTargetsData_targets', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GmesuresTargetsData_targets', 'id');
    BuiltValueNullFieldError.checkNotNull(
        type, r'GmesuresTargetsData_targets', 'type');
    BuiltValueNullFieldError.checkNotNull(
        value, r'GmesuresTargetsData_targets', 'value');
  }

  @override
  GmesuresTargetsData_targets rebuild(
          void Function(GmesuresTargetsData_targetsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmesuresTargetsData_targetsBuilder toBuilder() =>
      new GmesuresTargetsData_targetsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmesuresTargetsData_targets &&
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
    return (newBuiltValueToStringHelper(r'GmesuresTargetsData_targets')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('type', type)
          ..add('value', value))
        .toString();
  }
}

class GmesuresTargetsData_targetsBuilder
    implements
        Builder<GmesuresTargetsData_targets,
            GmesuresTargetsData_targetsBuilder> {
  _$GmesuresTargetsData_targets? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  _i1.GMeasureCode? _type;
  _i1.GMeasureCode? get type => _$this._type;
  set type(_i1.GMeasureCode? type) => _$this._type = type;

  double? _value;
  double? get value => _$this._value;
  set value(double? value) => _$this._value = value;

  GmesuresTargetsData_targetsBuilder() {
    GmesuresTargetsData_targets._initializeBuilder(this);
  }

  GmesuresTargetsData_targetsBuilder get _$this {
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
  void replace(GmesuresTargetsData_targets other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmesuresTargetsData_targets;
  }

  @override
  void update(void Function(GmesuresTargetsData_targetsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GmesuresTargetsData_targets build() => _build();

  _$GmesuresTargetsData_targets _build() {
    final _$result = _$v ??
        new _$GmesuresTargetsData_targets._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GmesuresTargetsData_targets', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GmesuresTargetsData_targets', 'id'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'GmesuresTargetsData_targets', 'type'),
            value: BuiltValueNullFieldError.checkNotNull(
                value, r'GmesuresTargetsData_targets', 'value'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
