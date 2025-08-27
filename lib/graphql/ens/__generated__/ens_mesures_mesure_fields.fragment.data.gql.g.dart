// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_mesures_mesure_fields.fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GmesureFieldsData> _$gmesureFieldsDataSerializer =
    new _$GmesureFieldsDataSerializer();
Serializer<GmesureFieldsData_comments> _$gmesureFieldsDataCommentsSerializer =
    new _$GmesureFieldsData_commentsSerializer();
Serializer<GmesureFieldsData_metrics> _$gmesureFieldsDataMetricsSerializer =
    new _$GmesureFieldsData_metricsSerializer();
Serializer<GmesureFieldsData_author> _$gmesureFieldsDataAuthorSerializer =
    new _$GmesureFieldsData_authorSerializer();
Serializer<GmesureFieldsData_permissions>
    _$gmesureFieldsDataPermissionsSerializer =
    new _$GmesureFieldsData_permissionsSerializer();

class _$GmesureFieldsDataSerializer
    implements StructuredSerializer<GmesureFieldsData> {
  @override
  final Iterable<Type> types = const [GmesureFieldsData, _$GmesureFieldsData];
  @override
  final String wireName = 'GmesureFieldsData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GmesureFieldsData object,
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
          specifiedType: const FullType(GmesureFieldsData_permissions)),
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
                const [const FullType(GmesureFieldsData_comments)])));
    }
    value = object.metrics;
    if (value != null) {
      result
        ..add('metrics')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(GmesureFieldsData_metrics)])));
    }
    value = object.author;
    if (value != null) {
      result
        ..add('author')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GmesureFieldsData_author)));
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
  GmesureFieldsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GmesureFieldsDataBuilder();

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
                const FullType(GmesureFieldsData_comments)
              ]))! as BuiltList<Object?>);
          break;
        case 'metrics':
          result.metrics.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GmesureFieldsData_metrics)
              ]))! as BuiltList<Object?>);
          break;
        case 'author':
          result.author.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GmesureFieldsData_author))!
              as GmesureFieldsData_author);
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
                  specifiedType: const FullType(GmesureFieldsData_permissions))!
              as GmesureFieldsData_permissions);
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

class _$GmesureFieldsData_commentsSerializer
    implements StructuredSerializer<GmesureFieldsData_comments> {
  @override
  final Iterable<Type> types = const [
    GmesureFieldsData_comments,
    _$GmesureFieldsData_comments
  ];
  @override
  final String wireName = 'GmesureFieldsData_comments';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GmesureFieldsData_comments object,
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
  GmesureFieldsData_comments deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GmesureFieldsData_commentsBuilder();

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

class _$GmesureFieldsData_metricsSerializer
    implements StructuredSerializer<GmesureFieldsData_metrics> {
  @override
  final Iterable<Type> types = const [
    GmesureFieldsData_metrics,
    _$GmesureFieldsData_metrics
  ];
  @override
  final String wireName = 'GmesureFieldsData_metrics';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GmesureFieldsData_metrics object,
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
            specifiedType: const FullType(_i1.GMeasureCode)));
    }
    return result;
  }

  @override
  GmesureFieldsData_metrics deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GmesureFieldsData_metricsBuilder();

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
                  specifiedType: const FullType(_i1.GMeasureCode))
              as _i1.GMeasureCode?;
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

class _$GmesureFieldsData_authorSerializer
    implements StructuredSerializer<GmesureFieldsData_author> {
  @override
  final Iterable<Type> types = const [
    GmesureFieldsData_author,
    _$GmesureFieldsData_author
  ];
  @override
  final String wireName = 'GmesureFieldsData_author';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GmesureFieldsData_author object,
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
  GmesureFieldsData_author deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GmesureFieldsData_authorBuilder();

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

class _$GmesureFieldsData_permissionsSerializer
    implements StructuredSerializer<GmesureFieldsData_permissions> {
  @override
  final Iterable<Type> types = const [
    GmesureFieldsData_permissions,
    _$GmesureFieldsData_permissions
  ];
  @override
  final String wireName = 'GmesureFieldsData_permissions';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GmesureFieldsData_permissions object,
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
  GmesureFieldsData_permissions deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GmesureFieldsData_permissionsBuilder();

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

class _$GmesureFieldsData extends GmesureFieldsData {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String? effectiveDate;
  @override
  final BuiltList<GmesureFieldsData_comments>? comments;
  @override
  final BuiltList<GmesureFieldsData_metrics>? metrics;
  @override
  final GmesureFieldsData_author? author;
  @override
  final String formattedMetricValue;
  @override
  final String? idDocument;
  @override
  final String? nameDocument;
  @override
  final GmesureFieldsData_permissions permissions;
  @override
  final String? growthMetricsIntervalText;

  factory _$GmesureFieldsData(
          [void Function(GmesureFieldsDataBuilder)? updates]) =>
      (new GmesureFieldsDataBuilder()..update(updates))._build();

  _$GmesureFieldsData._(
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
        G__typename, r'GmesureFieldsData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GmesureFieldsData', 'id');
    BuiltValueNullFieldError.checkNotNull(
        formattedMetricValue, r'GmesureFieldsData', 'formattedMetricValue');
    BuiltValueNullFieldError.checkNotNull(
        permissions, r'GmesureFieldsData', 'permissions');
  }

  @override
  GmesureFieldsData rebuild(void Function(GmesureFieldsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmesureFieldsDataBuilder toBuilder() =>
      new GmesureFieldsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmesureFieldsData &&
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
    return (newBuiltValueToStringHelper(r'GmesureFieldsData')
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

class GmesureFieldsDataBuilder
    implements Builder<GmesureFieldsData, GmesureFieldsDataBuilder> {
  _$GmesureFieldsData? _$v;

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

  ListBuilder<GmesureFieldsData_comments>? _comments;
  ListBuilder<GmesureFieldsData_comments> get comments =>
      _$this._comments ??= new ListBuilder<GmesureFieldsData_comments>();
  set comments(ListBuilder<GmesureFieldsData_comments>? comments) =>
      _$this._comments = comments;

  ListBuilder<GmesureFieldsData_metrics>? _metrics;
  ListBuilder<GmesureFieldsData_metrics> get metrics =>
      _$this._metrics ??= new ListBuilder<GmesureFieldsData_metrics>();
  set metrics(ListBuilder<GmesureFieldsData_metrics>? metrics) =>
      _$this._metrics = metrics;

  GmesureFieldsData_authorBuilder? _author;
  GmesureFieldsData_authorBuilder get author =>
      _$this._author ??= new GmesureFieldsData_authorBuilder();
  set author(GmesureFieldsData_authorBuilder? author) =>
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

  GmesureFieldsData_permissionsBuilder? _permissions;
  GmesureFieldsData_permissionsBuilder get permissions =>
      _$this._permissions ??= new GmesureFieldsData_permissionsBuilder();
  set permissions(GmesureFieldsData_permissionsBuilder? permissions) =>
      _$this._permissions = permissions;

  String? _growthMetricsIntervalText;
  String? get growthMetricsIntervalText => _$this._growthMetricsIntervalText;
  set growthMetricsIntervalText(String? growthMetricsIntervalText) =>
      _$this._growthMetricsIntervalText = growthMetricsIntervalText;

  GmesureFieldsDataBuilder() {
    GmesureFieldsData._initializeBuilder(this);
  }

  GmesureFieldsDataBuilder get _$this {
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
  void replace(GmesureFieldsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmesureFieldsData;
  }

  @override
  void update(void Function(GmesureFieldsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GmesureFieldsData build() => _build();

  _$GmesureFieldsData _build() {
    _$GmesureFieldsData _$result;
    try {
      _$result = _$v ??
          new _$GmesureFieldsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GmesureFieldsData', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GmesureFieldsData', 'id'),
              effectiveDate: effectiveDate,
              comments: _comments?.build(),
              metrics: _metrics?.build(),
              author: _author?.build(),
              formattedMetricValue: BuiltValueNullFieldError.checkNotNull(
                  formattedMetricValue,
                  r'GmesureFieldsData',
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
            r'GmesureFieldsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GmesureFieldsData_comments extends GmesureFieldsData_comments {
  @override
  final String G__typename;
  @override
  final String code;
  @override
  final String value;
  @override
  final String? extra;

  factory _$GmesureFieldsData_comments(
          [void Function(GmesureFieldsData_commentsBuilder)? updates]) =>
      (new GmesureFieldsData_commentsBuilder()..update(updates))._build();

  _$GmesureFieldsData_comments._(
      {required this.G__typename,
      required this.code,
      required this.value,
      this.extra})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GmesureFieldsData_comments', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        code, r'GmesureFieldsData_comments', 'code');
    BuiltValueNullFieldError.checkNotNull(
        value, r'GmesureFieldsData_comments', 'value');
  }

  @override
  GmesureFieldsData_comments rebuild(
          void Function(GmesureFieldsData_commentsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmesureFieldsData_commentsBuilder toBuilder() =>
      new GmesureFieldsData_commentsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmesureFieldsData_comments &&
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
    return (newBuiltValueToStringHelper(r'GmesureFieldsData_comments')
          ..add('G__typename', G__typename)
          ..add('code', code)
          ..add('value', value)
          ..add('extra', extra))
        .toString();
  }
}

class GmesureFieldsData_commentsBuilder
    implements
        Builder<GmesureFieldsData_comments, GmesureFieldsData_commentsBuilder> {
  _$GmesureFieldsData_comments? _$v;

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

  GmesureFieldsData_commentsBuilder() {
    GmesureFieldsData_comments._initializeBuilder(this);
  }

  GmesureFieldsData_commentsBuilder get _$this {
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
  void replace(GmesureFieldsData_comments other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmesureFieldsData_comments;
  }

  @override
  void update(void Function(GmesureFieldsData_commentsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GmesureFieldsData_comments build() => _build();

  _$GmesureFieldsData_comments _build() {
    final _$result = _$v ??
        new _$GmesureFieldsData_comments._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GmesureFieldsData_comments', 'G__typename'),
            code: BuiltValueNullFieldError.checkNotNull(
                code, r'GmesureFieldsData_comments', 'code'),
            value: BuiltValueNullFieldError.checkNotNull(
                value, r'GmesureFieldsData_comments', 'value'),
            extra: extra);
    replace(_$result);
    return _$result;
  }
}

class _$GmesureFieldsData_metrics extends GmesureFieldsData_metrics {
  @override
  final String G__typename;
  @override
  final _i1.GMeasureCode? code;
  @override
  final double value;
  @override
  final String unit;

  factory _$GmesureFieldsData_metrics(
          [void Function(GmesureFieldsData_metricsBuilder)? updates]) =>
      (new GmesureFieldsData_metricsBuilder()..update(updates))._build();

  _$GmesureFieldsData_metrics._(
      {required this.G__typename,
      this.code,
      required this.value,
      required this.unit})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GmesureFieldsData_metrics', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        value, r'GmesureFieldsData_metrics', 'value');
    BuiltValueNullFieldError.checkNotNull(
        unit, r'GmesureFieldsData_metrics', 'unit');
  }

  @override
  GmesureFieldsData_metrics rebuild(
          void Function(GmesureFieldsData_metricsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmesureFieldsData_metricsBuilder toBuilder() =>
      new GmesureFieldsData_metricsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmesureFieldsData_metrics &&
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
    return (newBuiltValueToStringHelper(r'GmesureFieldsData_metrics')
          ..add('G__typename', G__typename)
          ..add('code', code)
          ..add('value', value)
          ..add('unit', unit))
        .toString();
  }
}

class GmesureFieldsData_metricsBuilder
    implements
        Builder<GmesureFieldsData_metrics, GmesureFieldsData_metricsBuilder> {
  _$GmesureFieldsData_metrics? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i1.GMeasureCode? _code;
  _i1.GMeasureCode? get code => _$this._code;
  set code(_i1.GMeasureCode? code) => _$this._code = code;

  double? _value;
  double? get value => _$this._value;
  set value(double? value) => _$this._value = value;

  String? _unit;
  String? get unit => _$this._unit;
  set unit(String? unit) => _$this._unit = unit;

  GmesureFieldsData_metricsBuilder() {
    GmesureFieldsData_metrics._initializeBuilder(this);
  }

  GmesureFieldsData_metricsBuilder get _$this {
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
  void replace(GmesureFieldsData_metrics other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmesureFieldsData_metrics;
  }

  @override
  void update(void Function(GmesureFieldsData_metricsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GmesureFieldsData_metrics build() => _build();

  _$GmesureFieldsData_metrics _build() {
    final _$result = _$v ??
        new _$GmesureFieldsData_metrics._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GmesureFieldsData_metrics', 'G__typename'),
            code: code,
            value: BuiltValueNullFieldError.checkNotNull(
                value, r'GmesureFieldsData_metrics', 'value'),
            unit: BuiltValueNullFieldError.checkNotNull(
                unit, r'GmesureFieldsData_metrics', 'unit'));
    replace(_$result);
    return _$result;
  }
}

class _$GmesureFieldsData_author extends GmesureFieldsData_author {
  @override
  final String G__typename;
  @override
  final String? firstName;
  @override
  final String? lastName;

  factory _$GmesureFieldsData_author(
          [void Function(GmesureFieldsData_authorBuilder)? updates]) =>
      (new GmesureFieldsData_authorBuilder()..update(updates))._build();

  _$GmesureFieldsData_author._(
      {required this.G__typename, this.firstName, this.lastName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GmesureFieldsData_author', 'G__typename');
  }

  @override
  GmesureFieldsData_author rebuild(
          void Function(GmesureFieldsData_authorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmesureFieldsData_authorBuilder toBuilder() =>
      new GmesureFieldsData_authorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmesureFieldsData_author &&
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
    return (newBuiltValueToStringHelper(r'GmesureFieldsData_author')
          ..add('G__typename', G__typename)
          ..add('firstName', firstName)
          ..add('lastName', lastName))
        .toString();
  }
}

class GmesureFieldsData_authorBuilder
    implements
        Builder<GmesureFieldsData_author, GmesureFieldsData_authorBuilder> {
  _$GmesureFieldsData_author? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  GmesureFieldsData_authorBuilder() {
    GmesureFieldsData_author._initializeBuilder(this);
  }

  GmesureFieldsData_authorBuilder get _$this {
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
  void replace(GmesureFieldsData_author other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmesureFieldsData_author;
  }

  @override
  void update(void Function(GmesureFieldsData_authorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GmesureFieldsData_author build() => _build();

  _$GmesureFieldsData_author _build() {
    final _$result = _$v ??
        new _$GmesureFieldsData_author._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GmesureFieldsData_author', 'G__typename'),
            firstName: firstName,
            lastName: lastName);
    replace(_$result);
    return _$result;
  }
}

class _$GmesureFieldsData_permissions extends GmesureFieldsData_permissions {
  @override
  final String G__typename;
  @override
  final bool delete;
  @override
  final bool Gupdate;

  factory _$GmesureFieldsData_permissions(
          [void Function(GmesureFieldsData_permissionsBuilder)? updates]) =>
      (new GmesureFieldsData_permissionsBuilder()..update(updates))._build();

  _$GmesureFieldsData_permissions._(
      {required this.G__typename, required this.delete, required this.Gupdate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GmesureFieldsData_permissions', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        delete, r'GmesureFieldsData_permissions', 'delete');
    BuiltValueNullFieldError.checkNotNull(
        Gupdate, r'GmesureFieldsData_permissions', 'Gupdate');
  }

  @override
  GmesureFieldsData_permissions rebuild(
          void Function(GmesureFieldsData_permissionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmesureFieldsData_permissionsBuilder toBuilder() =>
      new GmesureFieldsData_permissionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmesureFieldsData_permissions &&
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
    return (newBuiltValueToStringHelper(r'GmesureFieldsData_permissions')
          ..add('G__typename', G__typename)
          ..add('delete', delete)
          ..add('Gupdate', Gupdate))
        .toString();
  }
}

class GmesureFieldsData_permissionsBuilder
    implements
        Builder<GmesureFieldsData_permissions,
            GmesureFieldsData_permissionsBuilder> {
  _$GmesureFieldsData_permissions? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _delete;
  bool? get delete => _$this._delete;
  set delete(bool? delete) => _$this._delete = delete;

  bool? _Gupdate;
  bool? get Gupdate => _$this._Gupdate;
  set Gupdate(bool? Gupdate) => _$this._Gupdate = Gupdate;

  GmesureFieldsData_permissionsBuilder() {
    GmesureFieldsData_permissions._initializeBuilder(this);
  }

  GmesureFieldsData_permissionsBuilder get _$this {
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
  void replace(GmesureFieldsData_permissions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmesureFieldsData_permissions;
  }

  @override
  void update(void Function(GmesureFieldsData_permissionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GmesureFieldsData_permissions build() => _build();

  _$GmesureFieldsData_permissions _build() {
    final _$result = _$v ??
        new _$GmesureFieldsData_permissions._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GmesureFieldsData_permissions', 'G__typename'),
            delete: BuiltValueNullFieldError.checkNotNull(
                delete, r'GmesureFieldsData_permissions', 'delete'),
            Gupdate: BuiltValueNullFieldError.checkNotNull(
                Gupdate, r'GmesureFieldsData_permissions', 'Gupdate'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
