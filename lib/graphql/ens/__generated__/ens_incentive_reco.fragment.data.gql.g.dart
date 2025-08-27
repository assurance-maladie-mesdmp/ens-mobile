// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_incentive_reco.fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GincentiveRecoData> _$gincentiveRecoDataSerializer =
    new _$GincentiveRecoDataSerializer();
Serializer<GincentiveRecoData_data> _$gincentiveRecoDataDataSerializer =
    new _$GincentiveRecoData_dataSerializer();

class _$GincentiveRecoDataSerializer
    implements StructuredSerializer<GincentiveRecoData> {
  @override
  final Iterable<Type> types = const [GincentiveRecoData, _$GincentiveRecoData];
  @override
  final String wireName = 'GincentiveRecoData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GincentiveRecoData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(String)),
      'family',
      serializers.serialize(object.family,
          specifiedType: const FullType(String)),
      'priority',
      serializers.serialize(object.priority,
          specifiedType: const FullType(double)),
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(GincentiveRecoData_data)),
    ];

    return result;
  }

  @override
  GincentiveRecoData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GincentiveRecoDataBuilder();

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
        case 'family':
          result.family = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'priority':
          result.priority = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GincentiveRecoData_data))!
              as GincentiveRecoData_data);
          break;
      }
    }

    return result.build();
  }
}

class _$GincentiveRecoData_dataSerializer
    implements StructuredSerializer<GincentiveRecoData_data> {
  @override
  final Iterable<Type> types = const [
    GincentiveRecoData_data,
    _$GincentiveRecoData_data
  ];
  @override
  final String wireName = 'GincentiveRecoData_data';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GincentiveRecoData_data object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.count;
    if (value != null) {
      result
        ..add('count')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.quizCode;
    if (value != null) {
      result
        ..add('quizCode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.quizVersion;
    if (value != null) {
      result
        ..add('quizVersion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.lastVersion;
    if (value != null) {
      result
        ..add('lastVersion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  GincentiveRecoData_data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GincentiveRecoData_dataBuilder();

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
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'quizCode':
          result.quizCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'quizVersion':
          result.quizVersion = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'lastVersion':
          result.lastVersion = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
      }
    }

    return result.build();
  }
}

class _$GincentiveRecoData extends GincentiveRecoData {
  @override
  final String G__typename;
  @override
  final String code;
  @override
  final String family;
  @override
  final double priority;
  @override
  final GincentiveRecoData_data data;

  factory _$GincentiveRecoData(
          [void Function(GincentiveRecoDataBuilder)? updates]) =>
      (new GincentiveRecoDataBuilder()..update(updates))._build();

  _$GincentiveRecoData._(
      {required this.G__typename,
      required this.code,
      required this.family,
      required this.priority,
      required this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GincentiveRecoData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(code, r'GincentiveRecoData', 'code');
    BuiltValueNullFieldError.checkNotNull(
        family, r'GincentiveRecoData', 'family');
    BuiltValueNullFieldError.checkNotNull(
        priority, r'GincentiveRecoData', 'priority');
    BuiltValueNullFieldError.checkNotNull(data, r'GincentiveRecoData', 'data');
  }

  @override
  GincentiveRecoData rebuild(
          void Function(GincentiveRecoDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GincentiveRecoDataBuilder toBuilder() =>
      new GincentiveRecoDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GincentiveRecoData &&
        G__typename == other.G__typename &&
        code == other.code &&
        family == other.family &&
        priority == other.priority &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, family.hashCode);
    _$hash = $jc(_$hash, priority.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GincentiveRecoData')
          ..add('G__typename', G__typename)
          ..add('code', code)
          ..add('family', family)
          ..add('priority', priority)
          ..add('data', data))
        .toString();
  }
}

class GincentiveRecoDataBuilder
    implements Builder<GincentiveRecoData, GincentiveRecoDataBuilder> {
  _$GincentiveRecoData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _family;
  String? get family => _$this._family;
  set family(String? family) => _$this._family = family;

  double? _priority;
  double? get priority => _$this._priority;
  set priority(double? priority) => _$this._priority = priority;

  GincentiveRecoData_dataBuilder? _data;
  GincentiveRecoData_dataBuilder get data =>
      _$this._data ??= new GincentiveRecoData_dataBuilder();
  set data(GincentiveRecoData_dataBuilder? data) => _$this._data = data;

  GincentiveRecoDataBuilder() {
    GincentiveRecoData._initializeBuilder(this);
  }

  GincentiveRecoDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _code = $v.code;
      _family = $v.family;
      _priority = $v.priority;
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GincentiveRecoData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GincentiveRecoData;
  }

  @override
  void update(void Function(GincentiveRecoDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GincentiveRecoData build() => _build();

  _$GincentiveRecoData _build() {
    _$GincentiveRecoData _$result;
    try {
      _$result = _$v ??
          new _$GincentiveRecoData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GincentiveRecoData', 'G__typename'),
              code: BuiltValueNullFieldError.checkNotNull(
                  code, r'GincentiveRecoData', 'code'),
              family: BuiltValueNullFieldError.checkNotNull(
                  family, r'GincentiveRecoData', 'family'),
              priority: BuiltValueNullFieldError.checkNotNull(
                  priority, r'GincentiveRecoData', 'priority'),
              data: data.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GincentiveRecoData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GincentiveRecoData_data extends GincentiveRecoData_data {
  @override
  final String G__typename;
  @override
  final String? count;
  @override
  final String? quizCode;
  @override
  final double? quizVersion;
  @override
  final double? lastVersion;

  factory _$GincentiveRecoData_data(
          [void Function(GincentiveRecoData_dataBuilder)? updates]) =>
      (new GincentiveRecoData_dataBuilder()..update(updates))._build();

  _$GincentiveRecoData_data._(
      {required this.G__typename,
      this.count,
      this.quizCode,
      this.quizVersion,
      this.lastVersion})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GincentiveRecoData_data', 'G__typename');
  }

  @override
  GincentiveRecoData_data rebuild(
          void Function(GincentiveRecoData_dataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GincentiveRecoData_dataBuilder toBuilder() =>
      new GincentiveRecoData_dataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GincentiveRecoData_data &&
        G__typename == other.G__typename &&
        count == other.count &&
        quizCode == other.quizCode &&
        quizVersion == other.quizVersion &&
        lastVersion == other.lastVersion;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, quizCode.hashCode);
    _$hash = $jc(_$hash, quizVersion.hashCode);
    _$hash = $jc(_$hash, lastVersion.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GincentiveRecoData_data')
          ..add('G__typename', G__typename)
          ..add('count', count)
          ..add('quizCode', quizCode)
          ..add('quizVersion', quizVersion)
          ..add('lastVersion', lastVersion))
        .toString();
  }
}

class GincentiveRecoData_dataBuilder
    implements
        Builder<GincentiveRecoData_data, GincentiveRecoData_dataBuilder> {
  _$GincentiveRecoData_data? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _count;
  String? get count => _$this._count;
  set count(String? count) => _$this._count = count;

  String? _quizCode;
  String? get quizCode => _$this._quizCode;
  set quizCode(String? quizCode) => _$this._quizCode = quizCode;

  double? _quizVersion;
  double? get quizVersion => _$this._quizVersion;
  set quizVersion(double? quizVersion) => _$this._quizVersion = quizVersion;

  double? _lastVersion;
  double? get lastVersion => _$this._lastVersion;
  set lastVersion(double? lastVersion) => _$this._lastVersion = lastVersion;

  GincentiveRecoData_dataBuilder() {
    GincentiveRecoData_data._initializeBuilder(this);
  }

  GincentiveRecoData_dataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _count = $v.count;
      _quizCode = $v.quizCode;
      _quizVersion = $v.quizVersion;
      _lastVersion = $v.lastVersion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GincentiveRecoData_data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GincentiveRecoData_data;
  }

  @override
  void update(void Function(GincentiveRecoData_dataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GincentiveRecoData_data build() => _build();

  _$GincentiveRecoData_data _build() {
    final _$result = _$v ??
        new _$GincentiveRecoData_data._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GincentiveRecoData_data', 'G__typename'),
            count: count,
            quizCode: quizCode,
            quizVersion: quizVersion,
            lastVersion: lastVersion);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
