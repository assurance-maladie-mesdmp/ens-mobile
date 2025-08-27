// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_mesures_update_mesure.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gupdate_mesureData> _$gupdateMesureDataSerializer =
    new _$Gupdate_mesureDataSerializer();
Serializer<Gupdate_mesureData_updateMeasure>
    _$gupdateMesureDataUpdateMeasureSerializer =
    new _$Gupdate_mesureData_updateMeasureSerializer();
Serializer<Gupdate_mesureData_updateMeasure_comments>
    _$gupdateMesureDataUpdateMeasureCommentsSerializer =
    new _$Gupdate_mesureData_updateMeasure_commentsSerializer();
Serializer<Gupdate_mesureData_updateMeasure_metrics>
    _$gupdateMesureDataUpdateMeasureMetricsSerializer =
    new _$Gupdate_mesureData_updateMeasure_metricsSerializer();
Serializer<Gupdate_mesureData_updateMeasure_author>
    _$gupdateMesureDataUpdateMeasureAuthorSerializer =
    new _$Gupdate_mesureData_updateMeasure_authorSerializer();
Serializer<Gupdate_mesureData_updateMeasure_permissions>
    _$gupdateMesureDataUpdateMeasurePermissionsSerializer =
    new _$Gupdate_mesureData_updateMeasure_permissionsSerializer();

class _$Gupdate_mesureDataSerializer
    implements StructuredSerializer<Gupdate_mesureData> {
  @override
  final Iterable<Type> types = const [Gupdate_mesureData, _$Gupdate_mesureData];
  @override
  final String wireName = 'Gupdate_mesureData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_mesureData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'updateMeasure',
      serializers.serialize(object.updateMeasure,
          specifiedType: const FullType(Gupdate_mesureData_updateMeasure)),
    ];

    return result;
  }

  @override
  Gupdate_mesureData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_mesureDataBuilder();

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
        case 'updateMeasure':
          result.updateMeasure.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(Gupdate_mesureData_updateMeasure))!
              as Gupdate_mesureData_updateMeasure);
          break;
      }
    }

    return result.build();
  }
}

class _$Gupdate_mesureData_updateMeasureSerializer
    implements StructuredSerializer<Gupdate_mesureData_updateMeasure> {
  @override
  final Iterable<Type> types = const [
    Gupdate_mesureData_updateMeasure,
    _$Gupdate_mesureData_updateMeasure
  ];
  @override
  final String wireName = 'Gupdate_mesureData_updateMeasure';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_mesureData_updateMeasure object,
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
              const FullType(Gupdate_mesureData_updateMeasure_permissions)),
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
            specifiedType: const FullType(BuiltList, const [
              const FullType(Gupdate_mesureData_updateMeasure_comments)
            ])));
    }
    value = object.metrics;
    if (value != null) {
      result
        ..add('metrics')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(Gupdate_mesureData_updateMeasure_metrics)
            ])));
    }
    value = object.author;
    if (value != null) {
      result
        ..add('author')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(Gupdate_mesureData_updateMeasure_author)));
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
  Gupdate_mesureData_updateMeasure deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_mesureData_updateMeasureBuilder();

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
                const FullType(Gupdate_mesureData_updateMeasure_comments)
              ]))! as BuiltList<Object?>);
          break;
        case 'metrics':
          result.metrics.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(Gupdate_mesureData_updateMeasure_metrics)
              ]))! as BuiltList<Object?>);
          break;
        case 'author':
          result.author.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(Gupdate_mesureData_updateMeasure_author))!
              as Gupdate_mesureData_updateMeasure_author);
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
                  specifiedType: const FullType(
                      Gupdate_mesureData_updateMeasure_permissions))!
              as Gupdate_mesureData_updateMeasure_permissions);
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

class _$Gupdate_mesureData_updateMeasure_commentsSerializer
    implements StructuredSerializer<Gupdate_mesureData_updateMeasure_comments> {
  @override
  final Iterable<Type> types = const [
    Gupdate_mesureData_updateMeasure_comments,
    _$Gupdate_mesureData_updateMeasure_comments
  ];
  @override
  final String wireName = 'Gupdate_mesureData_updateMeasure_comments';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_mesureData_updateMeasure_comments object,
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
  Gupdate_mesureData_updateMeasure_comments deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_mesureData_updateMeasure_commentsBuilder();

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

class _$Gupdate_mesureData_updateMeasure_metricsSerializer
    implements StructuredSerializer<Gupdate_mesureData_updateMeasure_metrics> {
  @override
  final Iterable<Type> types = const [
    Gupdate_mesureData_updateMeasure_metrics,
    _$Gupdate_mesureData_updateMeasure_metrics
  ];
  @override
  final String wireName = 'Gupdate_mesureData_updateMeasure_metrics';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_mesureData_updateMeasure_metrics object,
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
  Gupdate_mesureData_updateMeasure_metrics deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_mesureData_updateMeasure_metricsBuilder();

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

class _$Gupdate_mesureData_updateMeasure_authorSerializer
    implements StructuredSerializer<Gupdate_mesureData_updateMeasure_author> {
  @override
  final Iterable<Type> types = const [
    Gupdate_mesureData_updateMeasure_author,
    _$Gupdate_mesureData_updateMeasure_author
  ];
  @override
  final String wireName = 'Gupdate_mesureData_updateMeasure_author';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_mesureData_updateMeasure_author object,
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
  Gupdate_mesureData_updateMeasure_author deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_mesureData_updateMeasure_authorBuilder();

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

class _$Gupdate_mesureData_updateMeasure_permissionsSerializer
    implements
        StructuredSerializer<Gupdate_mesureData_updateMeasure_permissions> {
  @override
  final Iterable<Type> types = const [
    Gupdate_mesureData_updateMeasure_permissions,
    _$Gupdate_mesureData_updateMeasure_permissions
  ];
  @override
  final String wireName = 'Gupdate_mesureData_updateMeasure_permissions';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gupdate_mesureData_updateMeasure_permissions object,
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
  Gupdate_mesureData_updateMeasure_permissions deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_mesureData_updateMeasure_permissionsBuilder();

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

class _$Gupdate_mesureData extends Gupdate_mesureData {
  @override
  final String G__typename;
  @override
  final Gupdate_mesureData_updateMeasure updateMeasure;

  factory _$Gupdate_mesureData(
          [void Function(Gupdate_mesureDataBuilder)? updates]) =>
      (new Gupdate_mesureDataBuilder()..update(updates))._build();

  _$Gupdate_mesureData._(
      {required this.G__typename, required this.updateMeasure})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gupdate_mesureData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        updateMeasure, r'Gupdate_mesureData', 'updateMeasure');
  }

  @override
  Gupdate_mesureData rebuild(
          void Function(Gupdate_mesureDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_mesureDataBuilder toBuilder() =>
      new Gupdate_mesureDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_mesureData &&
        G__typename == other.G__typename &&
        updateMeasure == other.updateMeasure;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, updateMeasure.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gupdate_mesureData')
          ..add('G__typename', G__typename)
          ..add('updateMeasure', updateMeasure))
        .toString();
  }
}

class Gupdate_mesureDataBuilder
    implements Builder<Gupdate_mesureData, Gupdate_mesureDataBuilder> {
  _$Gupdate_mesureData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gupdate_mesureData_updateMeasureBuilder? _updateMeasure;
  Gupdate_mesureData_updateMeasureBuilder get updateMeasure =>
      _$this._updateMeasure ??= new Gupdate_mesureData_updateMeasureBuilder();
  set updateMeasure(Gupdate_mesureData_updateMeasureBuilder? updateMeasure) =>
      _$this._updateMeasure = updateMeasure;

  Gupdate_mesureDataBuilder() {
    Gupdate_mesureData._initializeBuilder(this);
  }

  Gupdate_mesureDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _updateMeasure = $v.updateMeasure.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_mesureData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_mesureData;
  }

  @override
  void update(void Function(Gupdate_mesureDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_mesureData build() => _build();

  _$Gupdate_mesureData _build() {
    _$Gupdate_mesureData _$result;
    try {
      _$result = _$v ??
          new _$Gupdate_mesureData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gupdate_mesureData', 'G__typename'),
              updateMeasure: updateMeasure.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'updateMeasure';
        updateMeasure.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gupdate_mesureData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gupdate_mesureData_updateMeasure
    extends Gupdate_mesureData_updateMeasure {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String? effectiveDate;
  @override
  final BuiltList<Gupdate_mesureData_updateMeasure_comments>? comments;
  @override
  final BuiltList<Gupdate_mesureData_updateMeasure_metrics>? metrics;
  @override
  final Gupdate_mesureData_updateMeasure_author? author;
  @override
  final String formattedMetricValue;
  @override
  final String? idDocument;
  @override
  final String? nameDocument;
  @override
  final Gupdate_mesureData_updateMeasure_permissions permissions;
  @override
  final String? growthMetricsIntervalText;

  factory _$Gupdate_mesureData_updateMeasure(
          [void Function(Gupdate_mesureData_updateMeasureBuilder)? updates]) =>
      (new Gupdate_mesureData_updateMeasureBuilder()..update(updates))._build();

  _$Gupdate_mesureData_updateMeasure._(
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
        G__typename, r'Gupdate_mesureData_updateMeasure', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'Gupdate_mesureData_updateMeasure', 'id');
    BuiltValueNullFieldError.checkNotNull(formattedMetricValue,
        r'Gupdate_mesureData_updateMeasure', 'formattedMetricValue');
    BuiltValueNullFieldError.checkNotNull(
        permissions, r'Gupdate_mesureData_updateMeasure', 'permissions');
  }

  @override
  Gupdate_mesureData_updateMeasure rebuild(
          void Function(Gupdate_mesureData_updateMeasureBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_mesureData_updateMeasureBuilder toBuilder() =>
      new Gupdate_mesureData_updateMeasureBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_mesureData_updateMeasure &&
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
    return (newBuiltValueToStringHelper(r'Gupdate_mesureData_updateMeasure')
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

class Gupdate_mesureData_updateMeasureBuilder
    implements
        Builder<Gupdate_mesureData_updateMeasure,
            Gupdate_mesureData_updateMeasureBuilder> {
  _$Gupdate_mesureData_updateMeasure? _$v;

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

  ListBuilder<Gupdate_mesureData_updateMeasure_comments>? _comments;
  ListBuilder<Gupdate_mesureData_updateMeasure_comments> get comments =>
      _$this._comments ??=
          new ListBuilder<Gupdate_mesureData_updateMeasure_comments>();
  set comments(
          ListBuilder<Gupdate_mesureData_updateMeasure_comments>? comments) =>
      _$this._comments = comments;

  ListBuilder<Gupdate_mesureData_updateMeasure_metrics>? _metrics;
  ListBuilder<Gupdate_mesureData_updateMeasure_metrics> get metrics =>
      _$this._metrics ??=
          new ListBuilder<Gupdate_mesureData_updateMeasure_metrics>();
  set metrics(ListBuilder<Gupdate_mesureData_updateMeasure_metrics>? metrics) =>
      _$this._metrics = metrics;

  Gupdate_mesureData_updateMeasure_authorBuilder? _author;
  Gupdate_mesureData_updateMeasure_authorBuilder get author =>
      _$this._author ??= new Gupdate_mesureData_updateMeasure_authorBuilder();
  set author(Gupdate_mesureData_updateMeasure_authorBuilder? author) =>
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

  Gupdate_mesureData_updateMeasure_permissionsBuilder? _permissions;
  Gupdate_mesureData_updateMeasure_permissionsBuilder get permissions =>
      _$this._permissions ??=
          new Gupdate_mesureData_updateMeasure_permissionsBuilder();
  set permissions(
          Gupdate_mesureData_updateMeasure_permissionsBuilder? permissions) =>
      _$this._permissions = permissions;

  String? _growthMetricsIntervalText;
  String? get growthMetricsIntervalText => _$this._growthMetricsIntervalText;
  set growthMetricsIntervalText(String? growthMetricsIntervalText) =>
      _$this._growthMetricsIntervalText = growthMetricsIntervalText;

  Gupdate_mesureData_updateMeasureBuilder() {
    Gupdate_mesureData_updateMeasure._initializeBuilder(this);
  }

  Gupdate_mesureData_updateMeasureBuilder get _$this {
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
  void replace(Gupdate_mesureData_updateMeasure other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_mesureData_updateMeasure;
  }

  @override
  void update(void Function(Gupdate_mesureData_updateMeasureBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_mesureData_updateMeasure build() => _build();

  _$Gupdate_mesureData_updateMeasure _build() {
    _$Gupdate_mesureData_updateMeasure _$result;
    try {
      _$result = _$v ??
          new _$Gupdate_mesureData_updateMeasure._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gupdate_mesureData_updateMeasure', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'Gupdate_mesureData_updateMeasure', 'id'),
              effectiveDate: effectiveDate,
              comments: _comments?.build(),
              metrics: _metrics?.build(),
              author: _author?.build(),
              formattedMetricValue: BuiltValueNullFieldError.checkNotNull(
                  formattedMetricValue,
                  r'Gupdate_mesureData_updateMeasure',
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
            r'Gupdate_mesureData_updateMeasure', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gupdate_mesureData_updateMeasure_comments
    extends Gupdate_mesureData_updateMeasure_comments {
  @override
  final String G__typename;
  @override
  final String code;
  @override
  final String value;
  @override
  final String? extra;

  factory _$Gupdate_mesureData_updateMeasure_comments(
          [void Function(Gupdate_mesureData_updateMeasure_commentsBuilder)?
              updates]) =>
      (new Gupdate_mesureData_updateMeasure_commentsBuilder()..update(updates))
          ._build();

  _$Gupdate_mesureData_updateMeasure_comments._(
      {required this.G__typename,
      required this.code,
      required this.value,
      this.extra})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gupdate_mesureData_updateMeasure_comments', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        code, r'Gupdate_mesureData_updateMeasure_comments', 'code');
    BuiltValueNullFieldError.checkNotNull(
        value, r'Gupdate_mesureData_updateMeasure_comments', 'value');
  }

  @override
  Gupdate_mesureData_updateMeasure_comments rebuild(
          void Function(Gupdate_mesureData_updateMeasure_commentsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_mesureData_updateMeasure_commentsBuilder toBuilder() =>
      new Gupdate_mesureData_updateMeasure_commentsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_mesureData_updateMeasure_comments &&
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
    return (newBuiltValueToStringHelper(
            r'Gupdate_mesureData_updateMeasure_comments')
          ..add('G__typename', G__typename)
          ..add('code', code)
          ..add('value', value)
          ..add('extra', extra))
        .toString();
  }
}

class Gupdate_mesureData_updateMeasure_commentsBuilder
    implements
        Builder<Gupdate_mesureData_updateMeasure_comments,
            Gupdate_mesureData_updateMeasure_commentsBuilder> {
  _$Gupdate_mesureData_updateMeasure_comments? _$v;

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

  Gupdate_mesureData_updateMeasure_commentsBuilder() {
    Gupdate_mesureData_updateMeasure_comments._initializeBuilder(this);
  }

  Gupdate_mesureData_updateMeasure_commentsBuilder get _$this {
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
  void replace(Gupdate_mesureData_updateMeasure_comments other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_mesureData_updateMeasure_comments;
  }

  @override
  void update(
      void Function(Gupdate_mesureData_updateMeasure_commentsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_mesureData_updateMeasure_comments build() => _build();

  _$Gupdate_mesureData_updateMeasure_comments _build() {
    final _$result = _$v ??
        new _$Gupdate_mesureData_updateMeasure_comments._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gupdate_mesureData_updateMeasure_comments', 'G__typename'),
            code: BuiltValueNullFieldError.checkNotNull(
                code, r'Gupdate_mesureData_updateMeasure_comments', 'code'),
            value: BuiltValueNullFieldError.checkNotNull(
                value, r'Gupdate_mesureData_updateMeasure_comments', 'value'),
            extra: extra);
    replace(_$result);
    return _$result;
  }
}

class _$Gupdate_mesureData_updateMeasure_metrics
    extends Gupdate_mesureData_updateMeasure_metrics {
  @override
  final String G__typename;
  @override
  final _i3.GMeasureCode? code;
  @override
  final double value;
  @override
  final String unit;

  factory _$Gupdate_mesureData_updateMeasure_metrics(
          [void Function(Gupdate_mesureData_updateMeasure_metricsBuilder)?
              updates]) =>
      (new Gupdate_mesureData_updateMeasure_metricsBuilder()..update(updates))
          ._build();

  _$Gupdate_mesureData_updateMeasure_metrics._(
      {required this.G__typename,
      this.code,
      required this.value,
      required this.unit})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gupdate_mesureData_updateMeasure_metrics', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        value, r'Gupdate_mesureData_updateMeasure_metrics', 'value');
    BuiltValueNullFieldError.checkNotNull(
        unit, r'Gupdate_mesureData_updateMeasure_metrics', 'unit');
  }

  @override
  Gupdate_mesureData_updateMeasure_metrics rebuild(
          void Function(Gupdate_mesureData_updateMeasure_metricsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_mesureData_updateMeasure_metricsBuilder toBuilder() =>
      new Gupdate_mesureData_updateMeasure_metricsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_mesureData_updateMeasure_metrics &&
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
    return (newBuiltValueToStringHelper(
            r'Gupdate_mesureData_updateMeasure_metrics')
          ..add('G__typename', G__typename)
          ..add('code', code)
          ..add('value', value)
          ..add('unit', unit))
        .toString();
  }
}

class Gupdate_mesureData_updateMeasure_metricsBuilder
    implements
        Builder<Gupdate_mesureData_updateMeasure_metrics,
            Gupdate_mesureData_updateMeasure_metricsBuilder> {
  _$Gupdate_mesureData_updateMeasure_metrics? _$v;

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

  Gupdate_mesureData_updateMeasure_metricsBuilder() {
    Gupdate_mesureData_updateMeasure_metrics._initializeBuilder(this);
  }

  Gupdate_mesureData_updateMeasure_metricsBuilder get _$this {
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
  void replace(Gupdate_mesureData_updateMeasure_metrics other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_mesureData_updateMeasure_metrics;
  }

  @override
  void update(
      void Function(Gupdate_mesureData_updateMeasure_metricsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_mesureData_updateMeasure_metrics build() => _build();

  _$Gupdate_mesureData_updateMeasure_metrics _build() {
    final _$result = _$v ??
        new _$Gupdate_mesureData_updateMeasure_metrics._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gupdate_mesureData_updateMeasure_metrics', 'G__typename'),
            code: code,
            value: BuiltValueNullFieldError.checkNotNull(
                value, r'Gupdate_mesureData_updateMeasure_metrics', 'value'),
            unit: BuiltValueNullFieldError.checkNotNull(
                unit, r'Gupdate_mesureData_updateMeasure_metrics', 'unit'));
    replace(_$result);
    return _$result;
  }
}

class _$Gupdate_mesureData_updateMeasure_author
    extends Gupdate_mesureData_updateMeasure_author {
  @override
  final String G__typename;
  @override
  final String? firstName;
  @override
  final String? lastName;

  factory _$Gupdate_mesureData_updateMeasure_author(
          [void Function(Gupdate_mesureData_updateMeasure_authorBuilder)?
              updates]) =>
      (new Gupdate_mesureData_updateMeasure_authorBuilder()..update(updates))
          ._build();

  _$Gupdate_mesureData_updateMeasure_author._(
      {required this.G__typename, this.firstName, this.lastName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gupdate_mesureData_updateMeasure_author', 'G__typename');
  }

  @override
  Gupdate_mesureData_updateMeasure_author rebuild(
          void Function(Gupdate_mesureData_updateMeasure_authorBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_mesureData_updateMeasure_authorBuilder toBuilder() =>
      new Gupdate_mesureData_updateMeasure_authorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_mesureData_updateMeasure_author &&
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
    return (newBuiltValueToStringHelper(
            r'Gupdate_mesureData_updateMeasure_author')
          ..add('G__typename', G__typename)
          ..add('firstName', firstName)
          ..add('lastName', lastName))
        .toString();
  }
}

class Gupdate_mesureData_updateMeasure_authorBuilder
    implements
        Builder<Gupdate_mesureData_updateMeasure_author,
            Gupdate_mesureData_updateMeasure_authorBuilder> {
  _$Gupdate_mesureData_updateMeasure_author? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  Gupdate_mesureData_updateMeasure_authorBuilder() {
    Gupdate_mesureData_updateMeasure_author._initializeBuilder(this);
  }

  Gupdate_mesureData_updateMeasure_authorBuilder get _$this {
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
  void replace(Gupdate_mesureData_updateMeasure_author other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_mesureData_updateMeasure_author;
  }

  @override
  void update(
      void Function(Gupdate_mesureData_updateMeasure_authorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_mesureData_updateMeasure_author build() => _build();

  _$Gupdate_mesureData_updateMeasure_author _build() {
    final _$result = _$v ??
        new _$Gupdate_mesureData_updateMeasure_author._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gupdate_mesureData_updateMeasure_author', 'G__typename'),
            firstName: firstName,
            lastName: lastName);
    replace(_$result);
    return _$result;
  }
}

class _$Gupdate_mesureData_updateMeasure_permissions
    extends Gupdate_mesureData_updateMeasure_permissions {
  @override
  final String G__typename;
  @override
  final bool delete;
  @override
  final bool Gupdate;

  factory _$Gupdate_mesureData_updateMeasure_permissions(
          [void Function(Gupdate_mesureData_updateMeasure_permissionsBuilder)?
              updates]) =>
      (new Gupdate_mesureData_updateMeasure_permissionsBuilder()
            ..update(updates))
          ._build();

  _$Gupdate_mesureData_updateMeasure_permissions._(
      {required this.G__typename, required this.delete, required this.Gupdate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gupdate_mesureData_updateMeasure_permissions', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        delete, r'Gupdate_mesureData_updateMeasure_permissions', 'delete');
    BuiltValueNullFieldError.checkNotNull(
        Gupdate, r'Gupdate_mesureData_updateMeasure_permissions', 'Gupdate');
  }

  @override
  Gupdate_mesureData_updateMeasure_permissions rebuild(
          void Function(Gupdate_mesureData_updateMeasure_permissionsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_mesureData_updateMeasure_permissionsBuilder toBuilder() =>
      new Gupdate_mesureData_updateMeasure_permissionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_mesureData_updateMeasure_permissions &&
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
            r'Gupdate_mesureData_updateMeasure_permissions')
          ..add('G__typename', G__typename)
          ..add('delete', delete)
          ..add('Gupdate', Gupdate))
        .toString();
  }
}

class Gupdate_mesureData_updateMeasure_permissionsBuilder
    implements
        Builder<Gupdate_mesureData_updateMeasure_permissions,
            Gupdate_mesureData_updateMeasure_permissionsBuilder> {
  _$Gupdate_mesureData_updateMeasure_permissions? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _delete;
  bool? get delete => _$this._delete;
  set delete(bool? delete) => _$this._delete = delete;

  bool? _Gupdate;
  bool? get Gupdate => _$this._Gupdate;
  set Gupdate(bool? Gupdate) => _$this._Gupdate = Gupdate;

  Gupdate_mesureData_updateMeasure_permissionsBuilder() {
    Gupdate_mesureData_updateMeasure_permissions._initializeBuilder(this);
  }

  Gupdate_mesureData_updateMeasure_permissionsBuilder get _$this {
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
  void replace(Gupdate_mesureData_updateMeasure_permissions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_mesureData_updateMeasure_permissions;
  }

  @override
  void update(
      void Function(Gupdate_mesureData_updateMeasure_permissionsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_mesureData_updateMeasure_permissions build() => _build();

  _$Gupdate_mesureData_updateMeasure_permissions _build() {
    final _$result = _$v ??
        new _$Gupdate_mesureData_updateMeasure_permissions._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gupdate_mesureData_updateMeasure_permissions', 'G__typename'),
            delete: BuiltValueNullFieldError.checkNotNull(delete,
                r'Gupdate_mesureData_updateMeasure_permissions', 'delete'),
            Gupdate: BuiltValueNullFieldError.checkNotNull(Gupdate,
                r'Gupdate_mesureData_updateMeasure_permissions', 'Gupdate'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
