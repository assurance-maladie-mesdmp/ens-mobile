// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_mesures_get_mesures_targets.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_mesures_targetsData> _$ggetMesuresTargetsDataSerializer =
    new _$Gget_mesures_targetsDataSerializer();
Serializer<Gget_mesures_targetsData_measuresTargets>
    _$ggetMesuresTargetsDataMeasuresTargetsSerializer =
    new _$Gget_mesures_targetsData_measuresTargetsSerializer();
Serializer<Gget_mesures_targetsData_measuresTargets_targets>
    _$ggetMesuresTargetsDataMeasuresTargetsTargetsSerializer =
    new _$Gget_mesures_targetsData_measuresTargets_targetsSerializer();

class _$Gget_mesures_targetsDataSerializer
    implements StructuredSerializer<Gget_mesures_targetsData> {
  @override
  final Iterable<Type> types = const [
    Gget_mesures_targetsData,
    _$Gget_mesures_targetsData
  ];
  @override
  final String wireName = 'Gget_mesures_targetsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_mesures_targetsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'measuresTargets',
      serializers.serialize(object.measuresTargets,
          specifiedType:
              const FullType(Gget_mesures_targetsData_measuresTargets)),
    ];

    return result;
  }

  @override
  Gget_mesures_targetsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_mesures_targetsDataBuilder();

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
        case 'measuresTargets':
          result.measuresTargets.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(Gget_mesures_targetsData_measuresTargets))!
              as Gget_mesures_targetsData_measuresTargets);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_mesures_targetsData_measuresTargetsSerializer
    implements StructuredSerializer<Gget_mesures_targetsData_measuresTargets> {
  @override
  final Iterable<Type> types = const [
    Gget_mesures_targetsData_measuresTargets,
    _$Gget_mesures_targetsData_measuresTargets
  ];
  @override
  final String wireName = 'Gget_mesures_targetsData_measuresTargets';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_mesures_targetsData_measuresTargets object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'targets',
      serializers.serialize(object.targets,
          specifiedType: const FullType(BuiltList, const [
            const FullType(Gget_mesures_targetsData_measuresTargets_targets)
          ])),
    ];

    return result;
  }

  @override
  Gget_mesures_targetsData_measuresTargets deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_mesures_targetsData_measuresTargetsBuilder();

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
                const FullType(Gget_mesures_targetsData_measuresTargets_targets)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_mesures_targetsData_measuresTargets_targetsSerializer
    implements
        StructuredSerializer<Gget_mesures_targetsData_measuresTargets_targets> {
  @override
  final Iterable<Type> types = const [
    Gget_mesures_targetsData_measuresTargets_targets,
    _$Gget_mesures_targetsData_measuresTargets_targets
  ];
  @override
  final String wireName = 'Gget_mesures_targetsData_measuresTargets_targets';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_mesures_targetsData_measuresTargets_targets object,
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
  Gget_mesures_targetsData_measuresTargets_targets deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_mesures_targetsData_measuresTargets_targetsBuilder();

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

class _$Gget_mesures_targetsData extends Gget_mesures_targetsData {
  @override
  final String G__typename;
  @override
  final Gget_mesures_targetsData_measuresTargets measuresTargets;

  factory _$Gget_mesures_targetsData(
          [void Function(Gget_mesures_targetsDataBuilder)? updates]) =>
      (new Gget_mesures_targetsDataBuilder()..update(updates))._build();

  _$Gget_mesures_targetsData._(
      {required this.G__typename, required this.measuresTargets})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_mesures_targetsData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        measuresTargets, r'Gget_mesures_targetsData', 'measuresTargets');
  }

  @override
  Gget_mesures_targetsData rebuild(
          void Function(Gget_mesures_targetsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_mesures_targetsDataBuilder toBuilder() =>
      new Gget_mesures_targetsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_mesures_targetsData &&
        G__typename == other.G__typename &&
        measuresTargets == other.measuresTargets;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, measuresTargets.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_mesures_targetsData')
          ..add('G__typename', G__typename)
          ..add('measuresTargets', measuresTargets))
        .toString();
  }
}

class Gget_mesures_targetsDataBuilder
    implements
        Builder<Gget_mesures_targetsData, Gget_mesures_targetsDataBuilder> {
  _$Gget_mesures_targetsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_mesures_targetsData_measuresTargetsBuilder? _measuresTargets;
  Gget_mesures_targetsData_measuresTargetsBuilder get measuresTargets =>
      _$this._measuresTargets ??=
          new Gget_mesures_targetsData_measuresTargetsBuilder();
  set measuresTargets(
          Gget_mesures_targetsData_measuresTargetsBuilder? measuresTargets) =>
      _$this._measuresTargets = measuresTargets;

  Gget_mesures_targetsDataBuilder() {
    Gget_mesures_targetsData._initializeBuilder(this);
  }

  Gget_mesures_targetsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _measuresTargets = $v.measuresTargets.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_mesures_targetsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_mesures_targetsData;
  }

  @override
  void update(void Function(Gget_mesures_targetsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_mesures_targetsData build() => _build();

  _$Gget_mesures_targetsData _build() {
    _$Gget_mesures_targetsData _$result;
    try {
      _$result = _$v ??
          new _$Gget_mesures_targetsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gget_mesures_targetsData', 'G__typename'),
              measuresTargets: measuresTargets.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'measuresTargets';
        measuresTargets.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_mesures_targetsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_mesures_targetsData_measuresTargets
    extends Gget_mesures_targetsData_measuresTargets {
  @override
  final String G__typename;
  @override
  final BuiltList<Gget_mesures_targetsData_measuresTargets_targets> targets;

  factory _$Gget_mesures_targetsData_measuresTargets(
          [void Function(Gget_mesures_targetsData_measuresTargetsBuilder)?
              updates]) =>
      (new Gget_mesures_targetsData_measuresTargetsBuilder()..update(updates))
          ._build();

  _$Gget_mesures_targetsData_measuresTargets._(
      {required this.G__typename, required this.targets})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_mesures_targetsData_measuresTargets', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        targets, r'Gget_mesures_targetsData_measuresTargets', 'targets');
  }

  @override
  Gget_mesures_targetsData_measuresTargets rebuild(
          void Function(Gget_mesures_targetsData_measuresTargetsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_mesures_targetsData_measuresTargetsBuilder toBuilder() =>
      new Gget_mesures_targetsData_measuresTargetsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_mesures_targetsData_measuresTargets &&
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
    return (newBuiltValueToStringHelper(
            r'Gget_mesures_targetsData_measuresTargets')
          ..add('G__typename', G__typename)
          ..add('targets', targets))
        .toString();
  }
}

class Gget_mesures_targetsData_measuresTargetsBuilder
    implements
        Builder<Gget_mesures_targetsData_measuresTargets,
            Gget_mesures_targetsData_measuresTargetsBuilder> {
  _$Gget_mesures_targetsData_measuresTargets? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<Gget_mesures_targetsData_measuresTargets_targets>? _targets;
  ListBuilder<Gget_mesures_targetsData_measuresTargets_targets> get targets =>
      _$this._targets ??=
          new ListBuilder<Gget_mesures_targetsData_measuresTargets_targets>();
  set targets(
          ListBuilder<Gget_mesures_targetsData_measuresTargets_targets>?
              targets) =>
      _$this._targets = targets;

  Gget_mesures_targetsData_measuresTargetsBuilder() {
    Gget_mesures_targetsData_measuresTargets._initializeBuilder(this);
  }

  Gget_mesures_targetsData_measuresTargetsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _targets = $v.targets.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_mesures_targetsData_measuresTargets other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_mesures_targetsData_measuresTargets;
  }

  @override
  void update(
      void Function(Gget_mesures_targetsData_measuresTargetsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_mesures_targetsData_measuresTargets build() => _build();

  _$Gget_mesures_targetsData_measuresTargets _build() {
    _$Gget_mesures_targetsData_measuresTargets _$result;
    try {
      _$result = _$v ??
          new _$Gget_mesures_targetsData_measuresTargets._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gget_mesures_targetsData_measuresTargets', 'G__typename'),
              targets: targets.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'targets';
        targets.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_mesures_targetsData_measuresTargets',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_mesures_targetsData_measuresTargets_targets
    extends Gget_mesures_targetsData_measuresTargets_targets {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final _i2.GMeasureCode type;
  @override
  final double value;

  factory _$Gget_mesures_targetsData_measuresTargets_targets(
          [void Function(
                  Gget_mesures_targetsData_measuresTargets_targetsBuilder)?
              updates]) =>
      (new Gget_mesures_targetsData_measuresTargets_targetsBuilder()
            ..update(updates))
          ._build();

  _$Gget_mesures_targetsData_measuresTargets_targets._(
      {required this.G__typename,
      required this.id,
      required this.type,
      required this.value})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_mesures_targetsData_measuresTargets_targets', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'Gget_mesures_targetsData_measuresTargets_targets', 'id');
    BuiltValueNullFieldError.checkNotNull(
        type, r'Gget_mesures_targetsData_measuresTargets_targets', 'type');
    BuiltValueNullFieldError.checkNotNull(
        value, r'Gget_mesures_targetsData_measuresTargets_targets', 'value');
  }

  @override
  Gget_mesures_targetsData_measuresTargets_targets rebuild(
          void Function(Gget_mesures_targetsData_measuresTargets_targetsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_mesures_targetsData_measuresTargets_targetsBuilder toBuilder() =>
      new Gget_mesures_targetsData_measuresTargets_targetsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_mesures_targetsData_measuresTargets_targets &&
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
            r'Gget_mesures_targetsData_measuresTargets_targets')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('type', type)
          ..add('value', value))
        .toString();
  }
}

class Gget_mesures_targetsData_measuresTargets_targetsBuilder
    implements
        Builder<Gget_mesures_targetsData_measuresTargets_targets,
            Gget_mesures_targetsData_measuresTargets_targetsBuilder> {
  _$Gget_mesures_targetsData_measuresTargets_targets? _$v;

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

  Gget_mesures_targetsData_measuresTargets_targetsBuilder() {
    Gget_mesures_targetsData_measuresTargets_targets._initializeBuilder(this);
  }

  Gget_mesures_targetsData_measuresTargets_targetsBuilder get _$this {
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
  void replace(Gget_mesures_targetsData_measuresTargets_targets other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_mesures_targetsData_measuresTargets_targets;
  }

  @override
  void update(
      void Function(Gget_mesures_targetsData_measuresTargets_targetsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_mesures_targetsData_measuresTargets_targets build() => _build();

  _$Gget_mesures_targetsData_measuresTargets_targets _build() {
    final _$result = _$v ??
        new _$Gget_mesures_targetsData_measuresTargets_targets._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_mesures_targetsData_measuresTargets_targets',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'Gget_mesures_targetsData_measuresTargets_targets', 'id'),
            type: BuiltValueNullFieldError.checkNotNull(type,
                r'Gget_mesures_targetsData_measuresTargets_targets', 'type'),
            value: BuiltValueNullFieldError.checkNotNull(value,
                r'Gget_mesures_targetsData_measuresTargets_targets', 'value'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
