// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_mesures_last_mesure.fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GlastMesureData> _$glastMesureDataSerializer =
    new _$GlastMesureDataSerializer();
Serializer<GlastMesureData_metrics> _$glastMesureDataMetricsSerializer =
    new _$GlastMesureData_metricsSerializer();
Serializer<GlastMesureData_permissions> _$glastMesureDataPermissionsSerializer =
    new _$GlastMesureData_permissionsSerializer();

class _$GlastMesureDataSerializer
    implements StructuredSerializer<GlastMesureData> {
  @override
  final Iterable<Type> types = const [GlastMesureData, _$GlastMesureData];
  @override
  final String wireName = 'GlastMesureData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GlastMesureData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'code',
      serializers.serialize(object.code,
          specifiedType: const FullType(_i1.GMeasureCode)),
      'label',
      serializers.serialize(object.label,
          specifiedType: const FullType(String)),
      'formattedMetricValue',
      serializers.serialize(object.formattedMetricValue,
          specifiedType: const FullType(String)),
      'permissions',
      serializers.serialize(object.permissions,
          specifiedType: const FullType(GlastMesureData_permissions)),
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
            specifiedType: const FullType(
                BuiltList, const [const FullType(GlastMesureData_metrics)])));
    }
    return result;
  }

  @override
  GlastMesureData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GlastMesureDataBuilder();

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
                  specifiedType: const FullType(_i1.GMeasureCode))!
              as _i1.GMeasureCode;
          break;
        case 'effectiveDate':
          result.effectiveDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'metrics':
          result.metrics.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GlastMesureData_metrics)
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
                  specifiedType: const FullType(GlastMesureData_permissions))!
              as GlastMesureData_permissions);
          break;
      }
    }

    return result.build();
  }
}

class _$GlastMesureData_metricsSerializer
    implements StructuredSerializer<GlastMesureData_metrics> {
  @override
  final Iterable<Type> types = const [
    GlastMesureData_metrics,
    _$GlastMesureData_metrics
  ];
  @override
  final String wireName = 'GlastMesureData_metrics';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GlastMesureData_metrics object,
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
  GlastMesureData_metrics deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GlastMesureData_metricsBuilder();

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

class _$GlastMesureData_permissionsSerializer
    implements StructuredSerializer<GlastMesureData_permissions> {
  @override
  final Iterable<Type> types = const [
    GlastMesureData_permissions,
    _$GlastMesureData_permissions
  ];
  @override
  final String wireName = 'GlastMesureData_permissions';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GlastMesureData_permissions object,
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
  GlastMesureData_permissions deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GlastMesureData_permissionsBuilder();

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

class _$GlastMesureData extends GlastMesureData {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final _i1.GMeasureCode code;
  @override
  final String? effectiveDate;
  @override
  final BuiltList<GlastMesureData_metrics>? metrics;
  @override
  final String label;
  @override
  final String formattedMetricValue;
  @override
  final GlastMesureData_permissions permissions;

  factory _$GlastMesureData([void Function(GlastMesureDataBuilder)? updates]) =>
      (new GlastMesureDataBuilder()..update(updates))._build();

  _$GlastMesureData._(
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
        G__typename, r'GlastMesureData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GlastMesureData', 'id');
    BuiltValueNullFieldError.checkNotNull(code, r'GlastMesureData', 'code');
    BuiltValueNullFieldError.checkNotNull(label, r'GlastMesureData', 'label');
    BuiltValueNullFieldError.checkNotNull(
        formattedMetricValue, r'GlastMesureData', 'formattedMetricValue');
    BuiltValueNullFieldError.checkNotNull(
        permissions, r'GlastMesureData', 'permissions');
  }

  @override
  GlastMesureData rebuild(void Function(GlastMesureDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GlastMesureDataBuilder toBuilder() =>
      new GlastMesureDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GlastMesureData &&
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
    return (newBuiltValueToStringHelper(r'GlastMesureData')
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

class GlastMesureDataBuilder
    implements Builder<GlastMesureData, GlastMesureDataBuilder> {
  _$GlastMesureData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  _i1.GMeasureCode? _code;
  _i1.GMeasureCode? get code => _$this._code;
  set code(_i1.GMeasureCode? code) => _$this._code = code;

  String? _effectiveDate;
  String? get effectiveDate => _$this._effectiveDate;
  set effectiveDate(String? effectiveDate) =>
      _$this._effectiveDate = effectiveDate;

  ListBuilder<GlastMesureData_metrics>? _metrics;
  ListBuilder<GlastMesureData_metrics> get metrics =>
      _$this._metrics ??= new ListBuilder<GlastMesureData_metrics>();
  set metrics(ListBuilder<GlastMesureData_metrics>? metrics) =>
      _$this._metrics = metrics;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  String? _formattedMetricValue;
  String? get formattedMetricValue => _$this._formattedMetricValue;
  set formattedMetricValue(String? formattedMetricValue) =>
      _$this._formattedMetricValue = formattedMetricValue;

  GlastMesureData_permissionsBuilder? _permissions;
  GlastMesureData_permissionsBuilder get permissions =>
      _$this._permissions ??= new GlastMesureData_permissionsBuilder();
  set permissions(GlastMesureData_permissionsBuilder? permissions) =>
      _$this._permissions = permissions;

  GlastMesureDataBuilder() {
    GlastMesureData._initializeBuilder(this);
  }

  GlastMesureDataBuilder get _$this {
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
  void replace(GlastMesureData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GlastMesureData;
  }

  @override
  void update(void Function(GlastMesureDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GlastMesureData build() => _build();

  _$GlastMesureData _build() {
    _$GlastMesureData _$result;
    try {
      _$result = _$v ??
          new _$GlastMesureData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GlastMesureData', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GlastMesureData', 'id'),
              code: BuiltValueNullFieldError.checkNotNull(
                  code, r'GlastMesureData', 'code'),
              effectiveDate: effectiveDate,
              metrics: _metrics?.build(),
              label: BuiltValueNullFieldError.checkNotNull(
                  label, r'GlastMesureData', 'label'),
              formattedMetricValue: BuiltValueNullFieldError.checkNotNull(
                  formattedMetricValue,
                  r'GlastMesureData',
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
            r'GlastMesureData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GlastMesureData_metrics extends GlastMesureData_metrics {
  @override
  final String G__typename;
  @override
  final String unit;

  factory _$GlastMesureData_metrics(
          [void Function(GlastMesureData_metricsBuilder)? updates]) =>
      (new GlastMesureData_metricsBuilder()..update(updates))._build();

  _$GlastMesureData_metrics._({required this.G__typename, required this.unit})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GlastMesureData_metrics', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        unit, r'GlastMesureData_metrics', 'unit');
  }

  @override
  GlastMesureData_metrics rebuild(
          void Function(GlastMesureData_metricsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GlastMesureData_metricsBuilder toBuilder() =>
      new GlastMesureData_metricsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GlastMesureData_metrics &&
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
    return (newBuiltValueToStringHelper(r'GlastMesureData_metrics')
          ..add('G__typename', G__typename)
          ..add('unit', unit))
        .toString();
  }
}

class GlastMesureData_metricsBuilder
    implements
        Builder<GlastMesureData_metrics, GlastMesureData_metricsBuilder> {
  _$GlastMesureData_metrics? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _unit;
  String? get unit => _$this._unit;
  set unit(String? unit) => _$this._unit = unit;

  GlastMesureData_metricsBuilder() {
    GlastMesureData_metrics._initializeBuilder(this);
  }

  GlastMesureData_metricsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _unit = $v.unit;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GlastMesureData_metrics other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GlastMesureData_metrics;
  }

  @override
  void update(void Function(GlastMesureData_metricsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GlastMesureData_metrics build() => _build();

  _$GlastMesureData_metrics _build() {
    final _$result = _$v ??
        new _$GlastMesureData_metrics._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GlastMesureData_metrics', 'G__typename'),
            unit: BuiltValueNullFieldError.checkNotNull(
                unit, r'GlastMesureData_metrics', 'unit'));
    replace(_$result);
    return _$result;
  }
}

class _$GlastMesureData_permissions extends GlastMesureData_permissions {
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

  factory _$GlastMesureData_permissions(
          [void Function(GlastMesureData_permissionsBuilder)? updates]) =>
      (new GlastMesureData_permissionsBuilder()..update(updates))._build();

  _$GlastMesureData_permissions._(
      {required this.G__typename,
      required this.add,
      required this.history,
      required this.Gupdate,
      required this.delete})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GlastMesureData_permissions', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        add, r'GlastMesureData_permissions', 'add');
    BuiltValueNullFieldError.checkNotNull(
        history, r'GlastMesureData_permissions', 'history');
    BuiltValueNullFieldError.checkNotNull(
        Gupdate, r'GlastMesureData_permissions', 'Gupdate');
    BuiltValueNullFieldError.checkNotNull(
        delete, r'GlastMesureData_permissions', 'delete');
  }

  @override
  GlastMesureData_permissions rebuild(
          void Function(GlastMesureData_permissionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GlastMesureData_permissionsBuilder toBuilder() =>
      new GlastMesureData_permissionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GlastMesureData_permissions &&
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
    return (newBuiltValueToStringHelper(r'GlastMesureData_permissions')
          ..add('G__typename', G__typename)
          ..add('add', add)
          ..add('history', history)
          ..add('Gupdate', Gupdate)
          ..add('delete', delete))
        .toString();
  }
}

class GlastMesureData_permissionsBuilder
    implements
        Builder<GlastMesureData_permissions,
            GlastMesureData_permissionsBuilder> {
  _$GlastMesureData_permissions? _$v;

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

  GlastMesureData_permissionsBuilder() {
    GlastMesureData_permissions._initializeBuilder(this);
  }

  GlastMesureData_permissionsBuilder get _$this {
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
  void replace(GlastMesureData_permissions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GlastMesureData_permissions;
  }

  @override
  void update(void Function(GlastMesureData_permissionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GlastMesureData_permissions build() => _build();

  _$GlastMesureData_permissions _build() {
    final _$result = _$v ??
        new _$GlastMesureData_permissions._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GlastMesureData_permissions', 'G__typename'),
            add: BuiltValueNullFieldError.checkNotNull(
                add, r'GlastMesureData_permissions', 'add'),
            history: BuiltValueNullFieldError.checkNotNull(
                history, r'GlastMesureData_permissions', 'history'),
            Gupdate: BuiltValueNullFieldError.checkNotNull(
                Gupdate, r'GlastMesureData_permissions', 'Gupdate'),
            delete: BuiltValueNullFieldError.checkNotNull(
                delete, r'GlastMesureData_permissions', 'delete'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
