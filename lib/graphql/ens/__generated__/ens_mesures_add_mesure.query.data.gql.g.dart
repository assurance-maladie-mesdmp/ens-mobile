// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_mesures_add_mesure.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gadd_mesureData> _$gaddMesureDataSerializer =
    new _$Gadd_mesureDataSerializer();
Serializer<Gadd_mesureData_addMeasure> _$gaddMesureDataAddMeasureSerializer =
    new _$Gadd_mesureData_addMeasureSerializer();
Serializer<Gadd_mesureData_addMeasure_comments>
    _$gaddMesureDataAddMeasureCommentsSerializer =
    new _$Gadd_mesureData_addMeasure_commentsSerializer();
Serializer<Gadd_mesureData_addMeasure_metrics>
    _$gaddMesureDataAddMeasureMetricsSerializer =
    new _$Gadd_mesureData_addMeasure_metricsSerializer();
Serializer<Gadd_mesureData_addMeasure_author>
    _$gaddMesureDataAddMeasureAuthorSerializer =
    new _$Gadd_mesureData_addMeasure_authorSerializer();
Serializer<Gadd_mesureData_addMeasure_permissions>
    _$gaddMesureDataAddMeasurePermissionsSerializer =
    new _$Gadd_mesureData_addMeasure_permissionsSerializer();

class _$Gadd_mesureDataSerializer
    implements StructuredSerializer<Gadd_mesureData> {
  @override
  final Iterable<Type> types = const [Gadd_mesureData, _$Gadd_mesureData];
  @override
  final String wireName = 'Gadd_mesureData';

  @override
  Iterable<Object?> serialize(Serializers serializers, Gadd_mesureData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'addMeasure',
      serializers.serialize(object.addMeasure,
          specifiedType: const FullType(Gadd_mesureData_addMeasure)),
    ];

    return result;
  }

  @override
  Gadd_mesureData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gadd_mesureDataBuilder();

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
        case 'addMeasure':
          result.addMeasure.replace(serializers.deserialize(value,
                  specifiedType: const FullType(Gadd_mesureData_addMeasure))!
              as Gadd_mesureData_addMeasure);
          break;
      }
    }

    return result.build();
  }
}

class _$Gadd_mesureData_addMeasureSerializer
    implements StructuredSerializer<Gadd_mesureData_addMeasure> {
  @override
  final Iterable<Type> types = const [
    Gadd_mesureData_addMeasure,
    _$Gadd_mesureData_addMeasure
  ];
  @override
  final String wireName = 'Gadd_mesureData_addMeasure';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gadd_mesureData_addMeasure object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'formattedMetricValue',
      serializers.serialize(object.formattedMetricValue,
          specifiedType: const FullType(String)),
      'permissions',
      serializers.serialize(object.permissions,
          specifiedType:
              const FullType(Gadd_mesureData_addMeasure_permissions)),
    ];
    Object? value;
    value = object.effectiveDate;
    if (value != null) {
      result
        ..add('effectiveDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.comments;
    if (value != null) {
      result
        ..add('comments')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType(Gadd_mesureData_addMeasure_comments)])));
    }
    value = object.metrics;
    if (value != null) {
      result
        ..add('metrics')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType(Gadd_mesureData_addMeasure_metrics)])));
    }
    value = object.author;
    if (value != null) {
      result
        ..add('author')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Gadd_mesureData_addMeasure_author)));
    }
    value = object.idDocument;
    if (value != null) {
      result
        ..add('idDocument')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nameDocument;
    if (value != null) {
      result
        ..add('nameDocument')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.growthMetricsIntervalText;
    if (value != null) {
      result
        ..add('growthMetricsIntervalText')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Gadd_mesureData_addMeasure deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gadd_mesureData_addMeasureBuilder();

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
        case 'effectiveDate':
          result.effectiveDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'comments':
          result.comments.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(Gadd_mesureData_addMeasure_comments)
              ]))! as BuiltList<Object?>);
          break;
        case 'metrics':
          result.metrics.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(Gadd_mesureData_addMeasure_metrics)
              ]))! as BuiltList<Object?>);
          break;
        case 'author':
          result.author.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(Gadd_mesureData_addMeasure_author))!
              as Gadd_mesureData_addMeasure_author);
          break;
        case 'formattedMetricValue':
          result.formattedMetricValue = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'idDocument':
          result.idDocument = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nameDocument':
          result.nameDocument = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'permissions':
          result.permissions.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(Gadd_mesureData_addMeasure_permissions))!
              as Gadd_mesureData_addMeasure_permissions);
          break;
        case 'growthMetricsIntervalText':
          result.growthMetricsIntervalText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Gadd_mesureData_addMeasure_commentsSerializer
    implements StructuredSerializer<Gadd_mesureData_addMeasure_comments> {
  @override
  final Iterable<Type> types = const [
    Gadd_mesureData_addMeasure_comments,
    _$Gadd_mesureData_addMeasure_comments
  ];
  @override
  final String wireName = 'Gadd_mesureData_addMeasure_comments';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gadd_mesureData_addMeasure_comments object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(String)),
      'value',
      serializers.serialize(object.value,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.extra;
    if (value != null) {
      result
        ..add('extra')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Gadd_mesureData_addMeasure_comments deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gadd_mesureData_addMeasure_commentsBuilder();

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
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'extra':
          result.extra = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Gadd_mesureData_addMeasure_metricsSerializer
    implements StructuredSerializer<Gadd_mesureData_addMeasure_metrics> {
  @override
  final Iterable<Type> types = const [
    Gadd_mesureData_addMeasure_metrics,
    _$Gadd_mesureData_addMeasure_metrics
  ];
  @override
  final String wireName = 'Gadd_mesureData_addMeasure_metrics';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gadd_mesureData_addMeasure_metrics object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'value',
      serializers.serialize(object.value,
          specifiedType: const FullType(double)),
      'unit',
      serializers.serialize(object.unit, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.code;
    if (value != null) {
      result
        ..add('code')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i3.GMeasureCode)));
    }
    return result;
  }

  @override
  Gadd_mesureData_addMeasure_metrics deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gadd_mesureData_addMeasure_metricsBuilder();

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
        case 'code':
          result.code = serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GMeasureCode))
              as _i3.GMeasureCode?;
          break;
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
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

class _$Gadd_mesureData_addMeasure_authorSerializer
    implements StructuredSerializer<Gadd_mesureData_addMeasure_author> {
  @override
  final Iterable<Type> types = const [
    Gadd_mesureData_addMeasure_author,
    _$Gadd_mesureData_addMeasure_author
  ];
  @override
  final String wireName = 'Gadd_mesureData_addMeasure_author';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gadd_mesureData_addMeasure_author object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.firstName;
    if (value != null) {
      result
        ..add('firstName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastName;
    if (value != null) {
      result
        ..add('lastName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Gadd_mesureData_addMeasure_author deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gadd_mesureData_addMeasure_authorBuilder();

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
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Gadd_mesureData_addMeasure_permissionsSerializer
    implements StructuredSerializer<Gadd_mesureData_addMeasure_permissions> {
  @override
  final Iterable<Type> types = const [
    Gadd_mesureData_addMeasure_permissions,
    _$Gadd_mesureData_addMeasure_permissions
  ];
  @override
  final String wireName = 'Gadd_mesureData_addMeasure_permissions';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gadd_mesureData_addMeasure_permissions object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'delete',
      serializers.serialize(object.delete, specifiedType: const FullType(bool)),
      'update',
      serializers.serialize(object.Gupdate,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  Gadd_mesureData_addMeasure_permissions deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gadd_mesureData_addMeasure_permissionsBuilder();

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
        case 'delete':
          result.delete = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'update':
          result.Gupdate = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Gadd_mesureData extends Gadd_mesureData {
  @override
  final String G__typename;
  @override
  final Gadd_mesureData_addMeasure addMeasure;

  factory _$Gadd_mesureData([void Function(Gadd_mesureDataBuilder)? updates]) =>
      (new Gadd_mesureDataBuilder()..update(updates))._build();

  _$Gadd_mesureData._({required this.G__typename, required this.addMeasure})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gadd_mesureData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        addMeasure, r'Gadd_mesureData', 'addMeasure');
  }

  @override
  Gadd_mesureData rebuild(void Function(Gadd_mesureDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gadd_mesureDataBuilder toBuilder() =>
      new Gadd_mesureDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gadd_mesureData &&
        G__typename == other.G__typename &&
        addMeasure == other.addMeasure;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, addMeasure.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gadd_mesureData')
          ..add('G__typename', G__typename)
          ..add('addMeasure', addMeasure))
        .toString();
  }
}

class Gadd_mesureDataBuilder
    implements Builder<Gadd_mesureData, Gadd_mesureDataBuilder> {
  _$Gadd_mesureData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gadd_mesureData_addMeasureBuilder? _addMeasure;
  Gadd_mesureData_addMeasureBuilder get addMeasure =>
      _$this._addMeasure ??= new Gadd_mesureData_addMeasureBuilder();
  set addMeasure(Gadd_mesureData_addMeasureBuilder? addMeasure) =>
      _$this._addMeasure = addMeasure;

  Gadd_mesureDataBuilder() {
    Gadd_mesureData._initializeBuilder(this);
  }

  Gadd_mesureDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _addMeasure = $v.addMeasure.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gadd_mesureData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gadd_mesureData;
  }

  @override
  void update(void Function(Gadd_mesureDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gadd_mesureData build() => _build();

  _$Gadd_mesureData _build() {
    _$Gadd_mesureData _$result;
    try {
      _$result = _$v ??
          new _$Gadd_mesureData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gadd_mesureData', 'G__typename'),
              addMeasure: addMeasure.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'addMeasure';
        addMeasure.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gadd_mesureData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gadd_mesureData_addMeasure extends Gadd_mesureData_addMeasure {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String? effectiveDate;
  @override
  final BuiltList<Gadd_mesureData_addMeasure_comments>? comments;
  @override
  final BuiltList<Gadd_mesureData_addMeasure_metrics>? metrics;
  @override
  final Gadd_mesureData_addMeasure_author? author;
  @override
  final String formattedMetricValue;
  @override
  final String? idDocument;
  @override
  final String? nameDocument;
  @override
  final Gadd_mesureData_addMeasure_permissions permissions;
  @override
  final String? growthMetricsIntervalText;

  factory _$Gadd_mesureData_addMeasure(
          [void Function(Gadd_mesureData_addMeasureBuilder)? updates]) =>
      (new Gadd_mesureData_addMeasureBuilder()..update(updates))._build();

  _$Gadd_mesureData_addMeasure._(
      {required this.G__typename,
      required this.id,
      this.effectiveDate,
      this.comments,
      this.metrics,
      this.author,
      required this.formattedMetricValue,
      this.idDocument,
      this.nameDocument,
      required this.permissions,
      this.growthMetricsIntervalText})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gadd_mesureData_addMeasure', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'Gadd_mesureData_addMeasure', 'id');
    BuiltValueNullFieldError.checkNotNull(formattedMetricValue,
        r'Gadd_mesureData_addMeasure', 'formattedMetricValue');
    BuiltValueNullFieldError.checkNotNull(
        permissions, r'Gadd_mesureData_addMeasure', 'permissions');
  }

  @override
  Gadd_mesureData_addMeasure rebuild(
          void Function(Gadd_mesureData_addMeasureBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gadd_mesureData_addMeasureBuilder toBuilder() =>
      new Gadd_mesureData_addMeasureBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gadd_mesureData_addMeasure &&
        G__typename == other.G__typename &&
        id == other.id &&
        effectiveDate == other.effectiveDate &&
        comments == other.comments &&
        metrics == other.metrics &&
        author == other.author &&
        formattedMetricValue == other.formattedMetricValue &&
        idDocument == other.idDocument &&
        nameDocument == other.nameDocument &&
        permissions == other.permissions &&
        growthMetricsIntervalText == other.growthMetricsIntervalText;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, effectiveDate.hashCode);
    _$hash = $jc(_$hash, comments.hashCode);
    _$hash = $jc(_$hash, metrics.hashCode);
    _$hash = $jc(_$hash, author.hashCode);
    _$hash = $jc(_$hash, formattedMetricValue.hashCode);
    _$hash = $jc(_$hash, idDocument.hashCode);
    _$hash = $jc(_$hash, nameDocument.hashCode);
    _$hash = $jc(_$hash, permissions.hashCode);
    _$hash = $jc(_$hash, growthMetricsIntervalText.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gadd_mesureData_addMeasure')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('effectiveDate', effectiveDate)
          ..add('comments', comments)
          ..add('metrics', metrics)
          ..add('author', author)
          ..add('formattedMetricValue', formattedMetricValue)
          ..add('idDocument', idDocument)
          ..add('nameDocument', nameDocument)
          ..add('permissions', permissions)
          ..add('growthMetricsIntervalText', growthMetricsIntervalText))
        .toString();
  }
}

class Gadd_mesureData_addMeasureBuilder
    implements
        Builder<Gadd_mesureData_addMeasure, Gadd_mesureData_addMeasureBuilder> {
  _$Gadd_mesureData_addMeasure? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _effectiveDate;
  String? get effectiveDate => _$this._effectiveDate;
  set effectiveDate(String? effectiveDate) =>
      _$this._effectiveDate = effectiveDate;

  ListBuilder<Gadd_mesureData_addMeasure_comments>? _comments;
  ListBuilder<Gadd_mesureData_addMeasure_comments> get comments =>
      _$this._comments ??=
          new ListBuilder<Gadd_mesureData_addMeasure_comments>();
  set comments(ListBuilder<Gadd_mesureData_addMeasure_comments>? comments) =>
      _$this._comments = comments;

  ListBuilder<Gadd_mesureData_addMeasure_metrics>? _metrics;
  ListBuilder<Gadd_mesureData_addMeasure_metrics> get metrics =>
      _$this._metrics ??= new ListBuilder<Gadd_mesureData_addMeasure_metrics>();
  set metrics(ListBuilder<Gadd_mesureData_addMeasure_metrics>? metrics) =>
      _$this._metrics = metrics;

  Gadd_mesureData_addMeasure_authorBuilder? _author;
  Gadd_mesureData_addMeasure_authorBuilder get author =>
      _$this._author ??= new Gadd_mesureData_addMeasure_authorBuilder();
  set author(Gadd_mesureData_addMeasure_authorBuilder? author) =>
      _$this._author = author;

  String? _formattedMetricValue;
  String? get formattedMetricValue => _$this._formattedMetricValue;
  set formattedMetricValue(String? formattedMetricValue) =>
      _$this._formattedMetricValue = formattedMetricValue;

  String? _idDocument;
  String? get idDocument => _$this._idDocument;
  set idDocument(String? idDocument) => _$this._idDocument = idDocument;

  String? _nameDocument;
  String? get nameDocument => _$this._nameDocument;
  set nameDocument(String? nameDocument) => _$this._nameDocument = nameDocument;

  Gadd_mesureData_addMeasure_permissionsBuilder? _permissions;
  Gadd_mesureData_addMeasure_permissionsBuilder get permissions =>
      _$this._permissions ??=
          new Gadd_mesureData_addMeasure_permissionsBuilder();
  set permissions(Gadd_mesureData_addMeasure_permissionsBuilder? permissions) =>
      _$this._permissions = permissions;

  String? _growthMetricsIntervalText;
  String? get growthMetricsIntervalText => _$this._growthMetricsIntervalText;
  set growthMetricsIntervalText(String? growthMetricsIntervalText) =>
      _$this._growthMetricsIntervalText = growthMetricsIntervalText;

  Gadd_mesureData_addMeasureBuilder() {
    Gadd_mesureData_addMeasure._initializeBuilder(this);
  }

  Gadd_mesureData_addMeasureBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _effectiveDate = $v.effectiveDate;
      _comments = $v.comments?.toBuilder();
      _metrics = $v.metrics?.toBuilder();
      _author = $v.author?.toBuilder();
      _formattedMetricValue = $v.formattedMetricValue;
      _idDocument = $v.idDocument;
      _nameDocument = $v.nameDocument;
      _permissions = $v.permissions.toBuilder();
      _growthMetricsIntervalText = $v.growthMetricsIntervalText;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gadd_mesureData_addMeasure other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gadd_mesureData_addMeasure;
  }

  @override
  void update(void Function(Gadd_mesureData_addMeasureBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gadd_mesureData_addMeasure build() => _build();

  _$Gadd_mesureData_addMeasure _build() {
    _$Gadd_mesureData_addMeasure _$result;
    try {
      _$result = _$v ??
          new _$Gadd_mesureData_addMeasure._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gadd_mesureData_addMeasure', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'Gadd_mesureData_addMeasure', 'id'),
              effectiveDate: effectiveDate,
              comments: _comments?.build(),
              metrics: _metrics?.build(),
              author: _author?.build(),
              formattedMetricValue: BuiltValueNullFieldError.checkNotNull(
                  formattedMetricValue,
                  r'Gadd_mesureData_addMeasure',
                  'formattedMetricValue'),
              idDocument: idDocument,
              nameDocument: nameDocument,
              permissions: permissions.build(),
              growthMetricsIntervalText: growthMetricsIntervalText);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'comments';
        _comments?.build();
        _$failedField = 'metrics';
        _metrics?.build();
        _$failedField = 'author';
        _author?.build();

        _$failedField = 'permissions';
        permissions.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gadd_mesureData_addMeasure', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gadd_mesureData_addMeasure_comments
    extends Gadd_mesureData_addMeasure_comments {
  @override
  final String G__typename;
  @override
  final String code;
  @override
  final String value;
  @override
  final String? extra;

  factory _$Gadd_mesureData_addMeasure_comments(
          [void Function(Gadd_mesureData_addMeasure_commentsBuilder)?
              updates]) =>
      (new Gadd_mesureData_addMeasure_commentsBuilder()..update(updates))
          ._build();

  _$Gadd_mesureData_addMeasure_comments._(
      {required this.G__typename,
      required this.code,
      required this.value,
      this.extra})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gadd_mesureData_addMeasure_comments', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        code, r'Gadd_mesureData_addMeasure_comments', 'code');
    BuiltValueNullFieldError.checkNotNull(
        value, r'Gadd_mesureData_addMeasure_comments', 'value');
  }

  @override
  Gadd_mesureData_addMeasure_comments rebuild(
          void Function(Gadd_mesureData_addMeasure_commentsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gadd_mesureData_addMeasure_commentsBuilder toBuilder() =>
      new Gadd_mesureData_addMeasure_commentsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gadd_mesureData_addMeasure_comments &&
        G__typename == other.G__typename &&
        code == other.code &&
        value == other.value &&
        extra == other.extra;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, extra.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gadd_mesureData_addMeasure_comments')
          ..add('G__typename', G__typename)
          ..add('code', code)
          ..add('value', value)
          ..add('extra', extra))
        .toString();
  }
}

class Gadd_mesureData_addMeasure_commentsBuilder
    implements
        Builder<Gadd_mesureData_addMeasure_comments,
            Gadd_mesureData_addMeasure_commentsBuilder> {
  _$Gadd_mesureData_addMeasure_comments? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  String? _extra;
  String? get extra => _$this._extra;
  set extra(String? extra) => _$this._extra = extra;

  Gadd_mesureData_addMeasure_commentsBuilder() {
    Gadd_mesureData_addMeasure_comments._initializeBuilder(this);
  }

  Gadd_mesureData_addMeasure_commentsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _code = $v.code;
      _value = $v.value;
      _extra = $v.extra;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gadd_mesureData_addMeasure_comments other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gadd_mesureData_addMeasure_comments;
  }

  @override
  void update(
      void Function(Gadd_mesureData_addMeasure_commentsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gadd_mesureData_addMeasure_comments build() => _build();

  _$Gadd_mesureData_addMeasure_comments _build() {
    final _$result = _$v ??
        new _$Gadd_mesureData_addMeasure_comments._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gadd_mesureData_addMeasure_comments', 'G__typename'),
            code: BuiltValueNullFieldError.checkNotNull(
                code, r'Gadd_mesureData_addMeasure_comments', 'code'),
            value: BuiltValueNullFieldError.checkNotNull(
                value, r'Gadd_mesureData_addMeasure_comments', 'value'),
            extra: extra);
    replace(_$result);
    return _$result;
  }
}

class _$Gadd_mesureData_addMeasure_metrics
    extends Gadd_mesureData_addMeasure_metrics {
  @override
  final String G__typename;
  @override
  final _i3.GMeasureCode? code;
  @override
  final double value;
  @override
  final String unit;

  factory _$Gadd_mesureData_addMeasure_metrics(
          [void Function(Gadd_mesureData_addMeasure_metricsBuilder)?
              updates]) =>
      (new Gadd_mesureData_addMeasure_metricsBuilder()..update(updates))
          ._build();

  _$Gadd_mesureData_addMeasure_metrics._(
      {required this.G__typename,
      this.code,
      required this.value,
      required this.unit})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gadd_mesureData_addMeasure_metrics', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        value, r'Gadd_mesureData_addMeasure_metrics', 'value');
    BuiltValueNullFieldError.checkNotNull(
        unit, r'Gadd_mesureData_addMeasure_metrics', 'unit');
  }

  @override
  Gadd_mesureData_addMeasure_metrics rebuild(
          void Function(Gadd_mesureData_addMeasure_metricsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gadd_mesureData_addMeasure_metricsBuilder toBuilder() =>
      new Gadd_mesureData_addMeasure_metricsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gadd_mesureData_addMeasure_metrics &&
        G__typename == other.G__typename &&
        code == other.code &&
        value == other.value &&
        unit == other.unit;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, unit.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gadd_mesureData_addMeasure_metrics')
          ..add('G__typename', G__typename)
          ..add('code', code)
          ..add('value', value)
          ..add('unit', unit))
        .toString();
  }
}

class Gadd_mesureData_addMeasure_metricsBuilder
    implements
        Builder<Gadd_mesureData_addMeasure_metrics,
            Gadd_mesureData_addMeasure_metricsBuilder> {
  _$Gadd_mesureData_addMeasure_metrics? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i3.GMeasureCode? _code;
  _i3.GMeasureCode? get code => _$this._code;
  set code(_i3.GMeasureCode? code) => _$this._code = code;

  double? _value;
  double? get value => _$this._value;
  set value(double? value) => _$this._value = value;

  String? _unit;
  String? get unit => _$this._unit;
  set unit(String? unit) => _$this._unit = unit;

  Gadd_mesureData_addMeasure_metricsBuilder() {
    Gadd_mesureData_addMeasure_metrics._initializeBuilder(this);
  }

  Gadd_mesureData_addMeasure_metricsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _code = $v.code;
      _value = $v.value;
      _unit = $v.unit;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gadd_mesureData_addMeasure_metrics other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gadd_mesureData_addMeasure_metrics;
  }

  @override
  void update(
      void Function(Gadd_mesureData_addMeasure_metricsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gadd_mesureData_addMeasure_metrics build() => _build();

  _$Gadd_mesureData_addMeasure_metrics _build() {
    final _$result = _$v ??
        new _$Gadd_mesureData_addMeasure_metrics._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gadd_mesureData_addMeasure_metrics', 'G__typename'),
            code: code,
            value: BuiltValueNullFieldError.checkNotNull(
                value, r'Gadd_mesureData_addMeasure_metrics', 'value'),
            unit: BuiltValueNullFieldError.checkNotNull(
                unit, r'Gadd_mesureData_addMeasure_metrics', 'unit'));
    replace(_$result);
    return _$result;
  }
}

class _$Gadd_mesureData_addMeasure_author
    extends Gadd_mesureData_addMeasure_author {
  @override
  final String G__typename;
  @override
  final String? firstName;
  @override
  final String? lastName;

  factory _$Gadd_mesureData_addMeasure_author(
          [void Function(Gadd_mesureData_addMeasure_authorBuilder)? updates]) =>
      (new Gadd_mesureData_addMeasure_authorBuilder()..update(updates))
          ._build();

  _$Gadd_mesureData_addMeasure_author._(
      {required this.G__typename, this.firstName, this.lastName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gadd_mesureData_addMeasure_author', 'G__typename');
  }

  @override
  Gadd_mesureData_addMeasure_author rebuild(
          void Function(Gadd_mesureData_addMeasure_authorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gadd_mesureData_addMeasure_authorBuilder toBuilder() =>
      new Gadd_mesureData_addMeasure_authorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gadd_mesureData_addMeasure_author &&
        G__typename == other.G__typename &&
        firstName == other.firstName &&
        lastName == other.lastName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gadd_mesureData_addMeasure_author')
          ..add('G__typename', G__typename)
          ..add('firstName', firstName)
          ..add('lastName', lastName))
        .toString();
  }
}

class Gadd_mesureData_addMeasure_authorBuilder
    implements
        Builder<Gadd_mesureData_addMeasure_author,
            Gadd_mesureData_addMeasure_authorBuilder> {
  _$Gadd_mesureData_addMeasure_author? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  Gadd_mesureData_addMeasure_authorBuilder() {
    Gadd_mesureData_addMeasure_author._initializeBuilder(this);
  }

  Gadd_mesureData_addMeasure_authorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gadd_mesureData_addMeasure_author other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gadd_mesureData_addMeasure_author;
  }

  @override
  void update(
      void Function(Gadd_mesureData_addMeasure_authorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gadd_mesureData_addMeasure_author build() => _build();

  _$Gadd_mesureData_addMeasure_author _build() {
    final _$result = _$v ??
        new _$Gadd_mesureData_addMeasure_author._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gadd_mesureData_addMeasure_author', 'G__typename'),
            firstName: firstName,
            lastName: lastName);
    replace(_$result);
    return _$result;
  }
}

class _$Gadd_mesureData_addMeasure_permissions
    extends Gadd_mesureData_addMeasure_permissions {
  @override
  final String G__typename;
  @override
  final bool delete;
  @override
  final bool Gupdate;

  factory _$Gadd_mesureData_addMeasure_permissions(
          [void Function(Gadd_mesureData_addMeasure_permissionsBuilder)?
              updates]) =>
      (new Gadd_mesureData_addMeasure_permissionsBuilder()..update(updates))
          ._build();

  _$Gadd_mesureData_addMeasure_permissions._(
      {required this.G__typename, required this.delete, required this.Gupdate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gadd_mesureData_addMeasure_permissions', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        delete, r'Gadd_mesureData_addMeasure_permissions', 'delete');
    BuiltValueNullFieldError.checkNotNull(
        Gupdate, r'Gadd_mesureData_addMeasure_permissions', 'Gupdate');
  }

  @override
  Gadd_mesureData_addMeasure_permissions rebuild(
          void Function(Gadd_mesureData_addMeasure_permissionsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gadd_mesureData_addMeasure_permissionsBuilder toBuilder() =>
      new Gadd_mesureData_addMeasure_permissionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gadd_mesureData_addMeasure_permissions &&
        G__typename == other.G__typename &&
        delete == other.delete &&
        Gupdate == other.Gupdate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, delete.hashCode);
    _$hash = $jc(_$hash, Gupdate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gadd_mesureData_addMeasure_permissions')
          ..add('G__typename', G__typename)
          ..add('delete', delete)
          ..add('Gupdate', Gupdate))
        .toString();
  }
}

class Gadd_mesureData_addMeasure_permissionsBuilder
    implements
        Builder<Gadd_mesureData_addMeasure_permissions,
            Gadd_mesureData_addMeasure_permissionsBuilder> {
  _$Gadd_mesureData_addMeasure_permissions? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _delete;
  bool? get delete => _$this._delete;
  set delete(bool? delete) => _$this._delete = delete;

  bool? _Gupdate;
  bool? get Gupdate => _$this._Gupdate;
  set Gupdate(bool? Gupdate) => _$this._Gupdate = Gupdate;

  Gadd_mesureData_addMeasure_permissionsBuilder() {
    Gadd_mesureData_addMeasure_permissions._initializeBuilder(this);
  }

  Gadd_mesureData_addMeasure_permissionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _delete = $v.delete;
      _Gupdate = $v.Gupdate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gadd_mesureData_addMeasure_permissions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gadd_mesureData_addMeasure_permissions;
  }

  @override
  void update(
      void Function(Gadd_mesureData_addMeasure_permissionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gadd_mesureData_addMeasure_permissions build() => _build();

  _$Gadd_mesureData_addMeasure_permissions _build() {
    final _$result = _$v ??
        new _$Gadd_mesureData_addMeasure_permissions._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gadd_mesureData_addMeasure_permissions', 'G__typename'),
            delete: BuiltValueNullFieldError.checkNotNull(
                delete, r'Gadd_mesureData_addMeasure_permissions', 'delete'),
            Gupdate: BuiltValueNullFieldError.checkNotNull(
                Gupdate, r'Gadd_mesureData_addMeasure_permissions', 'Gupdate'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
