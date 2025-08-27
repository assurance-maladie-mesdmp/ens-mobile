// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_vaccination_delete_vaccination.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gdelete_vaccinationData> _$gdeleteVaccinationDataSerializer =
    new _$Gdelete_vaccinationDataSerializer();
Serializer<Gdelete_vaccinationData_deleteVaccine>
    _$gdeleteVaccinationDataDeleteVaccineSerializer =
    new _$Gdelete_vaccinationData_deleteVaccineSerializer();
Serializer<Gdelete_vaccinationData_deleteVaccine_vaccines>
    _$gdeleteVaccinationDataDeleteVaccineVaccinesSerializer =
    new _$Gdelete_vaccinationData_deleteVaccine_vaccinesSerializer();

class _$Gdelete_vaccinationDataSerializer
    implements StructuredSerializer<Gdelete_vaccinationData> {
  @override
  final Iterable<Type> types = const [
    Gdelete_vaccinationData,
    _$Gdelete_vaccinationData
  ];
  @override
  final String wireName = 'Gdelete_vaccinationData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gdelete_vaccinationData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'deleteVaccine',
      serializers.serialize(object.deleteVaccine,
          specifiedType: const FullType(Gdelete_vaccinationData_deleteVaccine)),
    ];

    return result;
  }

  @override
  Gdelete_vaccinationData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_vaccinationDataBuilder();

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
        case 'deleteVaccine':
          result.deleteVaccine.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(Gdelete_vaccinationData_deleteVaccine))!
              as Gdelete_vaccinationData_deleteVaccine);
          break;
      }
    }

    return result.build();
  }
}

class _$Gdelete_vaccinationData_deleteVaccineSerializer
    implements StructuredSerializer<Gdelete_vaccinationData_deleteVaccine> {
  @override
  final Iterable<Type> types = const [
    Gdelete_vaccinationData_deleteVaccine,
    _$Gdelete_vaccinationData_deleteVaccine
  ];
  @override
  final String wireName = 'Gdelete_vaccinationData_deleteVaccine';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gdelete_vaccinationData_deleteVaccine object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'vaccines',
      serializers.serialize(object.vaccines,
          specifiedType: const FullType(BuiltList, const [
            const FullType(Gdelete_vaccinationData_deleteVaccine_vaccines)
          ])),
    ];

    return result;
  }

  @override
  Gdelete_vaccinationData_deleteVaccine deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_vaccinationData_deleteVaccineBuilder();

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
                const FullType(Gdelete_vaccinationData_deleteVaccine_vaccines)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gdelete_vaccinationData_deleteVaccine_vaccinesSerializer
    implements
        StructuredSerializer<Gdelete_vaccinationData_deleteVaccine_vaccines> {
  @override
  final Iterable<Type> types = const [
    Gdelete_vaccinationData_deleteVaccine_vaccines,
    _$Gdelete_vaccinationData_deleteVaccine_vaccines
  ];
  @override
  final String wireName = 'Gdelete_vaccinationData_deleteVaccine_vaccines';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gdelete_vaccinationData_deleteVaccine_vaccines object,
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
  Gdelete_vaccinationData_deleteVaccine_vaccines deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_vaccinationData_deleteVaccine_vaccinesBuilder();

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

class _$Gdelete_vaccinationData extends Gdelete_vaccinationData {
  @override
  final String G__typename;
  @override
  final Gdelete_vaccinationData_deleteVaccine deleteVaccine;

  factory _$Gdelete_vaccinationData(
          [void Function(Gdelete_vaccinationDataBuilder)? updates]) =>
      (new Gdelete_vaccinationDataBuilder()..update(updates))._build();

  _$Gdelete_vaccinationData._(
      {required this.G__typename, required this.deleteVaccine})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gdelete_vaccinationData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        deleteVaccine, r'Gdelete_vaccinationData', 'deleteVaccine');
  }

  @override
  Gdelete_vaccinationData rebuild(
          void Function(Gdelete_vaccinationDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_vaccinationDataBuilder toBuilder() =>
      new Gdelete_vaccinationDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_vaccinationData &&
        G__typename == other.G__typename &&
        deleteVaccine == other.deleteVaccine;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, deleteVaccine.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gdelete_vaccinationData')
          ..add('G__typename', G__typename)
          ..add('deleteVaccine', deleteVaccine))
        .toString();
  }
}

class Gdelete_vaccinationDataBuilder
    implements
        Builder<Gdelete_vaccinationData, Gdelete_vaccinationDataBuilder> {
  _$Gdelete_vaccinationData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gdelete_vaccinationData_deleteVaccineBuilder? _deleteVaccine;
  Gdelete_vaccinationData_deleteVaccineBuilder get deleteVaccine =>
      _$this._deleteVaccine ??=
          new Gdelete_vaccinationData_deleteVaccineBuilder();
  set deleteVaccine(
          Gdelete_vaccinationData_deleteVaccineBuilder? deleteVaccine) =>
      _$this._deleteVaccine = deleteVaccine;

  Gdelete_vaccinationDataBuilder() {
    Gdelete_vaccinationData._initializeBuilder(this);
  }

  Gdelete_vaccinationDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _deleteVaccine = $v.deleteVaccine.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_vaccinationData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_vaccinationData;
  }

  @override
  void update(void Function(Gdelete_vaccinationDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_vaccinationData build() => _build();

  _$Gdelete_vaccinationData _build() {
    _$Gdelete_vaccinationData _$result;
    try {
      _$result = _$v ??
          new _$Gdelete_vaccinationData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gdelete_vaccinationData', 'G__typename'),
              deleteVaccine: deleteVaccine.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deleteVaccine';
        deleteVaccine.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gdelete_vaccinationData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gdelete_vaccinationData_deleteVaccine
    extends Gdelete_vaccinationData_deleteVaccine {
  @override
  final String G__typename;
  @override
  final BuiltList<Gdelete_vaccinationData_deleteVaccine_vaccines> vaccines;

  factory _$Gdelete_vaccinationData_deleteVaccine(
          [void Function(Gdelete_vaccinationData_deleteVaccineBuilder)?
              updates]) =>
      (new Gdelete_vaccinationData_deleteVaccineBuilder()..update(updates))
          ._build();

  _$Gdelete_vaccinationData_deleteVaccine._(
      {required this.G__typename, required this.vaccines})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gdelete_vaccinationData_deleteVaccine', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        vaccines, r'Gdelete_vaccinationData_deleteVaccine', 'vaccines');
  }

  @override
  Gdelete_vaccinationData_deleteVaccine rebuild(
          void Function(Gdelete_vaccinationData_deleteVaccineBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_vaccinationData_deleteVaccineBuilder toBuilder() =>
      new Gdelete_vaccinationData_deleteVaccineBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_vaccinationData_deleteVaccine &&
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
    return (newBuiltValueToStringHelper(
            r'Gdelete_vaccinationData_deleteVaccine')
          ..add('G__typename', G__typename)
          ..add('vaccines', vaccines))
        .toString();
  }
}

class Gdelete_vaccinationData_deleteVaccineBuilder
    implements
        Builder<Gdelete_vaccinationData_deleteVaccine,
            Gdelete_vaccinationData_deleteVaccineBuilder> {
  _$Gdelete_vaccinationData_deleteVaccine? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<Gdelete_vaccinationData_deleteVaccine_vaccines>? _vaccines;
  ListBuilder<Gdelete_vaccinationData_deleteVaccine_vaccines> get vaccines =>
      _$this._vaccines ??=
          new ListBuilder<Gdelete_vaccinationData_deleteVaccine_vaccines>();
  set vaccines(
          ListBuilder<Gdelete_vaccinationData_deleteVaccine_vaccines>?
              vaccines) =>
      _$this._vaccines = vaccines;

  Gdelete_vaccinationData_deleteVaccineBuilder() {
    Gdelete_vaccinationData_deleteVaccine._initializeBuilder(this);
  }

  Gdelete_vaccinationData_deleteVaccineBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _vaccines = $v.vaccines.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_vaccinationData_deleteVaccine other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_vaccinationData_deleteVaccine;
  }

  @override
  void update(
      void Function(Gdelete_vaccinationData_deleteVaccineBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_vaccinationData_deleteVaccine build() => _build();

  _$Gdelete_vaccinationData_deleteVaccine _build() {
    _$Gdelete_vaccinationData_deleteVaccine _$result;
    try {
      _$result = _$v ??
          new _$Gdelete_vaccinationData_deleteVaccine._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gdelete_vaccinationData_deleteVaccine', 'G__typename'),
              vaccines: vaccines.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vaccines';
        vaccines.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gdelete_vaccinationData_deleteVaccine',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gdelete_vaccinationData_deleteVaccine_vaccines
    extends Gdelete_vaccinationData_deleteVaccine_vaccines {
  @override
  final String G__typename;
  @override
  final String vaccineId;

  factory _$Gdelete_vaccinationData_deleteVaccine_vaccines(
          [void Function(Gdelete_vaccinationData_deleteVaccine_vaccinesBuilder)?
              updates]) =>
      (new Gdelete_vaccinationData_deleteVaccine_vaccinesBuilder()
            ..update(updates))
          ._build();

  _$Gdelete_vaccinationData_deleteVaccine_vaccines._(
      {required this.G__typename, required this.vaccineId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gdelete_vaccinationData_deleteVaccine_vaccines', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(vaccineId,
        r'Gdelete_vaccinationData_deleteVaccine_vaccines', 'vaccineId');
  }

  @override
  Gdelete_vaccinationData_deleteVaccine_vaccines rebuild(
          void Function(Gdelete_vaccinationData_deleteVaccine_vaccinesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_vaccinationData_deleteVaccine_vaccinesBuilder toBuilder() =>
      new Gdelete_vaccinationData_deleteVaccine_vaccinesBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_vaccinationData_deleteVaccine_vaccines &&
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
            r'Gdelete_vaccinationData_deleteVaccine_vaccines')
          ..add('G__typename', G__typename)
          ..add('vaccineId', vaccineId))
        .toString();
  }
}

class Gdelete_vaccinationData_deleteVaccine_vaccinesBuilder
    implements
        Builder<Gdelete_vaccinationData_deleteVaccine_vaccines,
            Gdelete_vaccinationData_deleteVaccine_vaccinesBuilder> {
  _$Gdelete_vaccinationData_deleteVaccine_vaccines? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _vaccineId;
  String? get vaccineId => _$this._vaccineId;
  set vaccineId(String? vaccineId) => _$this._vaccineId = vaccineId;

  Gdelete_vaccinationData_deleteVaccine_vaccinesBuilder() {
    Gdelete_vaccinationData_deleteVaccine_vaccines._initializeBuilder(this);
  }

  Gdelete_vaccinationData_deleteVaccine_vaccinesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _vaccineId = $v.vaccineId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_vaccinationData_deleteVaccine_vaccines other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_vaccinationData_deleteVaccine_vaccines;
  }

  @override
  void update(
      void Function(Gdelete_vaccinationData_deleteVaccine_vaccinesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_vaccinationData_deleteVaccine_vaccines build() => _build();

  _$Gdelete_vaccinationData_deleteVaccine_vaccines _build() {
    final _$result = _$v ??
        new _$Gdelete_vaccinationData_deleteVaccine_vaccines._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gdelete_vaccinationData_deleteVaccine_vaccines',
                'G__typename'),
            vaccineId: BuiltValueNullFieldError.checkNotNull(
                vaccineId,
                r'Gdelete_vaccinationData_deleteVaccine_vaccines',
                'vaccineId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
