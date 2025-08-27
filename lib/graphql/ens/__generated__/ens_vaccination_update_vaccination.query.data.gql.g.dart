// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_vaccination_update_vaccination.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gupdate_vaccinationData> _$gupdateVaccinationDataSerializer =
    new _$Gupdate_vaccinationDataSerializer();
Serializer<Gupdate_vaccinationData_putVaccine>
    _$gupdateVaccinationDataPutVaccineSerializer =
    new _$Gupdate_vaccinationData_putVaccineSerializer();
Serializer<Gupdate_vaccinationData_putVaccine_vaccines>
    _$gupdateVaccinationDataPutVaccineVaccinesSerializer =
    new _$Gupdate_vaccinationData_putVaccine_vaccinesSerializer();

class _$Gupdate_vaccinationDataSerializer
    implements StructuredSerializer<Gupdate_vaccinationData> {
  @override
  final Iterable<Type> types = const [
    Gupdate_vaccinationData,
    _$Gupdate_vaccinationData
  ];
  @override
  final String wireName = 'Gupdate_vaccinationData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_vaccinationData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'putVaccine',
      serializers.serialize(object.putVaccine,
          specifiedType: const FullType(Gupdate_vaccinationData_putVaccine)),
    ];

    return result;
  }

  @override
  Gupdate_vaccinationData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_vaccinationDataBuilder();

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
        case 'putVaccine':
          result.putVaccine.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(Gupdate_vaccinationData_putVaccine))!
              as Gupdate_vaccinationData_putVaccine);
          break;
      }
    }

    return result.build();
  }
}

class _$Gupdate_vaccinationData_putVaccineSerializer
    implements StructuredSerializer<Gupdate_vaccinationData_putVaccine> {
  @override
  final Iterable<Type> types = const [
    Gupdate_vaccinationData_putVaccine,
    _$Gupdate_vaccinationData_putVaccine
  ];
  @override
  final String wireName = 'Gupdate_vaccinationData_putVaccine';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_vaccinationData_putVaccine object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'vaccines',
      serializers.serialize(object.vaccines,
          specifiedType: const FullType(BuiltList, const [
            const FullType(Gupdate_vaccinationData_putVaccine_vaccines)
          ])),
    ];

    return result;
  }

  @override
  Gupdate_vaccinationData_putVaccine deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_vaccinationData_putVaccineBuilder();

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
                const FullType(Gupdate_vaccinationData_putVaccine_vaccines)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gupdate_vaccinationData_putVaccine_vaccinesSerializer
    implements
        StructuredSerializer<Gupdate_vaccinationData_putVaccine_vaccines> {
  @override
  final Iterable<Type> types = const [
    Gupdate_vaccinationData_putVaccine_vaccines,
    _$Gupdate_vaccinationData_putVaccine_vaccines
  ];
  @override
  final String wireName = 'Gupdate_vaccinationData_putVaccine_vaccines';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gupdate_vaccinationData_putVaccine_vaccines object,
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
  Gupdate_vaccinationData_putVaccine_vaccines deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_vaccinationData_putVaccine_vaccinesBuilder();

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

class _$Gupdate_vaccinationData extends Gupdate_vaccinationData {
  @override
  final String G__typename;
  @override
  final Gupdate_vaccinationData_putVaccine putVaccine;

  factory _$Gupdate_vaccinationData(
          [void Function(Gupdate_vaccinationDataBuilder)? updates]) =>
      (new Gupdate_vaccinationDataBuilder()..update(updates))._build();

  _$Gupdate_vaccinationData._(
      {required this.G__typename, required this.putVaccine})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gupdate_vaccinationData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        putVaccine, r'Gupdate_vaccinationData', 'putVaccine');
  }

  @override
  Gupdate_vaccinationData rebuild(
          void Function(Gupdate_vaccinationDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_vaccinationDataBuilder toBuilder() =>
      new Gupdate_vaccinationDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_vaccinationData &&
        G__typename == other.G__typename &&
        putVaccine == other.putVaccine;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, putVaccine.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gupdate_vaccinationData')
          ..add('G__typename', G__typename)
          ..add('putVaccine', putVaccine))
        .toString();
  }
}

class Gupdate_vaccinationDataBuilder
    implements
        Builder<Gupdate_vaccinationData, Gupdate_vaccinationDataBuilder> {
  _$Gupdate_vaccinationData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gupdate_vaccinationData_putVaccineBuilder? _putVaccine;
  Gupdate_vaccinationData_putVaccineBuilder get putVaccine =>
      _$this._putVaccine ??= new Gupdate_vaccinationData_putVaccineBuilder();
  set putVaccine(Gupdate_vaccinationData_putVaccineBuilder? putVaccine) =>
      _$this._putVaccine = putVaccine;

  Gupdate_vaccinationDataBuilder() {
    Gupdate_vaccinationData._initializeBuilder(this);
  }

  Gupdate_vaccinationDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _putVaccine = $v.putVaccine.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_vaccinationData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_vaccinationData;
  }

  @override
  void update(void Function(Gupdate_vaccinationDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_vaccinationData build() => _build();

  _$Gupdate_vaccinationData _build() {
    _$Gupdate_vaccinationData _$result;
    try {
      _$result = _$v ??
          new _$Gupdate_vaccinationData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gupdate_vaccinationData', 'G__typename'),
              putVaccine: putVaccine.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'putVaccine';
        putVaccine.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gupdate_vaccinationData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gupdate_vaccinationData_putVaccine
    extends Gupdate_vaccinationData_putVaccine {
  @override
  final String G__typename;
  @override
  final BuiltList<Gupdate_vaccinationData_putVaccine_vaccines> vaccines;

  factory _$Gupdate_vaccinationData_putVaccine(
          [void Function(Gupdate_vaccinationData_putVaccineBuilder)?
              updates]) =>
      (new Gupdate_vaccinationData_putVaccineBuilder()..update(updates))
          ._build();

  _$Gupdate_vaccinationData_putVaccine._(
      {required this.G__typename, required this.vaccines})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gupdate_vaccinationData_putVaccine', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        vaccines, r'Gupdate_vaccinationData_putVaccine', 'vaccines');
  }

  @override
  Gupdate_vaccinationData_putVaccine rebuild(
          void Function(Gupdate_vaccinationData_putVaccineBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_vaccinationData_putVaccineBuilder toBuilder() =>
      new Gupdate_vaccinationData_putVaccineBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_vaccinationData_putVaccine &&
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
    return (newBuiltValueToStringHelper(r'Gupdate_vaccinationData_putVaccine')
          ..add('G__typename', G__typename)
          ..add('vaccines', vaccines))
        .toString();
  }
}

class Gupdate_vaccinationData_putVaccineBuilder
    implements
        Builder<Gupdate_vaccinationData_putVaccine,
            Gupdate_vaccinationData_putVaccineBuilder> {
  _$Gupdate_vaccinationData_putVaccine? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<Gupdate_vaccinationData_putVaccine_vaccines>? _vaccines;
  ListBuilder<Gupdate_vaccinationData_putVaccine_vaccines> get vaccines =>
      _$this._vaccines ??=
          new ListBuilder<Gupdate_vaccinationData_putVaccine_vaccines>();
  set vaccines(
          ListBuilder<Gupdate_vaccinationData_putVaccine_vaccines>? vaccines) =>
      _$this._vaccines = vaccines;

  Gupdate_vaccinationData_putVaccineBuilder() {
    Gupdate_vaccinationData_putVaccine._initializeBuilder(this);
  }

  Gupdate_vaccinationData_putVaccineBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _vaccines = $v.vaccines.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_vaccinationData_putVaccine other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_vaccinationData_putVaccine;
  }

  @override
  void update(
      void Function(Gupdate_vaccinationData_putVaccineBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_vaccinationData_putVaccine build() => _build();

  _$Gupdate_vaccinationData_putVaccine _build() {
    _$Gupdate_vaccinationData_putVaccine _$result;
    try {
      _$result = _$v ??
          new _$Gupdate_vaccinationData_putVaccine._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gupdate_vaccinationData_putVaccine', 'G__typename'),
              vaccines: vaccines.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vaccines';
        vaccines.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gupdate_vaccinationData_putVaccine', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gupdate_vaccinationData_putVaccine_vaccines
    extends Gupdate_vaccinationData_putVaccine_vaccines {
  @override
  final String G__typename;
  @override
  final String vaccineId;

  factory _$Gupdate_vaccinationData_putVaccine_vaccines(
          [void Function(Gupdate_vaccinationData_putVaccine_vaccinesBuilder)?
              updates]) =>
      (new Gupdate_vaccinationData_putVaccine_vaccinesBuilder()
            ..update(updates))
          ._build();

  _$Gupdate_vaccinationData_putVaccine_vaccines._(
      {required this.G__typename, required this.vaccineId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gupdate_vaccinationData_putVaccine_vaccines', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        vaccineId, r'Gupdate_vaccinationData_putVaccine_vaccines', 'vaccineId');
  }

  @override
  Gupdate_vaccinationData_putVaccine_vaccines rebuild(
          void Function(Gupdate_vaccinationData_putVaccine_vaccinesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_vaccinationData_putVaccine_vaccinesBuilder toBuilder() =>
      new Gupdate_vaccinationData_putVaccine_vaccinesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_vaccinationData_putVaccine_vaccines &&
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
            r'Gupdate_vaccinationData_putVaccine_vaccines')
          ..add('G__typename', G__typename)
          ..add('vaccineId', vaccineId))
        .toString();
  }
}

class Gupdate_vaccinationData_putVaccine_vaccinesBuilder
    implements
        Builder<Gupdate_vaccinationData_putVaccine_vaccines,
            Gupdate_vaccinationData_putVaccine_vaccinesBuilder> {
  _$Gupdate_vaccinationData_putVaccine_vaccines? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _vaccineId;
  String? get vaccineId => _$this._vaccineId;
  set vaccineId(String? vaccineId) => _$this._vaccineId = vaccineId;

  Gupdate_vaccinationData_putVaccine_vaccinesBuilder() {
    Gupdate_vaccinationData_putVaccine_vaccines._initializeBuilder(this);
  }

  Gupdate_vaccinationData_putVaccine_vaccinesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _vaccineId = $v.vaccineId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_vaccinationData_putVaccine_vaccines other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_vaccinationData_putVaccine_vaccines;
  }

  @override
  void update(
      void Function(Gupdate_vaccinationData_putVaccine_vaccinesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_vaccinationData_putVaccine_vaccines build() => _build();

  _$Gupdate_vaccinationData_putVaccine_vaccines _build() {
    final _$result = _$v ??
        new _$Gupdate_vaccinationData_putVaccine_vaccines._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gupdate_vaccinationData_putVaccine_vaccines', 'G__typename'),
            vaccineId: BuiltValueNullFieldError.checkNotNull(vaccineId,
                r'Gupdate_vaccinationData_putVaccine_vaccines', 'vaccineId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
