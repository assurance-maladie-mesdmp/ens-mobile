// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_mesures_get_last_mesures.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_last_mesuresData> _$ggetLastMesuresDataSerializer =
    new _$Gget_last_mesuresDataSerializer();
Serializer<Gget_last_mesuresData_lastMeasures>
    _$ggetLastMesuresDataLastMeasuresSerializer =
    new _$Gget_last_mesuresData_lastMeasuresSerializer();
Serializer<Gget_last_mesuresData_lastMeasures_metrics>
    _$ggetLastMesuresDataLastMeasuresMetricsSerializer =
    new _$Gget_last_mesuresData_lastMeasures_metricsSerializer();
Serializer<Gget_last_mesuresData_lastMeasures_permissions>
    _$ggetLastMesuresDataLastMeasuresPermissionsSerializer =
    new _$Gget_last_mesuresData_lastMeasures_permissionsSerializer();
Serializer<Gget_last_mesuresData_measuresTiles>
    _$ggetLastMesuresDataMeasuresTilesSerializer =
    new _$Gget_last_mesuresData_measuresTilesSerializer();
Serializer<Gget_last_mesuresData_measuresTiles_tiles>
    _$ggetLastMesuresDataMeasuresTilesTilesSerializer =
    new _$Gget_last_mesuresData_measuresTiles_tilesSerializer();
Serializer<Gget_last_mesuresData_measuresTargets>
    _$ggetLastMesuresDataMeasuresTargetsSerializer =
    new _$Gget_last_mesuresData_measuresTargetsSerializer();
Serializer<Gget_last_mesuresData_measuresTargets_targets>
    _$ggetLastMesuresDataMeasuresTargetsTargetsSerializer =
    new _$Gget_last_mesuresData_measuresTargets_targetsSerializer();

class _$Gget_last_mesuresDataSerializer
    implements StructuredSerializer<Gget_last_mesuresData> {
  @override
  final Iterable<Type> types = const [
    Gget_last_mesuresData,
    _$Gget_last_mesuresData
  ];
  @override
  final String wireName = 'Gget_last_mesuresData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_last_mesuresData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'measuresTiles',
      serializers.serialize(object.measuresTiles,
          specifiedType: const FullType(Gget_last_mesuresData_measuresTiles)),
      'measuresTargets',
      serializers.serialize(object.measuresTargets,
          specifiedType: const FullType(Gget_last_mesuresData_measuresTargets)),
    ];
    Object? value;
    value = object.lastMeasures;
    if (value != null) {
      result
        ..add('lastMeasures')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType(Gget_last_mesuresData_lastMeasures)])));
    }
    return result;
  }

  @override
  Gget_last_mesuresData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_last_mesuresDataBuilder();

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
        case 'lastMeasures':
          result.lastMeasures.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(Gget_last_mesuresData_lastMeasures)
              ]))! as BuiltList<Object?>);
          break;
        case 'measuresTiles':
          result.measuresTiles.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(Gget_last_mesuresData_measuresTiles))!
              as Gget_last_mesuresData_measuresTiles);
          break;
        case 'measuresTargets':
          result.measuresTargets.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(Gget_last_mesuresData_measuresTargets))!
              as Gget_last_mesuresData_measuresTargets);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_last_mesuresData_lastMeasuresSerializer
    implements StructuredSerializer<Gget_last_mesuresData_lastMeasures> {
  @override
  final Iterable<Type> types = const [
    Gget_last_mesuresData_lastMeasures,
    _$Gget_last_mesuresData_lastMeasures
  ];
  @override
  final String wireName = 'Gget_last_mesuresData_lastMeasures';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_last_mesuresData_lastMeasures object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'code',
      serializers.serialize(object.code,
          specifiedType: const FullType(_i3.GMeasureCode)),
      'label',
      serializers.serialize(object.label,
          specifiedType: const FullType(String)),
      'formattedMetricValue',
      serializers.serialize(object.formattedMetricValue,
          specifiedType: const FullType(String)),
      'permissions',
      serializers.serialize(object.permissions,
          specifiedType:
              const FullType(Gget_last_mesuresData_lastMeasures_permissions)),
    ];
    Object? value;
    value = object.effectiveDate;
    if (value != null) {
      result
        ..add('effectiveDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.metrics;
    if (value != null) {
      result
        ..add('metrics')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(Gget_last_mesuresData_lastMeasures_metrics)
            ])));
    }
    return result;
  }

  @override
  Gget_last_mesuresData_lastMeasures deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_last_mesuresData_lastMeasuresBuilder();

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
        case 'code':
          result.code = serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GMeasureCode))!
              as _i3.GMeasureCode;
          break;
        case 'effectiveDate':
          result.effectiveDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'metrics':
          result.metrics.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(Gget_last_mesuresData_lastMeasures_metrics)
              ]))! as BuiltList<Object?>);
          break;
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'formattedMetricValue':
          result.formattedMetricValue = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'permissions':
          result.permissions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_last_mesuresData_lastMeasures_permissions))!
              as Gget_last_mesuresData_lastMeasures_permissions);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_last_mesuresData_lastMeasures_metricsSerializer
    implements
        StructuredSerializer<Gget_last_mesuresData_lastMeasures_metrics> {
  @override
  final Iterable<Type> types = const [
    Gget_last_mesuresData_lastMeasures_metrics,
    _$Gget_last_mesuresData_lastMeasures_metrics
  ];
  @override
  final String wireName = 'Gget_last_mesuresData_lastMeasures_metrics';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_last_mesuresData_lastMeasures_metrics object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'unit',
      serializers.serialize(object.unit, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_last_mesuresData_lastMeasures_metrics deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_last_mesuresData_lastMeasures_metricsBuilder();

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
        case 'unit':
          result.unit = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_last_mesuresData_lastMeasures_permissionsSerializer
    implements
        StructuredSerializer<Gget_last_mesuresData_lastMeasures_permissions> {
  @override
  final Iterable<Type> types = const [
    Gget_last_mesuresData_lastMeasures_permissions,
    _$Gget_last_mesuresData_lastMeasures_permissions
  ];
  @override
  final String wireName = 'Gget_last_mesuresData_lastMeasures_permissions';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_last_mesuresData_lastMeasures_permissions object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'add',
      serializers.serialize(object.add, specifiedType: const FullType(bool)),
      'history',
      serializers.serialize(object.history,
          specifiedType: const FullType(bool)),
      'update',
      serializers.serialize(object.Gupdate,
          specifiedType: const FullType(bool)),
      'delete',
      serializers.serialize(object.delete, specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  Gget_last_mesuresData_lastMeasures_permissions deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_last_mesuresData_lastMeasures_permissionsBuilder();

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
        case 'add':
          result.add = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'history':
          result.history = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'update':
          result.Gupdate = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'delete':
          result.delete = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_last_mesuresData_measuresTilesSerializer
    implements StructuredSerializer<Gget_last_mesuresData_measuresTiles> {
  @override
  final Iterable<Type> types = const [
    Gget_last_mesuresData_measuresTiles,
    _$Gget_last_mesuresData_measuresTiles
  ];
  @override
  final String wireName = 'Gget_last_mesuresData_measuresTiles';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_last_mesuresData_measuresTiles object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'tiles',
      serializers.serialize(object.tiles,
          specifiedType: const FullType(BuiltList, const [
            const FullType(Gget_last_mesuresData_measuresTiles_tiles)
          ])),
    ];

    return result;
  }

  @override
  Gget_last_mesuresData_measuresTiles deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_last_mesuresData_measuresTilesBuilder();

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
                const FullType(Gget_last_mesuresData_measuresTiles_tiles)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_last_mesuresData_measuresTiles_tilesSerializer
    implements StructuredSerializer<Gget_last_mesuresData_measuresTiles_tiles> {
  @override
  final Iterable<Type> types = const [
    Gget_last_mesuresData_measuresTiles_tiles,
    _$Gget_last_mesuresData_measuresTiles_tiles
  ];
  @override
  final String wireName = 'Gget_last_mesuresData_measuresTiles_tiles';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_last_mesuresData_measuresTiles_tiles object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type,
          specifiedType: const FullType(_i3.GMeasureCode)),
      'visible',
      serializers.serialize(object.visible,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  Gget_last_mesuresData_measuresTiles_tiles deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_last_mesuresData_measuresTiles_tilesBuilder();

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
                  specifiedType: const FullType(_i3.GMeasureCode))!
              as _i3.GMeasureCode;
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

class _$Gget_last_mesuresData_measuresTargetsSerializer
    implements StructuredSerializer<Gget_last_mesuresData_measuresTargets> {
  @override
  final Iterable<Type> types = const [
    Gget_last_mesuresData_measuresTargets,
    _$Gget_last_mesuresData_measuresTargets
  ];
  @override
  final String wireName = 'Gget_last_mesuresData_measuresTargets';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_last_mesuresData_measuresTargets object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'targets',
      serializers.serialize(object.targets,
          specifiedType: const FullType(BuiltList, const [
            const FullType(Gget_last_mesuresData_measuresTargets_targets)
          ])),
    ];

    return result;
  }

  @override
  Gget_last_mesuresData_measuresTargets deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_last_mesuresData_measuresTargetsBuilder();

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
                const FullType(Gget_last_mesuresData_measuresTargets_targets)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_last_mesuresData_measuresTargets_targetsSerializer
    implements
        StructuredSerializer<Gget_last_mesuresData_measuresTargets_targets> {
  @override
  final Iterable<Type> types = const [
    Gget_last_mesuresData_measuresTargets_targets,
    _$Gget_last_mesuresData_measuresTargets_targets
  ];
  @override
  final String wireName = 'Gget_last_mesuresData_measuresTargets_targets';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_last_mesuresData_measuresTargets_targets object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type,
          specifiedType: const FullType(_i3.GMeasureCode)),
      'value',
      serializers.serialize(object.value,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  Gget_last_mesuresData_measuresTargets_targets deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_last_mesuresData_measuresTargets_targetsBuilder();

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
                  specifiedType: const FullType(_i3.GMeasureCode))!
              as _i3.GMeasureCode;
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

class _$Gget_last_mesuresData extends Gget_last_mesuresData {
  @override
  final String G__typename;
  @override
  final BuiltList<Gget_last_mesuresData_lastMeasures>? lastMeasures;
  @override
  final Gget_last_mesuresData_measuresTiles measuresTiles;
  @override
  final Gget_last_mesuresData_measuresTargets measuresTargets;

  factory _$Gget_last_mesuresData(
          [void Function(Gget_last_mesuresDataBuilder)? updates]) =>
      (new Gget_last_mesuresDataBuilder()..update(updates))._build();

  _$Gget_last_mesuresData._(
      {required this.G__typename,
      this.lastMeasures,
      required this.measuresTiles,
      required this.measuresTargets})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_last_mesuresData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        measuresTiles, r'Gget_last_mesuresData', 'measuresTiles');
    BuiltValueNullFieldError.checkNotNull(
        measuresTargets, r'Gget_last_mesuresData', 'measuresTargets');
  }

  @override
  Gget_last_mesuresData rebuild(
          void Function(Gget_last_mesuresDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_last_mesuresDataBuilder toBuilder() =>
      new Gget_last_mesuresDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_last_mesuresData &&
        G__typename == other.G__typename &&
        lastMeasures == other.lastMeasures &&
        measuresTiles == other.measuresTiles &&
        measuresTargets == other.measuresTargets;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, lastMeasures.hashCode);
    _$hash = $jc(_$hash, measuresTiles.hashCode);
    _$hash = $jc(_$hash, measuresTargets.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_last_mesuresData')
          ..add('G__typename', G__typename)
          ..add('lastMeasures', lastMeasures)
          ..add('measuresTiles', measuresTiles)
          ..add('measuresTargets', measuresTargets))
        .toString();
  }
}

class Gget_last_mesuresDataBuilder
    implements Builder<Gget_last_mesuresData, Gget_last_mesuresDataBuilder> {
  _$Gget_last_mesuresData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<Gget_last_mesuresData_lastMeasures>? _lastMeasures;
  ListBuilder<Gget_last_mesuresData_lastMeasures> get lastMeasures =>
      _$this._lastMeasures ??=
          new ListBuilder<Gget_last_mesuresData_lastMeasures>();
  set lastMeasures(
          ListBuilder<Gget_last_mesuresData_lastMeasures>? lastMeasures) =>
      _$this._lastMeasures = lastMeasures;

  Gget_last_mesuresData_measuresTilesBuilder? _measuresTiles;
  Gget_last_mesuresData_measuresTilesBuilder get measuresTiles =>
      _$this._measuresTiles ??=
          new Gget_last_mesuresData_measuresTilesBuilder();
  set measuresTiles(
          Gget_last_mesuresData_measuresTilesBuilder? measuresTiles) =>
      _$this._measuresTiles = measuresTiles;

  Gget_last_mesuresData_measuresTargetsBuilder? _measuresTargets;
  Gget_last_mesuresData_measuresTargetsBuilder get measuresTargets =>
      _$this._measuresTargets ??=
          new Gget_last_mesuresData_measuresTargetsBuilder();
  set measuresTargets(
          Gget_last_mesuresData_measuresTargetsBuilder? measuresTargets) =>
      _$this._measuresTargets = measuresTargets;

  Gget_last_mesuresDataBuilder() {
    Gget_last_mesuresData._initializeBuilder(this);
  }

  Gget_last_mesuresDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _lastMeasures = $v.lastMeasures?.toBuilder();
      _measuresTiles = $v.measuresTiles.toBuilder();
      _measuresTargets = $v.measuresTargets.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_last_mesuresData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_last_mesuresData;
  }

  @override
  void update(void Function(Gget_last_mesuresDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_last_mesuresData build() => _build();

  _$Gget_last_mesuresData _build() {
    _$Gget_last_mesuresData _$result;
    try {
      _$result = _$v ??
          new _$Gget_last_mesuresData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gget_last_mesuresData', 'G__typename'),
              lastMeasures: _lastMeasures?.build(),
              measuresTiles: measuresTiles.build(),
              measuresTargets: measuresTargets.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'lastMeasures';
        _lastMeasures?.build();
        _$failedField = 'measuresTiles';
        measuresTiles.build();
        _$failedField = 'measuresTargets';
        measuresTargets.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_last_mesuresData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_last_mesuresData_lastMeasures
    extends Gget_last_mesuresData_lastMeasures {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final _i3.GMeasureCode code;
  @override
  final String? effectiveDate;
  @override
  final BuiltList<Gget_last_mesuresData_lastMeasures_metrics>? metrics;
  @override
  final String label;
  @override
  final String formattedMetricValue;
  @override
  final Gget_last_mesuresData_lastMeasures_permissions permissions;

  factory _$Gget_last_mesuresData_lastMeasures(
          [void Function(Gget_last_mesuresData_lastMeasuresBuilder)?
              updates]) =>
      (new Gget_last_mesuresData_lastMeasuresBuilder()..update(updates))
          ._build();

  _$Gget_last_mesuresData_lastMeasures._(
      {required this.G__typename,
      required this.id,
      required this.code,
      this.effectiveDate,
      this.metrics,
      required this.label,
      required this.formattedMetricValue,
      required this.permissions})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_last_mesuresData_lastMeasures', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'Gget_last_mesuresData_lastMeasures', 'id');
    BuiltValueNullFieldError.checkNotNull(
        code, r'Gget_last_mesuresData_lastMeasures', 'code');
    BuiltValueNullFieldError.checkNotNull(
        label, r'Gget_last_mesuresData_lastMeasures', 'label');
    BuiltValueNullFieldError.checkNotNull(formattedMetricValue,
        r'Gget_last_mesuresData_lastMeasures', 'formattedMetricValue');
    BuiltValueNullFieldError.checkNotNull(
        permissions, r'Gget_last_mesuresData_lastMeasures', 'permissions');
  }

  @override
  Gget_last_mesuresData_lastMeasures rebuild(
          void Function(Gget_last_mesuresData_lastMeasuresBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_last_mesuresData_lastMeasuresBuilder toBuilder() =>
      new Gget_last_mesuresData_lastMeasuresBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_last_mesuresData_lastMeasures &&
        G__typename == other.G__typename &&
        id == other.id &&
        code == other.code &&
        effectiveDate == other.effectiveDate &&
        metrics == other.metrics &&
        label == other.label &&
        formattedMetricValue == other.formattedMetricValue &&
        permissions == other.permissions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, effectiveDate.hashCode);
    _$hash = $jc(_$hash, metrics.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, formattedMetricValue.hashCode);
    _$hash = $jc(_$hash, permissions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_last_mesuresData_lastMeasures')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('code', code)
          ..add('effectiveDate', effectiveDate)
          ..add('metrics', metrics)
          ..add('label', label)
          ..add('formattedMetricValue', formattedMetricValue)
          ..add('permissions', permissions))
        .toString();
  }
}

class Gget_last_mesuresData_lastMeasuresBuilder
    implements
        Builder<Gget_last_mesuresData_lastMeasures,
            Gget_last_mesuresData_lastMeasuresBuilder> {
  _$Gget_last_mesuresData_lastMeasures? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  _i3.GMeasureCode? _code;
  _i3.GMeasureCode? get code => _$this._code;
  set code(_i3.GMeasureCode? code) => _$this._code = code;

  String? _effectiveDate;
  String? get effectiveDate => _$this._effectiveDate;
  set effectiveDate(String? effectiveDate) =>
      _$this._effectiveDate = effectiveDate;

  ListBuilder<Gget_last_mesuresData_lastMeasures_metrics>? _metrics;
  ListBuilder<Gget_last_mesuresData_lastMeasures_metrics> get metrics =>
      _$this._metrics ??=
          new ListBuilder<Gget_last_mesuresData_lastMeasures_metrics>();
  set metrics(
          ListBuilder<Gget_last_mesuresData_lastMeasures_metrics>? metrics) =>
      _$this._metrics = metrics;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  String? _formattedMetricValue;
  String? get formattedMetricValue => _$this._formattedMetricValue;
  set formattedMetricValue(String? formattedMetricValue) =>
      _$this._formattedMetricValue = formattedMetricValue;

  Gget_last_mesuresData_lastMeasures_permissionsBuilder? _permissions;
  Gget_last_mesuresData_lastMeasures_permissionsBuilder get permissions =>
      _$this._permissions ??=
          new Gget_last_mesuresData_lastMeasures_permissionsBuilder();
  set permissions(
          Gget_last_mesuresData_lastMeasures_permissionsBuilder? permissions) =>
      _$this._permissions = permissions;

  Gget_last_mesuresData_lastMeasuresBuilder() {
    Gget_last_mesuresData_lastMeasures._initializeBuilder(this);
  }

  Gget_last_mesuresData_lastMeasuresBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _code = $v.code;
      _effectiveDate = $v.effectiveDate;
      _metrics = $v.metrics?.toBuilder();
      _label = $v.label;
      _formattedMetricValue = $v.formattedMetricValue;
      _permissions = $v.permissions.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_last_mesuresData_lastMeasures other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_last_mesuresData_lastMeasures;
  }

  @override
  void update(
      void Function(Gget_last_mesuresData_lastMeasuresBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_last_mesuresData_lastMeasures build() => _build();

  _$Gget_last_mesuresData_lastMeasures _build() {
    _$Gget_last_mesuresData_lastMeasures _$result;
    try {
      _$result = _$v ??
          new _$Gget_last_mesuresData_lastMeasures._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gget_last_mesuresData_lastMeasures', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'Gget_last_mesuresData_lastMeasures', 'id'),
              code: BuiltValueNullFieldError.checkNotNull(
                  code, r'Gget_last_mesuresData_lastMeasures', 'code'),
              effectiveDate: effectiveDate,
              metrics: _metrics?.build(),
              label: BuiltValueNullFieldError.checkNotNull(
                  label, r'Gget_last_mesuresData_lastMeasures', 'label'),
              formattedMetricValue: BuiltValueNullFieldError.checkNotNull(
                  formattedMetricValue,
                  r'Gget_last_mesuresData_lastMeasures',
                  'formattedMetricValue'),
              permissions: permissions.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'metrics';
        _metrics?.build();

        _$failedField = 'permissions';
        permissions.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_last_mesuresData_lastMeasures', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_last_mesuresData_lastMeasures_metrics
    extends Gget_last_mesuresData_lastMeasures_metrics {
  @override
  final String G__typename;
  @override
  final String unit;

  factory _$Gget_last_mesuresData_lastMeasures_metrics(
          [void Function(Gget_last_mesuresData_lastMeasures_metricsBuilder)?
              updates]) =>
      (new Gget_last_mesuresData_lastMeasures_metricsBuilder()..update(updates))
          ._build();

  _$Gget_last_mesuresData_lastMeasures_metrics._(
      {required this.G__typename, required this.unit})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_last_mesuresData_lastMeasures_metrics', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        unit, r'Gget_last_mesuresData_lastMeasures_metrics', 'unit');
  }

  @override
  Gget_last_mesuresData_lastMeasures_metrics rebuild(
          void Function(Gget_last_mesuresData_lastMeasures_metricsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_last_mesuresData_lastMeasures_metricsBuilder toBuilder() =>
      new Gget_last_mesuresData_lastMeasures_metricsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_last_mesuresData_lastMeasures_metrics &&
        G__typename == other.G__typename &&
        unit == other.unit;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, unit.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_last_mesuresData_lastMeasures_metrics')
          ..add('G__typename', G__typename)
          ..add('unit', unit))
        .toString();
  }
}

class Gget_last_mesuresData_lastMeasures_metricsBuilder
    implements
        Builder<Gget_last_mesuresData_lastMeasures_metrics,
            Gget_last_mesuresData_lastMeasures_metricsBuilder> {
  _$Gget_last_mesuresData_lastMeasures_metrics? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _unit;
  String? get unit => _$this._unit;
  set unit(String? unit) => _$this._unit = unit;

  Gget_last_mesuresData_lastMeasures_metricsBuilder() {
    Gget_last_mesuresData_lastMeasures_metrics._initializeBuilder(this);
  }

  Gget_last_mesuresData_lastMeasures_metricsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _unit = $v.unit;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_last_mesuresData_lastMeasures_metrics other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_last_mesuresData_lastMeasures_metrics;
  }

  @override
  void update(
      void Function(Gget_last_mesuresData_lastMeasures_metricsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_last_mesuresData_lastMeasures_metrics build() => _build();

  _$Gget_last_mesuresData_lastMeasures_metrics _build() {
    final _$result = _$v ??
        new _$Gget_last_mesuresData_lastMeasures_metrics._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gget_last_mesuresData_lastMeasures_metrics', 'G__typename'),
            unit: BuiltValueNullFieldError.checkNotNull(
                unit, r'Gget_last_mesuresData_lastMeasures_metrics', 'unit'));
    replace(_$result);
    return _$result;
  }
}

class _$Gget_last_mesuresData_lastMeasures_permissions
    extends Gget_last_mesuresData_lastMeasures_permissions {
  @override
  final String G__typename;
  @override
  final bool add;
  @override
  final bool history;
  @override
  final bool Gupdate;
  @override
  final bool delete;

  factory _$Gget_last_mesuresData_lastMeasures_permissions(
          [void Function(Gget_last_mesuresData_lastMeasures_permissionsBuilder)?
              updates]) =>
      (new Gget_last_mesuresData_lastMeasures_permissionsBuilder()
            ..update(updates))
          ._build();

  _$Gget_last_mesuresData_lastMeasures_permissions._(
      {required this.G__typename,
      required this.add,
      required this.history,
      required this.Gupdate,
      required this.delete})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_last_mesuresData_lastMeasures_permissions', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        add, r'Gget_last_mesuresData_lastMeasures_permissions', 'add');
    BuiltValueNullFieldError.checkNotNull(
        history, r'Gget_last_mesuresData_lastMeasures_permissions', 'history');
    BuiltValueNullFieldError.checkNotNull(
        Gupdate, r'Gget_last_mesuresData_lastMeasures_permissions', 'Gupdate');
    BuiltValueNullFieldError.checkNotNull(
        delete, r'Gget_last_mesuresData_lastMeasures_permissions', 'delete');
  }

  @override
  Gget_last_mesuresData_lastMeasures_permissions rebuild(
          void Function(Gget_last_mesuresData_lastMeasures_permissionsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_last_mesuresData_lastMeasures_permissionsBuilder toBuilder() =>
      new Gget_last_mesuresData_lastMeasures_permissionsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_last_mesuresData_lastMeasures_permissions &&
        G__typename == other.G__typename &&
        add == other.add &&
        history == other.history &&
        Gupdate == other.Gupdate &&
        delete == other.delete;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, add.hashCode);
    _$hash = $jc(_$hash, history.hashCode);
    _$hash = $jc(_$hash, Gupdate.hashCode);
    _$hash = $jc(_$hash, delete.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_last_mesuresData_lastMeasures_permissions')
          ..add('G__typename', G__typename)
          ..add('add', add)
          ..add('history', history)
          ..add('Gupdate', Gupdate)
          ..add('delete', delete))
        .toString();
  }
}

class Gget_last_mesuresData_lastMeasures_permissionsBuilder
    implements
        Builder<Gget_last_mesuresData_lastMeasures_permissions,
            Gget_last_mesuresData_lastMeasures_permissionsBuilder> {
  _$Gget_last_mesuresData_lastMeasures_permissions? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _add;
  bool? get add => _$this._add;
  set add(bool? add) => _$this._add = add;

  bool? _history;
  bool? get history => _$this._history;
  set history(bool? history) => _$this._history = history;

  bool? _Gupdate;
  bool? get Gupdate => _$this._Gupdate;
  set Gupdate(bool? Gupdate) => _$this._Gupdate = Gupdate;

  bool? _delete;
  bool? get delete => _$this._delete;
  set delete(bool? delete) => _$this._delete = delete;

  Gget_last_mesuresData_lastMeasures_permissionsBuilder() {
    Gget_last_mesuresData_lastMeasures_permissions._initializeBuilder(this);
  }

  Gget_last_mesuresData_lastMeasures_permissionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _add = $v.add;
      _history = $v.history;
      _Gupdate = $v.Gupdate;
      _delete = $v.delete;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_last_mesuresData_lastMeasures_permissions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_last_mesuresData_lastMeasures_permissions;
  }

  @override
  void update(
      void Function(Gget_last_mesuresData_lastMeasures_permissionsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_last_mesuresData_lastMeasures_permissions build() => _build();

  _$Gget_last_mesuresData_lastMeasures_permissions _build() {
    final _$result = _$v ??
        new _$Gget_last_mesuresData_lastMeasures_permissions._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_last_mesuresData_lastMeasures_permissions',
                'G__typename'),
            add: BuiltValueNullFieldError.checkNotNull(
                add, r'Gget_last_mesuresData_lastMeasures_permissions', 'add'),
            history: BuiltValueNullFieldError.checkNotNull(history,
                r'Gget_last_mesuresData_lastMeasures_permissions', 'history'),
            Gupdate: BuiltValueNullFieldError.checkNotNull(Gupdate,
                r'Gget_last_mesuresData_lastMeasures_permissions', 'Gupdate'),
            delete: BuiltValueNullFieldError.checkNotNull(delete,
                r'Gget_last_mesuresData_lastMeasures_permissions', 'delete'));
    replace(_$result);
    return _$result;
  }
}

class _$Gget_last_mesuresData_measuresTiles
    extends Gget_last_mesuresData_measuresTiles {
  @override
  final String G__typename;
  @override
  final BuiltList<Gget_last_mesuresData_measuresTiles_tiles> tiles;

  factory _$Gget_last_mesuresData_measuresTiles(
          [void Function(Gget_last_mesuresData_measuresTilesBuilder)?
              updates]) =>
      (new Gget_last_mesuresData_measuresTilesBuilder()..update(updates))
          ._build();

  _$Gget_last_mesuresData_measuresTiles._(
      {required this.G__typename, required this.tiles})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_last_mesuresData_measuresTiles', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        tiles, r'Gget_last_mesuresData_measuresTiles', 'tiles');
  }

  @override
  Gget_last_mesuresData_measuresTiles rebuild(
          void Function(Gget_last_mesuresData_measuresTilesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_last_mesuresData_measuresTilesBuilder toBuilder() =>
      new Gget_last_mesuresData_measuresTilesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_last_mesuresData_measuresTiles &&
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
    return (newBuiltValueToStringHelper(r'Gget_last_mesuresData_measuresTiles')
          ..add('G__typename', G__typename)
          ..add('tiles', tiles))
        .toString();
  }
}

class Gget_last_mesuresData_measuresTilesBuilder
    implements
        Builder<Gget_last_mesuresData_measuresTiles,
            Gget_last_mesuresData_measuresTilesBuilder> {
  _$Gget_last_mesuresData_measuresTiles? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<Gget_last_mesuresData_measuresTiles_tiles>? _tiles;
  ListBuilder<Gget_last_mesuresData_measuresTiles_tiles> get tiles =>
      _$this._tiles ??=
          new ListBuilder<Gget_last_mesuresData_measuresTiles_tiles>();
  set tiles(ListBuilder<Gget_last_mesuresData_measuresTiles_tiles>? tiles) =>
      _$this._tiles = tiles;

  Gget_last_mesuresData_measuresTilesBuilder() {
    Gget_last_mesuresData_measuresTiles._initializeBuilder(this);
  }

  Gget_last_mesuresData_measuresTilesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _tiles = $v.tiles.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_last_mesuresData_measuresTiles other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_last_mesuresData_measuresTiles;
  }

  @override
  void update(
      void Function(Gget_last_mesuresData_measuresTilesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_last_mesuresData_measuresTiles build() => _build();

  _$Gget_last_mesuresData_measuresTiles _build() {
    _$Gget_last_mesuresData_measuresTiles _$result;
    try {
      _$result = _$v ??
          new _$Gget_last_mesuresData_measuresTiles._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gget_last_mesuresData_measuresTiles', 'G__typename'),
              tiles: tiles.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tiles';
        tiles.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_last_mesuresData_measuresTiles',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_last_mesuresData_measuresTiles_tiles
    extends Gget_last_mesuresData_measuresTiles_tiles {
  @override
  final String G__typename;
  @override
  final _i3.GMeasureCode type;
  @override
  final bool visible;

  factory _$Gget_last_mesuresData_measuresTiles_tiles(
          [void Function(Gget_last_mesuresData_measuresTiles_tilesBuilder)?
              updates]) =>
      (new Gget_last_mesuresData_measuresTiles_tilesBuilder()..update(updates))
          ._build();

  _$Gget_last_mesuresData_measuresTiles_tiles._(
      {required this.G__typename, required this.type, required this.visible})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_last_mesuresData_measuresTiles_tiles', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        type, r'Gget_last_mesuresData_measuresTiles_tiles', 'type');
    BuiltValueNullFieldError.checkNotNull(
        visible, r'Gget_last_mesuresData_measuresTiles_tiles', 'visible');
  }

  @override
  Gget_last_mesuresData_measuresTiles_tiles rebuild(
          void Function(Gget_last_mesuresData_measuresTiles_tilesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_last_mesuresData_measuresTiles_tilesBuilder toBuilder() =>
      new Gget_last_mesuresData_measuresTiles_tilesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_last_mesuresData_measuresTiles_tiles &&
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
    return (newBuiltValueToStringHelper(
            r'Gget_last_mesuresData_measuresTiles_tiles')
          ..add('G__typename', G__typename)
          ..add('type', type)
          ..add('visible', visible))
        .toString();
  }
}

class Gget_last_mesuresData_measuresTiles_tilesBuilder
    implements
        Builder<Gget_last_mesuresData_measuresTiles_tiles,
            Gget_last_mesuresData_measuresTiles_tilesBuilder> {
  _$Gget_last_mesuresData_measuresTiles_tiles? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i3.GMeasureCode? _type;
  _i3.GMeasureCode? get type => _$this._type;
  set type(_i3.GMeasureCode? type) => _$this._type = type;

  bool? _visible;
  bool? get visible => _$this._visible;
  set visible(bool? visible) => _$this._visible = visible;

  Gget_last_mesuresData_measuresTiles_tilesBuilder() {
    Gget_last_mesuresData_measuresTiles_tiles._initializeBuilder(this);
  }

  Gget_last_mesuresData_measuresTiles_tilesBuilder get _$this {
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
  void replace(Gget_last_mesuresData_measuresTiles_tiles other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_last_mesuresData_measuresTiles_tiles;
  }

  @override
  void update(
      void Function(Gget_last_mesuresData_measuresTiles_tilesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_last_mesuresData_measuresTiles_tiles build() => _build();

  _$Gget_last_mesuresData_measuresTiles_tiles _build() {
    final _$result = _$v ??
        new _$Gget_last_mesuresData_measuresTiles_tiles._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gget_last_mesuresData_measuresTiles_tiles', 'G__typename'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'Gget_last_mesuresData_measuresTiles_tiles', 'type'),
            visible: BuiltValueNullFieldError.checkNotNull(visible,
                r'Gget_last_mesuresData_measuresTiles_tiles', 'visible'));
    replace(_$result);
    return _$result;
  }
}

class _$Gget_last_mesuresData_measuresTargets
    extends Gget_last_mesuresData_measuresTargets {
  @override
  final String G__typename;
  @override
  final BuiltList<Gget_last_mesuresData_measuresTargets_targets> targets;

  factory _$Gget_last_mesuresData_measuresTargets(
          [void Function(Gget_last_mesuresData_measuresTargetsBuilder)?
              updates]) =>
      (new Gget_last_mesuresData_measuresTargetsBuilder()..update(updates))
          ._build();

  _$Gget_last_mesuresData_measuresTargets._(
      {required this.G__typename, required this.targets})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_last_mesuresData_measuresTargets', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        targets, r'Gget_last_mesuresData_measuresTargets', 'targets');
  }

  @override
  Gget_last_mesuresData_measuresTargets rebuild(
          void Function(Gget_last_mesuresData_measuresTargetsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_last_mesuresData_measuresTargetsBuilder toBuilder() =>
      new Gget_last_mesuresData_measuresTargetsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_last_mesuresData_measuresTargets &&
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
            r'Gget_last_mesuresData_measuresTargets')
          ..add('G__typename', G__typename)
          ..add('targets', targets))
        .toString();
  }
}

class Gget_last_mesuresData_measuresTargetsBuilder
    implements
        Builder<Gget_last_mesuresData_measuresTargets,
            Gget_last_mesuresData_measuresTargetsBuilder> {
  _$Gget_last_mesuresData_measuresTargets? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<Gget_last_mesuresData_measuresTargets_targets>? _targets;
  ListBuilder<Gget_last_mesuresData_measuresTargets_targets> get targets =>
      _$this._targets ??=
          new ListBuilder<Gget_last_mesuresData_measuresTargets_targets>();
  set targets(
          ListBuilder<Gget_last_mesuresData_measuresTargets_targets>?
              targets) =>
      _$this._targets = targets;

  Gget_last_mesuresData_measuresTargetsBuilder() {
    Gget_last_mesuresData_measuresTargets._initializeBuilder(this);
  }

  Gget_last_mesuresData_measuresTargetsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _targets = $v.targets.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_last_mesuresData_measuresTargets other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_last_mesuresData_measuresTargets;
  }

  @override
  void update(
      void Function(Gget_last_mesuresData_measuresTargetsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_last_mesuresData_measuresTargets build() => _build();

  _$Gget_last_mesuresData_measuresTargets _build() {
    _$Gget_last_mesuresData_measuresTargets _$result;
    try {
      _$result = _$v ??
          new _$Gget_last_mesuresData_measuresTargets._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gget_last_mesuresData_measuresTargets', 'G__typename'),
              targets: targets.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'targets';
        targets.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_last_mesuresData_measuresTargets',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_last_mesuresData_measuresTargets_targets
    extends Gget_last_mesuresData_measuresTargets_targets {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final _i3.GMeasureCode type;
  @override
  final double value;

  factory _$Gget_last_mesuresData_measuresTargets_targets(
          [void Function(Gget_last_mesuresData_measuresTargets_targetsBuilder)?
              updates]) =>
      (new Gget_last_mesuresData_measuresTargets_targetsBuilder()
            ..update(updates))
          ._build();

  _$Gget_last_mesuresData_measuresTargets_targets._(
      {required this.G__typename,
      required this.id,
      required this.type,
      required this.value})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_last_mesuresData_measuresTargets_targets', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'Gget_last_mesuresData_measuresTargets_targets', 'id');
    BuiltValueNullFieldError.checkNotNull(
        type, r'Gget_last_mesuresData_measuresTargets_targets', 'type');
    BuiltValueNullFieldError.checkNotNull(
        value, r'Gget_last_mesuresData_measuresTargets_targets', 'value');
  }

  @override
  Gget_last_mesuresData_measuresTargets_targets rebuild(
          void Function(Gget_last_mesuresData_measuresTargets_targetsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_last_mesuresData_measuresTargets_targetsBuilder toBuilder() =>
      new Gget_last_mesuresData_measuresTargets_targetsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_last_mesuresData_measuresTargets_targets &&
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
            r'Gget_last_mesuresData_measuresTargets_targets')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('type', type)
          ..add('value', value))
        .toString();
  }
}

class Gget_last_mesuresData_measuresTargets_targetsBuilder
    implements
        Builder<Gget_last_mesuresData_measuresTargets_targets,
            Gget_last_mesuresData_measuresTargets_targetsBuilder> {
  _$Gget_last_mesuresData_measuresTargets_targets? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  _i3.GMeasureCode? _type;
  _i3.GMeasureCode? get type => _$this._type;
  set type(_i3.GMeasureCode? type) => _$this._type = type;

  double? _value;
  double? get value => _$this._value;
  set value(double? value) => _$this._value = value;

  Gget_last_mesuresData_measuresTargets_targetsBuilder() {
    Gget_last_mesuresData_measuresTargets_targets._initializeBuilder(this);
  }

  Gget_last_mesuresData_measuresTargets_targetsBuilder get _$this {
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
  void replace(Gget_last_mesuresData_measuresTargets_targets other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_last_mesuresData_measuresTargets_targets;
  }

  @override
  void update(
      void Function(Gget_last_mesuresData_measuresTargets_targetsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_last_mesuresData_measuresTargets_targets build() => _build();

  _$Gget_last_mesuresData_measuresTargets_targets _build() {
    final _$result = _$v ??
        new _$Gget_last_mesuresData_measuresTargets_targets._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_last_mesuresData_measuresTargets_targets',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'Gget_last_mesuresData_measuresTargets_targets', 'id'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'Gget_last_mesuresData_measuresTargets_targets', 'type'),
            value: BuiltValueNullFieldError.checkNotNull(value,
                r'Gget_last_mesuresData_measuresTargets_targets', 'value'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
