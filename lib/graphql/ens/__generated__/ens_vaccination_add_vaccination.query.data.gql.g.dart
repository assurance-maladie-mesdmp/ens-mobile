// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_vaccination_add_vaccination.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gadd_vaccinationData> _$gaddVaccinationDataSerializer =
    new _$Gadd_vaccinationDataSerializer();
Serializer<Gadd_vaccinationData_postVaccine>
    _$gaddVaccinationDataPostVaccineSerializer =
    new _$Gadd_vaccinationData_postVaccineSerializer();
Serializer<Gadd_vaccinationData_postVaccine_vaccines>
    _$gaddVaccinationDataPostVaccineVaccinesSerializer =
    new _$Gadd_vaccinationData_postVaccine_vaccinesSerializer();

class _$Gadd_vaccinationDataSerializer
    implements StructuredSerializer<Gadd_vaccinationData> {
  @override
  final Iterable<Type> types = const [
    Gadd_vaccinationData,
    _$Gadd_vaccinationData
  ];
  @override
  final String wireName = 'Gadd_vaccinationData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gadd_vaccinationData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'postVaccine',
      serializers.serialize(object.postVaccine,
          specifiedType: const FullType(Gadd_vaccinationData_postVaccine)),
    ];

    return result;
  }

  @override
  Gadd_vaccinationData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gadd_vaccinationDataBuilder();

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
        case 'postVaccine':
          result.postVaccine.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(Gadd_vaccinationData_postVaccine))!
              as Gadd_vaccinationData_postVaccine);
          break;
      }
    }

    return result.build();
  }
}

class _$Gadd_vaccinationData_postVaccineSerializer
    implements StructuredSerializer<Gadd_vaccinationData_postVaccine> {
  @override
  final Iterable<Type> types = const [
    Gadd_vaccinationData_postVaccine,
    _$Gadd_vaccinationData_postVaccine
  ];
  @override
  final String wireName = 'Gadd_vaccinationData_postVaccine';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gadd_vaccinationData_postVaccine object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'vaccines',
      serializers.serialize(object.vaccines,
          specifiedType: const FullType(BuiltList, const [
            const FullType(Gadd_vaccinationData_postVaccine_vaccines)
          ])),
    ];

    return result;
  }

  @override
  Gadd_vaccinationData_postVaccine deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gadd_vaccinationData_postVaccineBuilder();

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
        case 'vaccines':
          result.vaccines.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(Gadd_vaccinationData_postVaccine_vaccines)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gadd_vaccinationData_postVaccine_vaccinesSerializer
    implements StructuredSerializer<Gadd_vaccinationData_postVaccine_vaccines> {
  @override
  final Iterable<Type> types = const [
    Gadd_vaccinationData_postVaccine_vaccines,
    _$Gadd_vaccinationData_postVaccine_vaccines
  ];
  @override
  final String wireName = 'Gadd_vaccinationData_postVaccine_vaccines';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gadd_vaccinationData_postVaccine_vaccines object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'vaccineId',
      serializers.serialize(object.vaccineId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gadd_vaccinationData_postVaccine_vaccines deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gadd_vaccinationData_postVaccine_vaccinesBuilder();

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
        case 'vaccineId':
          result.vaccineId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gadd_vaccinationData extends Gadd_vaccinationData {
  @override
  final String G__typename;
  @override
  final Gadd_vaccinationData_postVaccine postVaccine;

  factory _$Gadd_vaccinationData(
          [void Function(Gadd_vaccinationDataBuilder)? updates]) =>
      (new Gadd_vaccinationDataBuilder()..update(updates))._build();

  _$Gadd_vaccinationData._(
      {required this.G__typename, required this.postVaccine})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gadd_vaccinationData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        postVaccine, r'Gadd_vaccinationData', 'postVaccine');
  }

  @override
  Gadd_vaccinationData rebuild(
          void Function(Gadd_vaccinationDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gadd_vaccinationDataBuilder toBuilder() =>
      new Gadd_vaccinationDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gadd_vaccinationData &&
        G__typename == other.G__typename &&
        postVaccine == other.postVaccine;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, postVaccine.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gadd_vaccinationData')
          ..add('G__typename', G__typename)
          ..add('postVaccine', postVaccine))
        .toString();
  }
}

class Gadd_vaccinationDataBuilder
    implements Builder<Gadd_vaccinationData, Gadd_vaccinationDataBuilder> {
  _$Gadd_vaccinationData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gadd_vaccinationData_postVaccineBuilder? _postVaccine;
  Gadd_vaccinationData_postVaccineBuilder get postVaccine =>
      _$this._postVaccine ??= new Gadd_vaccinationData_postVaccineBuilder();
  set postVaccine(Gadd_vaccinationData_postVaccineBuilder? postVaccine) =>
      _$this._postVaccine = postVaccine;

  Gadd_vaccinationDataBuilder() {
    Gadd_vaccinationData._initializeBuilder(this);
  }

  Gadd_vaccinationDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _postVaccine = $v.postVaccine.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gadd_vaccinationData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gadd_vaccinationData;
  }

  @override
  void update(void Function(Gadd_vaccinationDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gadd_vaccinationData build() => _build();

  _$Gadd_vaccinationData _build() {
    _$Gadd_vaccinationData _$result;
    try {
      _$result = _$v ??
          new _$Gadd_vaccinationData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gadd_vaccinationData', 'G__typename'),
              postVaccine: postVaccine.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'postVaccine';
        postVaccine.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gadd_vaccinationData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gadd_vaccinationData_postVaccine
    extends Gadd_vaccinationData_postVaccine {
  @override
  final String G__typename;
  @override
  final BuiltList<Gadd_vaccinationData_postVaccine_vaccines> vaccines;

  factory _$Gadd_vaccinationData_postVaccine(
          [void Function(Gadd_vaccinationData_postVaccineBuilder)? updates]) =>
      (new Gadd_vaccinationData_postVaccineBuilder()..update(updates))._build();

  _$Gadd_vaccinationData_postVaccine._(
      {required this.G__typename, required this.vaccines})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gadd_vaccinationData_postVaccine', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        vaccines, r'Gadd_vaccinationData_postVaccine', 'vaccines');
  }

  @override
  Gadd_vaccinationData_postVaccine rebuild(
          void Function(Gadd_vaccinationData_postVaccineBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gadd_vaccinationData_postVaccineBuilder toBuilder() =>
      new Gadd_vaccinationData_postVaccineBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gadd_vaccinationData_postVaccine &&
        G__typename == other.G__typename &&
        vaccines == other.vaccines;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, vaccines.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gadd_vaccinationData_postVaccine')
          ..add('G__typename', G__typename)
          ..add('vaccines', vaccines))
        .toString();
  }
}

class Gadd_vaccinationData_postVaccineBuilder
    implements
        Builder<Gadd_vaccinationData_postVaccine,
            Gadd_vaccinationData_postVaccineBuilder> {
  _$Gadd_vaccinationData_postVaccine? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<Gadd_vaccinationData_postVaccine_vaccines>? _vaccines;
  ListBuilder<Gadd_vaccinationData_postVaccine_vaccines> get vaccines =>
      _$this._vaccines ??=
          new ListBuilder<Gadd_vaccinationData_postVaccine_vaccines>();
  set vaccines(
          ListBuilder<Gadd_vaccinationData_postVaccine_vaccines>? vaccines) =>
      _$this._vaccines = vaccines;

  Gadd_vaccinationData_postVaccineBuilder() {
    Gadd_vaccinationData_postVaccine._initializeBuilder(this);
  }

  Gadd_vaccinationData_postVaccineBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _vaccines = $v.vaccines.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gadd_vaccinationData_postVaccine other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gadd_vaccinationData_postVaccine;
  }

  @override
  void update(void Function(Gadd_vaccinationData_postVaccineBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gadd_vaccinationData_postVaccine build() => _build();

  _$Gadd_vaccinationData_postVaccine _build() {
    _$Gadd_vaccinationData_postVaccine _$result;
    try {
      _$result = _$v ??
          new _$Gadd_vaccinationData_postVaccine._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gadd_vaccinationData_postVaccine', 'G__typename'),
              vaccines: vaccines.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vaccines';
        vaccines.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gadd_vaccinationData_postVaccine', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gadd_vaccinationData_postVaccine_vaccines
    extends Gadd_vaccinationData_postVaccine_vaccines {
  @override
  final String G__typename;
  @override
  final String vaccineId;

  factory _$Gadd_vaccinationData_postVaccine_vaccines(
          [void Function(Gadd_vaccinationData_postVaccine_vaccinesBuilder)?
              updates]) =>
      (new Gadd_vaccinationData_postVaccine_vaccinesBuilder()..update(updates))
          ._build();

  _$Gadd_vaccinationData_postVaccine_vaccines._(
      {required this.G__typename, required this.vaccineId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gadd_vaccinationData_postVaccine_vaccines', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        vaccineId, r'Gadd_vaccinationData_postVaccine_vaccines', 'vaccineId');
  }

  @override
  Gadd_vaccinationData_postVaccine_vaccines rebuild(
          void Function(Gadd_vaccinationData_postVaccine_vaccinesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gadd_vaccinationData_postVaccine_vaccinesBuilder toBuilder() =>
      new Gadd_vaccinationData_postVaccine_vaccinesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gadd_vaccinationData_postVaccine_vaccines &&
        G__typename == other.G__typename &&
        vaccineId == other.vaccineId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, vaccineId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gadd_vaccinationData_postVaccine_vaccines')
          ..add('G__typename', G__typename)
          ..add('vaccineId', vaccineId))
        .toString();
  }
}

class Gadd_vaccinationData_postVaccine_vaccinesBuilder
    implements
        Builder<Gadd_vaccinationData_postVaccine_vaccines,
            Gadd_vaccinationData_postVaccine_vaccinesBuilder> {
  _$Gadd_vaccinationData_postVaccine_vaccines? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _vaccineId;
  String? get vaccineId => _$this._vaccineId;
  set vaccineId(String? vaccineId) => _$this._vaccineId = vaccineId;

  Gadd_vaccinationData_postVaccine_vaccinesBuilder() {
    Gadd_vaccinationData_postVaccine_vaccines._initializeBuilder(this);
  }

  Gadd_vaccinationData_postVaccine_vaccinesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _vaccineId = $v.vaccineId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gadd_vaccinationData_postVaccine_vaccines other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gadd_vaccinationData_postVaccine_vaccines;
  }

  @override
  void update(
      void Function(Gadd_vaccinationData_postVaccine_vaccinesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gadd_vaccinationData_postVaccine_vaccines build() => _build();

  _$Gadd_vaccinationData_postVaccine_vaccines _build() {
    final _$result = _$v ??
        new _$Gadd_vaccinationData_postVaccine_vaccines._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gadd_vaccinationData_postVaccine_vaccines', 'G__typename'),
            vaccineId: BuiltValueNullFieldError.checkNotNull(vaccineId,
                r'Gadd_vaccinationData_postVaccine_vaccines', 'vaccineId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
