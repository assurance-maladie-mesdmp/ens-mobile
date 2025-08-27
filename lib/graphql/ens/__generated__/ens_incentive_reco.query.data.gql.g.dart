// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_incentive_reco.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_recommandationsData> _$ggetRecommandationsDataSerializer =
    new _$Gget_recommandationsDataSerializer();
Serializer<Gget_recommandationsData_getIncentiveReco>
    _$ggetRecommandationsDataGetIncentiveRecoSerializer =
    new _$Gget_recommandationsData_getIncentiveRecoSerializer();
Serializer<Gget_recommandationsData_getIncentiveReco_data>
    _$ggetRecommandationsDataGetIncentiveRecoDataSerializer =
    new _$Gget_recommandationsData_getIncentiveReco_dataSerializer();

class _$Gget_recommandationsDataSerializer
    implements StructuredSerializer<Gget_recommandationsData> {
  @override
  final Iterable<Type> types = const [
    Gget_recommandationsData,
    _$Gget_recommandationsData
  ];
  @override
  final String wireName = 'Gget_recommandationsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_recommandationsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.getIncentiveReco;
    if (value != null) {
      result
        ..add('getIncentiveReco')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(Gget_recommandationsData_getIncentiveReco)
            ])));
    }
    return result;
  }

  @override
  Gget_recommandationsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_recommandationsDataBuilder();

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
        case 'getIncentiveReco':
          result.getIncentiveReco.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(Gget_recommandationsData_getIncentiveReco)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_recommandationsData_getIncentiveRecoSerializer
    implements StructuredSerializer<Gget_recommandationsData_getIncentiveReco> {
  @override
  final Iterable<Type> types = const [
    Gget_recommandationsData_getIncentiveReco,
    _$Gget_recommandationsData_getIncentiveReco
  ];
  @override
  final String wireName = 'Gget_recommandationsData_getIncentiveReco';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_recommandationsData_getIncentiveReco object,
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
          specifiedType:
              const FullType(Gget_recommandationsData_getIncentiveReco_data)),
    ];

    return result;
  }

  @override
  Gget_recommandationsData_getIncentiveReco deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_recommandationsData_getIncentiveRecoBuilder();

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
                  specifiedType: const FullType(
                      Gget_recommandationsData_getIncentiveReco_data))!
              as Gget_recommandationsData_getIncentiveReco_data);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_recommandationsData_getIncentiveReco_dataSerializer
    implements
        StructuredSerializer<Gget_recommandationsData_getIncentiveReco_data> {
  @override
  final Iterable<Type> types = const [
    Gget_recommandationsData_getIncentiveReco_data,
    _$Gget_recommandationsData_getIncentiveReco_data
  ];
  @override
  final String wireName = 'Gget_recommandationsData_getIncentiveReco_data';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_recommandationsData_getIncentiveReco_data object,
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
  Gget_recommandationsData_getIncentiveReco_data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_recommandationsData_getIncentiveReco_dataBuilder();

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

class _$Gget_recommandationsData extends Gget_recommandationsData {
  @override
  final String G__typename;
  @override
  final BuiltList<Gget_recommandationsData_getIncentiveReco>? getIncentiveReco;

  factory _$Gget_recommandationsData(
          [void Function(Gget_recommandationsDataBuilder)? updates]) =>
      (new Gget_recommandationsDataBuilder()..update(updates))._build();

  _$Gget_recommandationsData._(
      {required this.G__typename, this.getIncentiveReco})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_recommandationsData', 'G__typename');
  }

  @override
  Gget_recommandationsData rebuild(
          void Function(Gget_recommandationsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_recommandationsDataBuilder toBuilder() =>
      new Gget_recommandationsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_recommandationsData &&
        G__typename == other.G__typename &&
        getIncentiveReco == other.getIncentiveReco;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getIncentiveReco.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_recommandationsData')
          ..add('G__typename', G__typename)
          ..add('getIncentiveReco', getIncentiveReco))
        .toString();
  }
}

class Gget_recommandationsDataBuilder
    implements
        Builder<Gget_recommandationsData, Gget_recommandationsDataBuilder> {
  _$Gget_recommandationsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<Gget_recommandationsData_getIncentiveReco>? _getIncentiveReco;
  ListBuilder<Gget_recommandationsData_getIncentiveReco> get getIncentiveReco =>
      _$this._getIncentiveReco ??=
          new ListBuilder<Gget_recommandationsData_getIncentiveReco>();
  set getIncentiveReco(
          ListBuilder<Gget_recommandationsData_getIncentiveReco>?
              getIncentiveReco) =>
      _$this._getIncentiveReco = getIncentiveReco;

  Gget_recommandationsDataBuilder() {
    Gget_recommandationsData._initializeBuilder(this);
  }

  Gget_recommandationsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getIncentiveReco = $v.getIncentiveReco?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_recommandationsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_recommandationsData;
  }

  @override
  void update(void Function(Gget_recommandationsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_recommandationsData build() => _build();

  _$Gget_recommandationsData _build() {
    _$Gget_recommandationsData _$result;
    try {
      _$result = _$v ??
          new _$Gget_recommandationsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gget_recommandationsData', 'G__typename'),
              getIncentiveReco: _getIncentiveReco?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getIncentiveReco';
        _getIncentiveReco?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_recommandationsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_recommandationsData_getIncentiveReco
    extends Gget_recommandationsData_getIncentiveReco {
  @override
  final String G__typename;
  @override
  final String code;
  @override
  final String family;
  @override
  final double priority;
  @override
  final Gget_recommandationsData_getIncentiveReco_data data;

  factory _$Gget_recommandationsData_getIncentiveReco(
          [void Function(Gget_recommandationsData_getIncentiveRecoBuilder)?
              updates]) =>
      (new Gget_recommandationsData_getIncentiveRecoBuilder()..update(updates))
          ._build();

  _$Gget_recommandationsData_getIncentiveReco._(
      {required this.G__typename,
      required this.code,
      required this.family,
      required this.priority,
      required this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_recommandationsData_getIncentiveReco', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        code, r'Gget_recommandationsData_getIncentiveReco', 'code');
    BuiltValueNullFieldError.checkNotNull(
        family, r'Gget_recommandationsData_getIncentiveReco', 'family');
    BuiltValueNullFieldError.checkNotNull(
        priority, r'Gget_recommandationsData_getIncentiveReco', 'priority');
    BuiltValueNullFieldError.checkNotNull(
        data, r'Gget_recommandationsData_getIncentiveReco', 'data');
  }

  @override
  Gget_recommandationsData_getIncentiveReco rebuild(
          void Function(Gget_recommandationsData_getIncentiveRecoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_recommandationsData_getIncentiveRecoBuilder toBuilder() =>
      new Gget_recommandationsData_getIncentiveRecoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_recommandationsData_getIncentiveReco &&
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
    return (newBuiltValueToStringHelper(
            r'Gget_recommandationsData_getIncentiveReco')
          ..add('G__typename', G__typename)
          ..add('code', code)
          ..add('family', family)
          ..add('priority', priority)
          ..add('data', data))
        .toString();
  }
}

class Gget_recommandationsData_getIncentiveRecoBuilder
    implements
        Builder<Gget_recommandationsData_getIncentiveReco,
            Gget_recommandationsData_getIncentiveRecoBuilder> {
  _$Gget_recommandationsData_getIncentiveReco? _$v;

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

  Gget_recommandationsData_getIncentiveReco_dataBuilder? _data;
  Gget_recommandationsData_getIncentiveReco_dataBuilder get data =>
      _$this._data ??=
          new Gget_recommandationsData_getIncentiveReco_dataBuilder();
  set data(Gget_recommandationsData_getIncentiveReco_dataBuilder? data) =>
      _$this._data = data;

  Gget_recommandationsData_getIncentiveRecoBuilder() {
    Gget_recommandationsData_getIncentiveReco._initializeBuilder(this);
  }

  Gget_recommandationsData_getIncentiveRecoBuilder get _$this {
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
  void replace(Gget_recommandationsData_getIncentiveReco other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_recommandationsData_getIncentiveReco;
  }

  @override
  void update(
      void Function(Gget_recommandationsData_getIncentiveRecoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_recommandationsData_getIncentiveReco build() => _build();

  _$Gget_recommandationsData_getIncentiveReco _build() {
    _$Gget_recommandationsData_getIncentiveReco _$result;
    try {
      _$result = _$v ??
          new _$Gget_recommandationsData_getIncentiveReco._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gget_recommandationsData_getIncentiveReco', 'G__typename'),
              code: BuiltValueNullFieldError.checkNotNull(
                  code, r'Gget_recommandationsData_getIncentiveReco', 'code'),
              family: BuiltValueNullFieldError.checkNotNull(family,
                  r'Gget_recommandationsData_getIncentiveReco', 'family'),
              priority: BuiltValueNullFieldError.checkNotNull(priority,
                  r'Gget_recommandationsData_getIncentiveReco', 'priority'),
              data: data.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_recommandationsData_getIncentiveReco',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_recommandationsData_getIncentiveReco_data
    extends Gget_recommandationsData_getIncentiveReco_data {
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

  factory _$Gget_recommandationsData_getIncentiveReco_data(
          [void Function(Gget_recommandationsData_getIncentiveReco_dataBuilder)?
              updates]) =>
      (new Gget_recommandationsData_getIncentiveReco_dataBuilder()
            ..update(updates))
          ._build();

  _$Gget_recommandationsData_getIncentiveReco_data._(
      {required this.G__typename,
      this.count,
      this.quizCode,
      this.quizVersion,
      this.lastVersion})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_recommandationsData_getIncentiveReco_data', 'G__typename');
  }

  @override
  Gget_recommandationsData_getIncentiveReco_data rebuild(
          void Function(Gget_recommandationsData_getIncentiveReco_dataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_recommandationsData_getIncentiveReco_dataBuilder toBuilder() =>
      new Gget_recommandationsData_getIncentiveReco_dataBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_recommandationsData_getIncentiveReco_data &&
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
    return (newBuiltValueToStringHelper(
            r'Gget_recommandationsData_getIncentiveReco_data')
          ..add('G__typename', G__typename)
          ..add('count', count)
          ..add('quizCode', quizCode)
          ..add('quizVersion', quizVersion)
          ..add('lastVersion', lastVersion))
        .toString();
  }
}

class Gget_recommandationsData_getIncentiveReco_dataBuilder
    implements
        Builder<Gget_recommandationsData_getIncentiveReco_data,
            Gget_recommandationsData_getIncentiveReco_dataBuilder> {
  _$Gget_recommandationsData_getIncentiveReco_data? _$v;

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

  Gget_recommandationsData_getIncentiveReco_dataBuilder() {
    Gget_recommandationsData_getIncentiveReco_data._initializeBuilder(this);
  }

  Gget_recommandationsData_getIncentiveReco_dataBuilder get _$this {
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
  void replace(Gget_recommandationsData_getIncentiveReco_data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_recommandationsData_getIncentiveReco_data;
  }

  @override
  void update(
      void Function(Gget_recommandationsData_getIncentiveReco_dataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_recommandationsData_getIncentiveReco_data build() => _build();

  _$Gget_recommandationsData_getIncentiveReco_data _build() {
    final _$result = _$v ??
        new _$Gget_recommandationsData_getIncentiveReco_data._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_recommandationsData_getIncentiveReco_data',
                'G__typename'),
            count: count,
            quizCode: quizCode,
            quizVersion: quizVersion,
            lastVersion: lastVersion);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
