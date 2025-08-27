// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_recommandation_get_delayed_recommendations.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_delayed_recommendationsData>
    _$ggetDelayedRecommendationsDataSerializer =
    new _$Gget_delayed_recommendationsDataSerializer();
Serializer<Gget_delayed_recommendationsData_getDelayedRecommendations>
    _$ggetDelayedRecommendationsDataGetDelayedRecommendationsSerializer =
    new _$Gget_delayed_recommendationsData_getDelayedRecommendationsSerializer();
Serializer<
        Gget_delayed_recommendationsData_getDelayedRecommendations_preference>
    _$ggetDelayedRecommendationsDataGetDelayedRecommendationsPreferenceSerializer =
    new _$Gget_delayed_recommendationsData_getDelayedRecommendations_preferenceSerializer();
Serializer<Gget_delayed_recommendationsData_getDelayedRecommendations_data>
    _$ggetDelayedRecommendationsDataGetDelayedRecommendationsDataSerializer =
    new _$Gget_delayed_recommendationsData_getDelayedRecommendations_dataSerializer();
Serializer<
        Gget_delayed_recommendationsData_getDelayedRecommendations_data_enfants>
    _$ggetDelayedRecommendationsDataGetDelayedRecommendationsDataEnfantsSerializer =
    new _$Gget_delayed_recommendationsData_getDelayedRecommendations_data_enfantsSerializer();

class _$Gget_delayed_recommendationsDataSerializer
    implements StructuredSerializer<Gget_delayed_recommendationsData> {
  @override
  final Iterable<Type> types = const [
    Gget_delayed_recommendationsData,
    _$Gget_delayed_recommendationsData
  ];
  @override
  final String wireName = 'Gget_delayed_recommendationsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_delayed_recommendationsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.getDelayedRecommendations;
    if (value != null) {
      result
        ..add('getDelayedRecommendations')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  Gget_delayed_recommendationsData_getDelayedRecommendations)
            ])));
    }
    return result;
  }

  @override
  Gget_delayed_recommendationsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_delayed_recommendationsDataBuilder();

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
        case 'getDelayedRecommendations':
          result.getDelayedRecommendations.replace(serializers.deserialize(
              value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_delayed_recommendationsData_getDelayedRecommendations)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_delayed_recommendationsData_getDelayedRecommendationsSerializer
    implements
        StructuredSerializer<
            Gget_delayed_recommendationsData_getDelayedRecommendations> {
  @override
  final Iterable<Type> types = const [
    Gget_delayed_recommendationsData_getDelayedRecommendations,
    _$Gget_delayed_recommendationsData_getDelayedRecommendations
  ];
  @override
  final String wireName =
      'Gget_delayed_recommendationsData_getDelayedRecommendations';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_delayed_recommendationsData_getDelayedRecommendations object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'code',
      serializers.serialize(object.code,
          specifiedType: const FullType(_i2.GRecommendationCode)),
      'priority',
      serializers.serialize(object.priority,
          specifiedType: const FullType(double)),
      'preference',
      serializers.serialize(object.preference,
          specifiedType: const FullType(
              Gget_delayed_recommendationsData_getDelayedRecommendations_preference)),
    ];
    Object? value;
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Gget_delayed_recommendationsData_getDelayedRecommendations_data)));
    }
    return result;
  }

  @override
  Gget_delayed_recommendationsData_getDelayedRecommendations deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_delayed_recommendationsData_getDelayedRecommendationsBuilder();

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
                  specifiedType: const FullType(_i2.GRecommendationCode))!
              as _i2.GRecommendationCode;
          break;
        case 'priority':
          result.priority = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'preference':
          result.preference.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_delayed_recommendationsData_getDelayedRecommendations_preference))!
              as Gget_delayed_recommendationsData_getDelayedRecommendations_preference);
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_delayed_recommendationsData_getDelayedRecommendations_data))!
              as Gget_delayed_recommendationsData_getDelayedRecommendations_data);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_delayed_recommendationsData_getDelayedRecommendations_preferenceSerializer
    implements
        StructuredSerializer<
            Gget_delayed_recommendationsData_getDelayedRecommendations_preference> {
  @override
  final Iterable<Type> types = const [
    Gget_delayed_recommendationsData_getDelayedRecommendations_preference,
    _$Gget_delayed_recommendationsData_getDelayedRecommendations_preference
  ];
  @override
  final String wireName =
      'Gget_delayed_recommendationsData_getDelayedRecommendations_preference';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_delayed_recommendationsData_getDelayedRecommendations_preference
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'doitEtreAffichee',
      serializers.serialize(object.doitEtreAffichee,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  Gget_delayed_recommendationsData_getDelayedRecommendations_preference
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_delayed_recommendationsData_getDelayedRecommendations_preferenceBuilder();

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
        case 'doitEtreAffichee':
          result.doitEtreAffichee = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_delayed_recommendationsData_getDelayedRecommendations_dataSerializer
    implements
        StructuredSerializer<
            Gget_delayed_recommendationsData_getDelayedRecommendations_data> {
  @override
  final Iterable<Type> types = const [
    Gget_delayed_recommendationsData_getDelayedRecommendations_data,
    _$Gget_delayed_recommendationsData_getDelayedRecommendations_data
  ];
  @override
  final String wireName =
      'Gget_delayed_recommendationsData_getDelayedRecommendations_data';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_delayed_recommendationsData_getDelayedRecommendations_data object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.enfants;
    if (value != null) {
      result
        ..add('enfants')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  Gget_delayed_recommendationsData_getDelayedRecommendations_data_enfants)
            ])));
    }
    return result;
  }

  @override
  Gget_delayed_recommendationsData_getDelayedRecommendations_data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_delayed_recommendationsData_getDelayedRecommendations_dataBuilder();

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
        case 'enfants':
          result.enfants.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_delayed_recommendationsData_getDelayedRecommendations_data_enfants)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_delayed_recommendationsData_getDelayedRecommendations_data_enfantsSerializer
    implements
        StructuredSerializer<
            Gget_delayed_recommendationsData_getDelayedRecommendations_data_enfants> {
  @override
  final Iterable<Type> types = const [
    Gget_delayed_recommendationsData_getDelayedRecommendations_data_enfants,
    _$Gget_delayed_recommendationsData_getDelayedRecommendations_data_enfants
  ];
  @override
  final String wireName =
      'Gget_delayed_recommendationsData_getDelayedRecommendations_data_enfants';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_delayed_recommendationsData_getDelayedRecommendations_data_enfants
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'nom',
      serializers.serialize(object.nom, specifiedType: const FullType(String)),
      'prenom',
      serializers.serialize(object.prenom,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_delayed_recommendationsData_getDelayedRecommendations_data_enfants
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_delayed_recommendationsData_getDelayedRecommendations_data_enfantsBuilder();

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
        case 'nom':
          result.nom = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'prenom':
          result.prenom = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_delayed_recommendationsData
    extends Gget_delayed_recommendationsData {
  @override
  final String G__typename;
  @override
  final BuiltList<Gget_delayed_recommendationsData_getDelayedRecommendations>?
      getDelayedRecommendations;

  factory _$Gget_delayed_recommendationsData(
          [void Function(Gget_delayed_recommendationsDataBuilder)? updates]) =>
      (new Gget_delayed_recommendationsDataBuilder()..update(updates))._build();

  _$Gget_delayed_recommendationsData._(
      {required this.G__typename, this.getDelayedRecommendations})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_delayed_recommendationsData', 'G__typename');
  }

  @override
  Gget_delayed_recommendationsData rebuild(
          void Function(Gget_delayed_recommendationsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_delayed_recommendationsDataBuilder toBuilder() =>
      new Gget_delayed_recommendationsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_delayed_recommendationsData &&
        G__typename == other.G__typename &&
        getDelayedRecommendations == other.getDelayedRecommendations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getDelayedRecommendations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_delayed_recommendationsData')
          ..add('G__typename', G__typename)
          ..add('getDelayedRecommendations', getDelayedRecommendations))
        .toString();
  }
}

class Gget_delayed_recommendationsDataBuilder
    implements
        Builder<Gget_delayed_recommendationsData,
            Gget_delayed_recommendationsDataBuilder> {
  _$Gget_delayed_recommendationsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<Gget_delayed_recommendationsData_getDelayedRecommendations>?
      _getDelayedRecommendations;
  ListBuilder<Gget_delayed_recommendationsData_getDelayedRecommendations>
      get getDelayedRecommendations =>
          _$this._getDelayedRecommendations ??= new ListBuilder<
              Gget_delayed_recommendationsData_getDelayedRecommendations>();
  set getDelayedRecommendations(
          ListBuilder<
                  Gget_delayed_recommendationsData_getDelayedRecommendations>?
              getDelayedRecommendations) =>
      _$this._getDelayedRecommendations = getDelayedRecommendations;

  Gget_delayed_recommendationsDataBuilder() {
    Gget_delayed_recommendationsData._initializeBuilder(this);
  }

  Gget_delayed_recommendationsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getDelayedRecommendations = $v.getDelayedRecommendations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_delayed_recommendationsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_delayed_recommendationsData;
  }

  @override
  void update(void Function(Gget_delayed_recommendationsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_delayed_recommendationsData build() => _build();

  _$Gget_delayed_recommendationsData _build() {
    _$Gget_delayed_recommendationsData _$result;
    try {
      _$result = _$v ??
          new _$Gget_delayed_recommendationsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gget_delayed_recommendationsData', 'G__typename'),
              getDelayedRecommendations: _getDelayedRecommendations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getDelayedRecommendations';
        _getDelayedRecommendations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_delayed_recommendationsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_delayed_recommendationsData_getDelayedRecommendations
    extends Gget_delayed_recommendationsData_getDelayedRecommendations {
  @override
  final String G__typename;
  @override
  final _i2.GRecommendationCode code;
  @override
  final double priority;
  @override
  final Gget_delayed_recommendationsData_getDelayedRecommendations_preference
      preference;
  @override
  final Gget_delayed_recommendationsData_getDelayedRecommendations_data? data;

  factory _$Gget_delayed_recommendationsData_getDelayedRecommendations(
          [void Function(
                  Gget_delayed_recommendationsData_getDelayedRecommendationsBuilder)?
              updates]) =>
      (new Gget_delayed_recommendationsData_getDelayedRecommendationsBuilder()
            ..update(updates))
          ._build();

  _$Gget_delayed_recommendationsData_getDelayedRecommendations._(
      {required this.G__typename,
      required this.code,
      required this.priority,
      required this.preference,
      this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_delayed_recommendationsData_getDelayedRecommendations',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(code,
        r'Gget_delayed_recommendationsData_getDelayedRecommendations', 'code');
    BuiltValueNullFieldError.checkNotNull(
        priority,
        r'Gget_delayed_recommendationsData_getDelayedRecommendations',
        'priority');
    BuiltValueNullFieldError.checkNotNull(
        preference,
        r'Gget_delayed_recommendationsData_getDelayedRecommendations',
        'preference');
  }

  @override
  Gget_delayed_recommendationsData_getDelayedRecommendations rebuild(
          void Function(
                  Gget_delayed_recommendationsData_getDelayedRecommendationsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_delayed_recommendationsData_getDelayedRecommendationsBuilder
      toBuilder() =>
          new Gget_delayed_recommendationsData_getDelayedRecommendationsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_delayed_recommendationsData_getDelayedRecommendations &&
        G__typename == other.G__typename &&
        code == other.code &&
        priority == other.priority &&
        preference == other.preference &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, priority.hashCode);
    _$hash = $jc(_$hash, preference.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_delayed_recommendationsData_getDelayedRecommendations')
          ..add('G__typename', G__typename)
          ..add('code', code)
          ..add('priority', priority)
          ..add('preference', preference)
          ..add('data', data))
        .toString();
  }
}

class Gget_delayed_recommendationsData_getDelayedRecommendationsBuilder
    implements
        Builder<Gget_delayed_recommendationsData_getDelayedRecommendations,
            Gget_delayed_recommendationsData_getDelayedRecommendationsBuilder> {
  _$Gget_delayed_recommendationsData_getDelayedRecommendations? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i2.GRecommendationCode? _code;
  _i2.GRecommendationCode? get code => _$this._code;
  set code(_i2.GRecommendationCode? code) => _$this._code = code;

  double? _priority;
  double? get priority => _$this._priority;
  set priority(double? priority) => _$this._priority = priority;

  Gget_delayed_recommendationsData_getDelayedRecommendations_preferenceBuilder?
      _preference;
  Gget_delayed_recommendationsData_getDelayedRecommendations_preferenceBuilder
      get preference => _$this._preference ??=
          new Gget_delayed_recommendationsData_getDelayedRecommendations_preferenceBuilder();
  set preference(
          Gget_delayed_recommendationsData_getDelayedRecommendations_preferenceBuilder?
              preference) =>
      _$this._preference = preference;

  Gget_delayed_recommendationsData_getDelayedRecommendations_dataBuilder? _data;
  Gget_delayed_recommendationsData_getDelayedRecommendations_dataBuilder
      get data => _$this._data ??=
          new Gget_delayed_recommendationsData_getDelayedRecommendations_dataBuilder();
  set data(
          Gget_delayed_recommendationsData_getDelayedRecommendations_dataBuilder?
              data) =>
      _$this._data = data;

  Gget_delayed_recommendationsData_getDelayedRecommendationsBuilder() {
    Gget_delayed_recommendationsData_getDelayedRecommendations
        ._initializeBuilder(this);
  }

  Gget_delayed_recommendationsData_getDelayedRecommendationsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _code = $v.code;
      _priority = $v.priority;
      _preference = $v.preference.toBuilder();
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_delayed_recommendationsData_getDelayedRecommendations other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_delayed_recommendationsData_getDelayedRecommendations;
  }

  @override
  void update(
      void Function(
              Gget_delayed_recommendationsData_getDelayedRecommendationsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_delayed_recommendationsData_getDelayedRecommendations build() =>
      _build();

  _$Gget_delayed_recommendationsData_getDelayedRecommendations _build() {
    _$Gget_delayed_recommendationsData_getDelayedRecommendations _$result;
    try {
      _$result = _$v ??
          new _$Gget_delayed_recommendationsData_getDelayedRecommendations._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_delayed_recommendationsData_getDelayedRecommendations',
                  'G__typename'),
              code: BuiltValueNullFieldError.checkNotNull(code,
                  r'Gget_delayed_recommendationsData_getDelayedRecommendations', 'code'),
              priority: BuiltValueNullFieldError.checkNotNull(
                  priority,
                  r'Gget_delayed_recommendationsData_getDelayedRecommendations',
                  'priority'),
              preference: preference.build(),
              data: _data?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'preference';
        preference.build();
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_delayed_recommendationsData_getDelayedRecommendations',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_delayed_recommendationsData_getDelayedRecommendations_preference
    extends Gget_delayed_recommendationsData_getDelayedRecommendations_preference {
  @override
  final String G__typename;
  @override
  final bool doitEtreAffichee;

  factory _$Gget_delayed_recommendationsData_getDelayedRecommendations_preference(
          [void Function(
                  Gget_delayed_recommendationsData_getDelayedRecommendations_preferenceBuilder)?
              updates]) =>
      (new Gget_delayed_recommendationsData_getDelayedRecommendations_preferenceBuilder()
            ..update(updates))
          ._build();

  _$Gget_delayed_recommendationsData_getDelayedRecommendations_preference._(
      {required this.G__typename, required this.doitEtreAffichee})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_delayed_recommendationsData_getDelayedRecommendations_preference',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        doitEtreAffichee,
        r'Gget_delayed_recommendationsData_getDelayedRecommendations_preference',
        'doitEtreAffichee');
  }

  @override
  Gget_delayed_recommendationsData_getDelayedRecommendations_preference rebuild(
          void Function(
                  Gget_delayed_recommendationsData_getDelayedRecommendations_preferenceBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_delayed_recommendationsData_getDelayedRecommendations_preferenceBuilder
      toBuilder() =>
          new Gget_delayed_recommendationsData_getDelayedRecommendations_preferenceBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_delayed_recommendationsData_getDelayedRecommendations_preference &&
        G__typename == other.G__typename &&
        doitEtreAffichee == other.doitEtreAffichee;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, doitEtreAffichee.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_delayed_recommendationsData_getDelayedRecommendations_preference')
          ..add('G__typename', G__typename)
          ..add('doitEtreAffichee', doitEtreAffichee))
        .toString();
  }
}

class Gget_delayed_recommendationsData_getDelayedRecommendations_preferenceBuilder
    implements
        Builder<
            Gget_delayed_recommendationsData_getDelayedRecommendations_preference,
            Gget_delayed_recommendationsData_getDelayedRecommendations_preferenceBuilder> {
  _$Gget_delayed_recommendationsData_getDelayedRecommendations_preference? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _doitEtreAffichee;
  bool? get doitEtreAffichee => _$this._doitEtreAffichee;
  set doitEtreAffichee(bool? doitEtreAffichee) =>
      _$this._doitEtreAffichee = doitEtreAffichee;

  Gget_delayed_recommendationsData_getDelayedRecommendations_preferenceBuilder() {
    Gget_delayed_recommendationsData_getDelayedRecommendations_preference
        ._initializeBuilder(this);
  }

  Gget_delayed_recommendationsData_getDelayedRecommendations_preferenceBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _doitEtreAffichee = $v.doitEtreAffichee;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_delayed_recommendationsData_getDelayedRecommendations_preference
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_delayed_recommendationsData_getDelayedRecommendations_preference;
  }

  @override
  void update(
      void Function(
              Gget_delayed_recommendationsData_getDelayedRecommendations_preferenceBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_delayed_recommendationsData_getDelayedRecommendations_preference
      build() => _build();

  _$Gget_delayed_recommendationsData_getDelayedRecommendations_preference
      _build() {
    final _$result = _$v ??
        new _$Gget_delayed_recommendationsData_getDelayedRecommendations_preference
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_delayed_recommendationsData_getDelayedRecommendations_preference',
                'G__typename'),
            doitEtreAffichee: BuiltValueNullFieldError.checkNotNull(
                doitEtreAffichee,
                r'Gget_delayed_recommendationsData_getDelayedRecommendations_preference',
                'doitEtreAffichee'));
    replace(_$result);
    return _$result;
  }
}

class _$Gget_delayed_recommendationsData_getDelayedRecommendations_data
    extends Gget_delayed_recommendationsData_getDelayedRecommendations_data {
  @override
  final String G__typename;
  @override
  final BuiltList<
          Gget_delayed_recommendationsData_getDelayedRecommendations_data_enfants>?
      enfants;

  factory _$Gget_delayed_recommendationsData_getDelayedRecommendations_data(
          [void Function(
                  Gget_delayed_recommendationsData_getDelayedRecommendations_dataBuilder)?
              updates]) =>
      (new Gget_delayed_recommendationsData_getDelayedRecommendations_dataBuilder()
            ..update(updates))
          ._build();

  _$Gget_delayed_recommendationsData_getDelayedRecommendations_data._(
      {required this.G__typename, this.enfants})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_delayed_recommendationsData_getDelayedRecommendations_data',
        'G__typename');
  }

  @override
  Gget_delayed_recommendationsData_getDelayedRecommendations_data rebuild(
          void Function(
                  Gget_delayed_recommendationsData_getDelayedRecommendations_dataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_delayed_recommendationsData_getDelayedRecommendations_dataBuilder
      toBuilder() =>
          new Gget_delayed_recommendationsData_getDelayedRecommendations_dataBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_delayed_recommendationsData_getDelayedRecommendations_data &&
        G__typename == other.G__typename &&
        enfants == other.enfants;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, enfants.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_delayed_recommendationsData_getDelayedRecommendations_data')
          ..add('G__typename', G__typename)
          ..add('enfants', enfants))
        .toString();
  }
}

class Gget_delayed_recommendationsData_getDelayedRecommendations_dataBuilder
    implements
        Builder<Gget_delayed_recommendationsData_getDelayedRecommendations_data,
            Gget_delayed_recommendationsData_getDelayedRecommendations_dataBuilder> {
  _$Gget_delayed_recommendationsData_getDelayedRecommendations_data? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<
          Gget_delayed_recommendationsData_getDelayedRecommendations_data_enfants>?
      _enfants;
  ListBuilder<
          Gget_delayed_recommendationsData_getDelayedRecommendations_data_enfants>
      get enfants => _$this._enfants ??= new ListBuilder<
          Gget_delayed_recommendationsData_getDelayedRecommendations_data_enfants>();
  set enfants(
          ListBuilder<
                  Gget_delayed_recommendationsData_getDelayedRecommendations_data_enfants>?
              enfants) =>
      _$this._enfants = enfants;

  Gget_delayed_recommendationsData_getDelayedRecommendations_dataBuilder() {
    Gget_delayed_recommendationsData_getDelayedRecommendations_data
        ._initializeBuilder(this);
  }

  Gget_delayed_recommendationsData_getDelayedRecommendations_dataBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _enfants = $v.enfants?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_delayed_recommendationsData_getDelayedRecommendations_data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_delayed_recommendationsData_getDelayedRecommendations_data;
  }

  @override
  void update(
      void Function(
              Gget_delayed_recommendationsData_getDelayedRecommendations_dataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_delayed_recommendationsData_getDelayedRecommendations_data build() =>
      _build();

  _$Gget_delayed_recommendationsData_getDelayedRecommendations_data _build() {
    _$Gget_delayed_recommendationsData_getDelayedRecommendations_data _$result;
    try {
      _$result = _$v ??
          new _$Gget_delayed_recommendationsData_getDelayedRecommendations_data
              ._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_delayed_recommendationsData_getDelayedRecommendations_data',
                  'G__typename'),
              enfants: _enfants?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'enfants';
        _enfants?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_delayed_recommendationsData_getDelayedRecommendations_data',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_delayed_recommendationsData_getDelayedRecommendations_data_enfants
    extends Gget_delayed_recommendationsData_getDelayedRecommendations_data_enfants {
  @override
  final String G__typename;
  @override
  final String nom;
  @override
  final String prenom;

  factory _$Gget_delayed_recommendationsData_getDelayedRecommendations_data_enfants(
          [void Function(
                  Gget_delayed_recommendationsData_getDelayedRecommendations_data_enfantsBuilder)?
              updates]) =>
      (new Gget_delayed_recommendationsData_getDelayedRecommendations_data_enfantsBuilder()
            ..update(updates))
          ._build();

  _$Gget_delayed_recommendationsData_getDelayedRecommendations_data_enfants._(
      {required this.G__typename, required this.nom, required this.prenom})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_delayed_recommendationsData_getDelayedRecommendations_data_enfants',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        nom,
        r'Gget_delayed_recommendationsData_getDelayedRecommendations_data_enfants',
        'nom');
    BuiltValueNullFieldError.checkNotNull(
        prenom,
        r'Gget_delayed_recommendationsData_getDelayedRecommendations_data_enfants',
        'prenom');
  }

  @override
  Gget_delayed_recommendationsData_getDelayedRecommendations_data_enfants rebuild(
          void Function(
                  Gget_delayed_recommendationsData_getDelayedRecommendations_data_enfantsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_delayed_recommendationsData_getDelayedRecommendations_data_enfantsBuilder
      toBuilder() =>
          new Gget_delayed_recommendationsData_getDelayedRecommendations_data_enfantsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_delayed_recommendationsData_getDelayedRecommendations_data_enfants &&
        G__typename == other.G__typename &&
        nom == other.nom &&
        prenom == other.prenom;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, nom.hashCode);
    _$hash = $jc(_$hash, prenom.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_delayed_recommendationsData_getDelayedRecommendations_data_enfants')
          ..add('G__typename', G__typename)
          ..add('nom', nom)
          ..add('prenom', prenom))
        .toString();
  }
}

class Gget_delayed_recommendationsData_getDelayedRecommendations_data_enfantsBuilder
    implements
        Builder<
            Gget_delayed_recommendationsData_getDelayedRecommendations_data_enfants,
            Gget_delayed_recommendationsData_getDelayedRecommendations_data_enfantsBuilder> {
  _$Gget_delayed_recommendationsData_getDelayedRecommendations_data_enfants?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _nom;
  String? get nom => _$this._nom;
  set nom(String? nom) => _$this._nom = nom;

  String? _prenom;
  String? get prenom => _$this._prenom;
  set prenom(String? prenom) => _$this._prenom = prenom;

  Gget_delayed_recommendationsData_getDelayedRecommendations_data_enfantsBuilder() {
    Gget_delayed_recommendationsData_getDelayedRecommendations_data_enfants
        ._initializeBuilder(this);
  }

  Gget_delayed_recommendationsData_getDelayedRecommendations_data_enfantsBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _nom = $v.nom;
      _prenom = $v.prenom;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_delayed_recommendationsData_getDelayedRecommendations_data_enfants
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_delayed_recommendationsData_getDelayedRecommendations_data_enfants;
  }

  @override
  void update(
      void Function(
              Gget_delayed_recommendationsData_getDelayedRecommendations_data_enfantsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_delayed_recommendationsData_getDelayedRecommendations_data_enfants
      build() => _build();

  _$Gget_delayed_recommendationsData_getDelayedRecommendations_data_enfants
      _build() {
    final _$result = _$v ??
        new _$Gget_delayed_recommendationsData_getDelayedRecommendations_data_enfants
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_delayed_recommendationsData_getDelayedRecommendations_data_enfants',
                'G__typename'),
            nom: BuiltValueNullFieldError.checkNotNull(
                nom,
                r'Gget_delayed_recommendationsData_getDelayedRecommendations_data_enfants',
                'nom'),
            prenom: BuiltValueNullFieldError.checkNotNull(
                prenom,
                r'Gget_delayed_recommendationsData_getDelayedRecommendations_data_enfants',
                'prenom'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
