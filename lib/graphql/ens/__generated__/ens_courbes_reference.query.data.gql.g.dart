// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_courbes_reference.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_courbes_referenceData> _$ggetCourbesReferenceDataSerializer =
    new _$Gget_courbes_referenceDataSerializer();
Serializer<Gget_courbes_referenceData_measureGrowthMetrics>
    _$ggetCourbesReferenceDataMeasureGrowthMetricsSerializer =
    new _$Gget_courbes_referenceData_measureGrowthMetricsSerializer();
Serializer<Gget_courbes_referenceData_measureGrowthMetrics_categories>
    _$ggetCourbesReferenceDataMeasureGrowthMetricsCategoriesSerializer =
    new _$Gget_courbes_referenceData_measureGrowthMetrics_categoriesSerializer();
Serializer<Gget_courbes_referenceData_measureGrowthMetrics_categories_data>
    _$ggetCourbesReferenceDataMeasureGrowthMetricsCategoriesDataSerializer =
    new _$Gget_courbes_referenceData_measureGrowthMetrics_categories_dataSerializer();

class _$Gget_courbes_referenceDataSerializer
    implements StructuredSerializer<Gget_courbes_referenceData> {
  @override
  final Iterable<Type> types = const [
    Gget_courbes_referenceData,
    _$Gget_courbes_referenceData
  ];
  @override
  final String wireName = 'Gget_courbes_referenceData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_courbes_referenceData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'measureGrowthMetrics',
      serializers.serialize(object.measureGrowthMetrics,
          specifiedType:
              const FullType(Gget_courbes_referenceData_measureGrowthMetrics)),
    ];

    return result;
  }

  @override
  Gget_courbes_referenceData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_courbes_referenceDataBuilder();

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
        case 'measureGrowthMetrics':
          result.measureGrowthMetrics.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_courbes_referenceData_measureGrowthMetrics))!
              as Gget_courbes_referenceData_measureGrowthMetrics);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_courbes_referenceData_measureGrowthMetricsSerializer
    implements
        StructuredSerializer<Gget_courbes_referenceData_measureGrowthMetrics> {
  @override
  final Iterable<Type> types = const [
    Gget_courbes_referenceData_measureGrowthMetrics,
    _$Gget_courbes_referenceData_measureGrowthMetrics
  ];
  @override
  final String wireName = 'Gget_courbes_referenceData_measureGrowthMetrics';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_courbes_referenceData_measureGrowthMetrics object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'categories',
      serializers.serialize(object.categories,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                Gget_courbes_referenceData_measureGrowthMetrics_categories)
          ])),
    ];

    return result;
  }

  @override
  Gget_courbes_referenceData_measureGrowthMetrics deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_courbes_referenceData_measureGrowthMetricsBuilder();

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
        case 'categories':
          result.categories.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_courbes_referenceData_measureGrowthMetrics_categories)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_courbes_referenceData_measureGrowthMetrics_categoriesSerializer
    implements
        StructuredSerializer<
            Gget_courbes_referenceData_measureGrowthMetrics_categories> {
  @override
  final Iterable<Type> types = const [
    Gget_courbes_referenceData_measureGrowthMetrics_categories,
    _$Gget_courbes_referenceData_measureGrowthMetrics_categories
  ];
  @override
  final String wireName =
      'Gget_courbes_referenceData_measureGrowthMetrics_categories';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_courbes_referenceData_measureGrowthMetrics_categories object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name,
          specifiedType: const FullType(_i2.GMeasureCategory)),
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                Gget_courbes_referenceData_measureGrowthMetrics_categories_data)
          ])),
    ];

    return result;
  }

  @override
  Gget_courbes_referenceData_measureGrowthMetrics_categories deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_courbes_referenceData_measureGrowthMetrics_categoriesBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GMeasureCategory))!
              as _i2.GMeasureCategory;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_courbes_referenceData_measureGrowthMetrics_categories_data)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_courbes_referenceData_measureGrowthMetrics_categories_dataSerializer
    implements
        StructuredSerializer<
            Gget_courbes_referenceData_measureGrowthMetrics_categories_data> {
  @override
  final Iterable<Type> types = const [
    Gget_courbes_referenceData_measureGrowthMetrics_categories_data,
    _$Gget_courbes_referenceData_measureGrowthMetrics_categories_data
  ];
  @override
  final String wireName =
      'Gget_courbes_referenceData_measureGrowthMetrics_categories_data';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_courbes_referenceData_measureGrowthMetrics_categories_data object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
      'measure',
      serializers.serialize(object.measure,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  Gget_courbes_referenceData_measureGrowthMetrics_categories_data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_courbes_referenceData_measureGrowthMetrics_categories_dataBuilder();

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
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'measure':
          result.measure = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_courbes_referenceData extends Gget_courbes_referenceData {
  @override
  final String G__typename;
  @override
  final Gget_courbes_referenceData_measureGrowthMetrics measureGrowthMetrics;

  factory _$Gget_courbes_referenceData(
          [void Function(Gget_courbes_referenceDataBuilder)? updates]) =>
      (new Gget_courbes_referenceDataBuilder()..update(updates))._build();

  _$Gget_courbes_referenceData._(
      {required this.G__typename, required this.measureGrowthMetrics})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_courbes_referenceData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(measureGrowthMetrics,
        r'Gget_courbes_referenceData', 'measureGrowthMetrics');
  }

  @override
  Gget_courbes_referenceData rebuild(
          void Function(Gget_courbes_referenceDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_courbes_referenceDataBuilder toBuilder() =>
      new Gget_courbes_referenceDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_courbes_referenceData &&
        G__typename == other.G__typename &&
        measureGrowthMetrics == other.measureGrowthMetrics;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, measureGrowthMetrics.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_courbes_referenceData')
          ..add('G__typename', G__typename)
          ..add('measureGrowthMetrics', measureGrowthMetrics))
        .toString();
  }
}

class Gget_courbes_referenceDataBuilder
    implements
        Builder<Gget_courbes_referenceData, Gget_courbes_referenceDataBuilder> {
  _$Gget_courbes_referenceData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_courbes_referenceData_measureGrowthMetricsBuilder? _measureGrowthMetrics;
  Gget_courbes_referenceData_measureGrowthMetricsBuilder
      get measureGrowthMetrics => _$this._measureGrowthMetrics ??=
          new Gget_courbes_referenceData_measureGrowthMetricsBuilder();
  set measureGrowthMetrics(
          Gget_courbes_referenceData_measureGrowthMetricsBuilder?
              measureGrowthMetrics) =>
      _$this._measureGrowthMetrics = measureGrowthMetrics;

  Gget_courbes_referenceDataBuilder() {
    Gget_courbes_referenceData._initializeBuilder(this);
  }

  Gget_courbes_referenceDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _measureGrowthMetrics = $v.measureGrowthMetrics.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_courbes_referenceData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_courbes_referenceData;
  }

  @override
  void update(void Function(Gget_courbes_referenceDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_courbes_referenceData build() => _build();

  _$Gget_courbes_referenceData _build() {
    _$Gget_courbes_referenceData _$result;
    try {
      _$result = _$v ??
          new _$Gget_courbes_referenceData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gget_courbes_referenceData', 'G__typename'),
              measureGrowthMetrics: measureGrowthMetrics.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'measureGrowthMetrics';
        measureGrowthMetrics.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_courbes_referenceData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_courbes_referenceData_measureGrowthMetrics
    extends Gget_courbes_referenceData_measureGrowthMetrics {
  @override
  final String G__typename;
  @override
  final BuiltList<Gget_courbes_referenceData_measureGrowthMetrics_categories>
      categories;

  factory _$Gget_courbes_referenceData_measureGrowthMetrics(
          [void Function(
                  Gget_courbes_referenceData_measureGrowthMetricsBuilder)?
              updates]) =>
      (new Gget_courbes_referenceData_measureGrowthMetricsBuilder()
            ..update(updates))
          ._build();

  _$Gget_courbes_referenceData_measureGrowthMetrics._(
      {required this.G__typename, required this.categories})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_courbes_referenceData_measureGrowthMetrics', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(categories,
        r'Gget_courbes_referenceData_measureGrowthMetrics', 'categories');
  }

  @override
  Gget_courbes_referenceData_measureGrowthMetrics rebuild(
          void Function(Gget_courbes_referenceData_measureGrowthMetricsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_courbes_referenceData_measureGrowthMetricsBuilder toBuilder() =>
      new Gget_courbes_referenceData_measureGrowthMetricsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_courbes_referenceData_measureGrowthMetrics &&
        G__typename == other.G__typename &&
        categories == other.categories;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, categories.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_courbes_referenceData_measureGrowthMetrics')
          ..add('G__typename', G__typename)
          ..add('categories', categories))
        .toString();
  }
}

class Gget_courbes_referenceData_measureGrowthMetricsBuilder
    implements
        Builder<Gget_courbes_referenceData_measureGrowthMetrics,
            Gget_courbes_referenceData_measureGrowthMetricsBuilder> {
  _$Gget_courbes_referenceData_measureGrowthMetrics? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<Gget_courbes_referenceData_measureGrowthMetrics_categories>?
      _categories;
  ListBuilder<Gget_courbes_referenceData_measureGrowthMetrics_categories>
      get categories => _$this._categories ??= new ListBuilder<
          Gget_courbes_referenceData_measureGrowthMetrics_categories>();
  set categories(
          ListBuilder<
                  Gget_courbes_referenceData_measureGrowthMetrics_categories>?
              categories) =>
      _$this._categories = categories;

  Gget_courbes_referenceData_measureGrowthMetricsBuilder() {
    Gget_courbes_referenceData_measureGrowthMetrics._initializeBuilder(this);
  }

  Gget_courbes_referenceData_measureGrowthMetricsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _categories = $v.categories.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_courbes_referenceData_measureGrowthMetrics other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_courbes_referenceData_measureGrowthMetrics;
  }

  @override
  void update(
      void Function(Gget_courbes_referenceData_measureGrowthMetricsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_courbes_referenceData_measureGrowthMetrics build() => _build();

  _$Gget_courbes_referenceData_measureGrowthMetrics _build() {
    _$Gget_courbes_referenceData_measureGrowthMetrics _$result;
    try {
      _$result = _$v ??
          new _$Gget_courbes_referenceData_measureGrowthMetrics._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_courbes_referenceData_measureGrowthMetrics',
                  'G__typename'),
              categories: categories.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'categories';
        categories.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_courbes_referenceData_measureGrowthMetrics',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_courbes_referenceData_measureGrowthMetrics_categories
    extends Gget_courbes_referenceData_measureGrowthMetrics_categories {
  @override
  final String G__typename;
  @override
  final _i2.GMeasureCategory name;
  @override
  final BuiltList<
      Gget_courbes_referenceData_measureGrowthMetrics_categories_data> data;

  factory _$Gget_courbes_referenceData_measureGrowthMetrics_categories(
          [void Function(
                  Gget_courbes_referenceData_measureGrowthMetrics_categoriesBuilder)?
              updates]) =>
      (new Gget_courbes_referenceData_measureGrowthMetrics_categoriesBuilder()
            ..update(updates))
          ._build();

  _$Gget_courbes_referenceData_measureGrowthMetrics_categories._(
      {required this.G__typename, required this.name, required this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_courbes_referenceData_measureGrowthMetrics_categories',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(name,
        r'Gget_courbes_referenceData_measureGrowthMetrics_categories', 'name');
    BuiltValueNullFieldError.checkNotNull(data,
        r'Gget_courbes_referenceData_measureGrowthMetrics_categories', 'data');
  }

  @override
  Gget_courbes_referenceData_measureGrowthMetrics_categories rebuild(
          void Function(
                  Gget_courbes_referenceData_measureGrowthMetrics_categoriesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_courbes_referenceData_measureGrowthMetrics_categoriesBuilder
      toBuilder() =>
          new Gget_courbes_referenceData_measureGrowthMetrics_categoriesBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_courbes_referenceData_measureGrowthMetrics_categories &&
        G__typename == other.G__typename &&
        name == other.name &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_courbes_referenceData_measureGrowthMetrics_categories')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('data', data))
        .toString();
  }
}

class Gget_courbes_referenceData_measureGrowthMetrics_categoriesBuilder
    implements
        Builder<Gget_courbes_referenceData_measureGrowthMetrics_categories,
            Gget_courbes_referenceData_measureGrowthMetrics_categoriesBuilder> {
  _$Gget_courbes_referenceData_measureGrowthMetrics_categories? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i2.GMeasureCategory? _name;
  _i2.GMeasureCategory? get name => _$this._name;
  set name(_i2.GMeasureCategory? name) => _$this._name = name;

  ListBuilder<Gget_courbes_referenceData_measureGrowthMetrics_categories_data>?
      _data;
  ListBuilder<Gget_courbes_referenceData_measureGrowthMetrics_categories_data>
      get data => _$this._data ??= new ListBuilder<
          Gget_courbes_referenceData_measureGrowthMetrics_categories_data>();
  set data(
          ListBuilder<
                  Gget_courbes_referenceData_measureGrowthMetrics_categories_data>?
              data) =>
      _$this._data = data;

  Gget_courbes_referenceData_measureGrowthMetrics_categoriesBuilder() {
    Gget_courbes_referenceData_measureGrowthMetrics_categories
        ._initializeBuilder(this);
  }

  Gget_courbes_referenceData_measureGrowthMetrics_categoriesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_courbes_referenceData_measureGrowthMetrics_categories other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_courbes_referenceData_measureGrowthMetrics_categories;
  }

  @override
  void update(
      void Function(
              Gget_courbes_referenceData_measureGrowthMetrics_categoriesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_courbes_referenceData_measureGrowthMetrics_categories build() =>
      _build();

  _$Gget_courbes_referenceData_measureGrowthMetrics_categories _build() {
    _$Gget_courbes_referenceData_measureGrowthMetrics_categories _$result;
    try {
      _$result = _$v ??
          new _$Gget_courbes_referenceData_measureGrowthMetrics_categories._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_courbes_referenceData_measureGrowthMetrics_categories',
                  'G__typename'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name,
                  r'Gget_courbes_referenceData_measureGrowthMetrics_categories',
                  'name'),
              data: data.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_courbes_referenceData_measureGrowthMetrics_categories',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_courbes_referenceData_measureGrowthMetrics_categories_data
    extends Gget_courbes_referenceData_measureGrowthMetrics_categories_data {
  @override
  final String G__typename;
  @override
  final String date;
  @override
  final double measure;

  factory _$Gget_courbes_referenceData_measureGrowthMetrics_categories_data(
          [void Function(
                  Gget_courbes_referenceData_measureGrowthMetrics_categories_dataBuilder)?
              updates]) =>
      (new Gget_courbes_referenceData_measureGrowthMetrics_categories_dataBuilder()
            ..update(updates))
          ._build();

  _$Gget_courbes_referenceData_measureGrowthMetrics_categories_data._(
      {required this.G__typename, required this.date, required this.measure})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_courbes_referenceData_measureGrowthMetrics_categories_data',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        date,
        r'Gget_courbes_referenceData_measureGrowthMetrics_categories_data',
        'date');
    BuiltValueNullFieldError.checkNotNull(
        measure,
        r'Gget_courbes_referenceData_measureGrowthMetrics_categories_data',
        'measure');
  }

  @override
  Gget_courbes_referenceData_measureGrowthMetrics_categories_data rebuild(
          void Function(
                  Gget_courbes_referenceData_measureGrowthMetrics_categories_dataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_courbes_referenceData_measureGrowthMetrics_categories_dataBuilder
      toBuilder() =>
          new Gget_courbes_referenceData_measureGrowthMetrics_categories_dataBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_courbes_referenceData_measureGrowthMetrics_categories_data &&
        G__typename == other.G__typename &&
        date == other.date &&
        measure == other.measure;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, measure.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_courbes_referenceData_measureGrowthMetrics_categories_data')
          ..add('G__typename', G__typename)
          ..add('date', date)
          ..add('measure', measure))
        .toString();
  }
}

class Gget_courbes_referenceData_measureGrowthMetrics_categories_dataBuilder
    implements
        Builder<Gget_courbes_referenceData_measureGrowthMetrics_categories_data,
            Gget_courbes_referenceData_measureGrowthMetrics_categories_dataBuilder> {
  _$Gget_courbes_referenceData_measureGrowthMetrics_categories_data? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  double? _measure;
  double? get measure => _$this._measure;
  set measure(double? measure) => _$this._measure = measure;

  Gget_courbes_referenceData_measureGrowthMetrics_categories_dataBuilder() {
    Gget_courbes_referenceData_measureGrowthMetrics_categories_data
        ._initializeBuilder(this);
  }

  Gget_courbes_referenceData_measureGrowthMetrics_categories_dataBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _date = $v.date;
      _measure = $v.measure;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_courbes_referenceData_measureGrowthMetrics_categories_data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_courbes_referenceData_measureGrowthMetrics_categories_data;
  }

  @override
  void update(
      void Function(
              Gget_courbes_referenceData_measureGrowthMetrics_categories_dataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_courbes_referenceData_measureGrowthMetrics_categories_data build() =>
      _build();

  _$Gget_courbes_referenceData_measureGrowthMetrics_categories_data _build() {
    final _$result = _$v ??
        new _$Gget_courbes_referenceData_measureGrowthMetrics_categories_data._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_courbes_referenceData_measureGrowthMetrics_categories_data',
                'G__typename'),
            date: BuiltValueNullFieldError.checkNotNull(
                date,
                r'Gget_courbes_referenceData_measureGrowthMetrics_categories_data',
                'date'),
            measure: BuiltValueNullFieldError.checkNotNull(
                measure,
                r'Gget_courbes_referenceData_measureGrowthMetrics_categories_data',
                'measure'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
