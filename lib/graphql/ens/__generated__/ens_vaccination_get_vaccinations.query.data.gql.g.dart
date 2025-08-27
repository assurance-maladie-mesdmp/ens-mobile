// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_vaccination_get_vaccinations.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_vaccinationsData> _$ggetVaccinationsDataSerializer =
    new _$Gget_vaccinationsDataSerializer();
Serializer<Gget_vaccinationsData_vaccines>
    _$ggetVaccinationsDataVaccinesSerializer =
    new _$Gget_vaccinationsData_vaccinesSerializer();
Serializer<Gget_vaccinationsData_vaccines_vaccines>
    _$ggetVaccinationsDataVaccinesVaccinesSerializer =
    new _$Gget_vaccinationsData_vaccines_vaccinesSerializer();

class _$Gget_vaccinationsDataSerializer
    implements StructuredSerializer<Gget_vaccinationsData> {
  @override
  final Iterable<Type> types = const [
    Gget_vaccinationsData,
    _$Gget_vaccinationsData
  ];
  @override
  final String wireName = 'Gget_vaccinationsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_vaccinationsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'vaccines',
      serializers.serialize(object.vaccines,
          specifiedType: const FullType(Gget_vaccinationsData_vaccines)),
    ];

    return result;
  }

  @override
  Gget_vaccinationsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_vaccinationsDataBuilder();

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
                  specifiedType:
                      const FullType(Gget_vaccinationsData_vaccines))!
              as Gget_vaccinationsData_vaccines);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_vaccinationsData_vaccinesSerializer
    implements StructuredSerializer<Gget_vaccinationsData_vaccines> {
  @override
  final Iterable<Type> types = const [
    Gget_vaccinationsData_vaccines,
    _$Gget_vaccinationsData_vaccines
  ];
  @override
  final String wireName = 'Gget_vaccinationsData_vaccines';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_vaccinationsData_vaccines object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'vaccines',
      serializers.serialize(object.vaccines,
          specifiedType: const FullType(BuiltList,
              const [const FullType(Gget_vaccinationsData_vaccines_vaccines)])),
    ];

    return result;
  }

  @override
  Gget_vaccinationsData_vaccines deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_vaccinationsData_vaccinesBuilder();

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
                const FullType(Gget_vaccinationsData_vaccines_vaccines)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_vaccinationsData_vaccines_vaccinesSerializer
    implements StructuredSerializer<Gget_vaccinationsData_vaccines_vaccines> {
  @override
  final Iterable<Type> types = const [
    Gget_vaccinationsData_vaccines_vaccines,
    _$Gget_vaccinationsData_vaccines_vaccines
  ];
  @override
  final String wireName = 'Gget_vaccinationsData_vaccines_vaccines';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_vaccinationsData_vaccines_vaccines object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'vaccineId',
      serializers.serialize(object.vaccineId,
          specifiedType: const FullType(String)),
      'effectiveTime',
      serializers.serialize(object.effectiveTime,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'typeOfAdministration',
      serializers.serialize(object.typeOfAdministration,
          specifiedType: const FullType(_i2.GVaccineTypeOfAdministrationEnum)),
      'author',
      serializers.serialize(object.author,
          specifiedType: const FullType(String)),
      'pathologies',
      serializers.serialize(object.pathologies,
          specifiedType: const FullType(String)),
      'authoredByPatient',
      serializers.serialize(object.authoredByPatient,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.lotNumber;
    if (value != null) {
      result
        ..add('lotNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.performer;
    if (value != null) {
      result
        ..add('performer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.comment;
    if (value != null) {
      result
        ..add('comment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mandatory;
    if (value != null) {
      result
        ..add('mandatory')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.vaccineRefId;
    if (value != null) {
      result
        ..add('vaccineRefId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Gget_vaccinationsData_vaccines_vaccines deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_vaccinationsData_vaccines_vaccinesBuilder();

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
        case 'effectiveTime':
          result.effectiveTime = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'lotNumber':
          result.lotNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'typeOfAdministration':
          result.typeOfAdministration = serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i2.GVaccineTypeOfAdministrationEnum))!
              as _i2.GVaccineTypeOfAdministrationEnum;
          break;
        case 'performer':
          result.performer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'author':
          result.author = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'comment':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'pathologies':
          result.pathologies = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'mandatory':
          result.mandatory = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'authoredByPatient':
          result.authoredByPatient = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'vaccineRefId':
          result.vaccineRefId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_vaccinationsData extends Gget_vaccinationsData {
  @override
  final String G__typename;
  @override
  final Gget_vaccinationsData_vaccines vaccines;

  factory _$Gget_vaccinationsData(
          [void Function(Gget_vaccinationsDataBuilder)? updates]) =>
      (new Gget_vaccinationsDataBuilder()..update(updates))._build();

  _$Gget_vaccinationsData._({required this.G__typename, required this.vaccines})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_vaccinationsData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        vaccines, r'Gget_vaccinationsData', 'vaccines');
  }

  @override
  Gget_vaccinationsData rebuild(
          void Function(Gget_vaccinationsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_vaccinationsDataBuilder toBuilder() =>
      new Gget_vaccinationsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_vaccinationsData &&
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
    return (newBuiltValueToStringHelper(r'Gget_vaccinationsData')
          ..add('G__typename', G__typename)
          ..add('vaccines', vaccines))
        .toString();
  }
}

class Gget_vaccinationsDataBuilder
    implements Builder<Gget_vaccinationsData, Gget_vaccinationsDataBuilder> {
  _$Gget_vaccinationsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_vaccinationsData_vaccinesBuilder? _vaccines;
  Gget_vaccinationsData_vaccinesBuilder get vaccines =>
      _$this._vaccines ??= new Gget_vaccinationsData_vaccinesBuilder();
  set vaccines(Gget_vaccinationsData_vaccinesBuilder? vaccines) =>
      _$this._vaccines = vaccines;

  Gget_vaccinationsDataBuilder() {
    Gget_vaccinationsData._initializeBuilder(this);
  }

  Gget_vaccinationsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _vaccines = $v.vaccines.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_vaccinationsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_vaccinationsData;
  }

  @override
  void update(void Function(Gget_vaccinationsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_vaccinationsData build() => _build();

  _$Gget_vaccinationsData _build() {
    _$Gget_vaccinationsData _$result;
    try {
      _$result = _$v ??
          new _$Gget_vaccinationsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gget_vaccinationsData', 'G__typename'),
              vaccines: vaccines.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vaccines';
        vaccines.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_vaccinationsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_vaccinationsData_vaccines extends Gget_vaccinationsData_vaccines {
  @override
  final String G__typename;
  @override
  final BuiltList<Gget_vaccinationsData_vaccines_vaccines> vaccines;

  factory _$Gget_vaccinationsData_vaccines(
          [void Function(Gget_vaccinationsData_vaccinesBuilder)? updates]) =>
      (new Gget_vaccinationsData_vaccinesBuilder()..update(updates))._build();

  _$Gget_vaccinationsData_vaccines._(
      {required this.G__typename, required this.vaccines})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_vaccinationsData_vaccines', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        vaccines, r'Gget_vaccinationsData_vaccines', 'vaccines');
  }

  @override
  Gget_vaccinationsData_vaccines rebuild(
          void Function(Gget_vaccinationsData_vaccinesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_vaccinationsData_vaccinesBuilder toBuilder() =>
      new Gget_vaccinationsData_vaccinesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_vaccinationsData_vaccines &&
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
    return (newBuiltValueToStringHelper(r'Gget_vaccinationsData_vaccines')
          ..add('G__typename', G__typename)
          ..add('vaccines', vaccines))
        .toString();
  }
}

class Gget_vaccinationsData_vaccinesBuilder
    implements
        Builder<Gget_vaccinationsData_vaccines,
            Gget_vaccinationsData_vaccinesBuilder> {
  _$Gget_vaccinationsData_vaccines? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<Gget_vaccinationsData_vaccines_vaccines>? _vaccines;
  ListBuilder<Gget_vaccinationsData_vaccines_vaccines> get vaccines =>
      _$this._vaccines ??=
          new ListBuilder<Gget_vaccinationsData_vaccines_vaccines>();
  set vaccines(
          ListBuilder<Gget_vaccinationsData_vaccines_vaccines>? vaccines) =>
      _$this._vaccines = vaccines;

  Gget_vaccinationsData_vaccinesBuilder() {
    Gget_vaccinationsData_vaccines._initializeBuilder(this);
  }

  Gget_vaccinationsData_vaccinesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _vaccines = $v.vaccines.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_vaccinationsData_vaccines other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_vaccinationsData_vaccines;
  }

  @override
  void update(void Function(Gget_vaccinationsData_vaccinesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_vaccinationsData_vaccines build() => _build();

  _$Gget_vaccinationsData_vaccines _build() {
    _$Gget_vaccinationsData_vaccines _$result;
    try {
      _$result = _$v ??
          new _$Gget_vaccinationsData_vaccines._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gget_vaccinationsData_vaccines', 'G__typename'),
              vaccines: vaccines.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vaccines';
        vaccines.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_vaccinationsData_vaccines', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_vaccinationsData_vaccines_vaccines
    extends Gget_vaccinationsData_vaccines_vaccines {
  @override
  final String G__typename;
  @override
  final String vaccineId;
  @override
  final String effectiveTime;
  @override
  final String name;
  @override
  final String? lotNumber;
  @override
  final _i2.GVaccineTypeOfAdministrationEnum typeOfAdministration;
  @override
  final String? performer;
  @override
  final String author;
  @override
  final String? comment;
  @override
  final String pathologies;
  @override
  final bool? mandatory;
  @override
  final bool authoredByPatient;
  @override
  final String? vaccineRefId;

  factory _$Gget_vaccinationsData_vaccines_vaccines(
          [void Function(Gget_vaccinationsData_vaccines_vaccinesBuilder)?
              updates]) =>
      (new Gget_vaccinationsData_vaccines_vaccinesBuilder()..update(updates))
          ._build();

  _$Gget_vaccinationsData_vaccines_vaccines._(
      {required this.G__typename,
      required this.vaccineId,
      required this.effectiveTime,
      required this.name,
      this.lotNumber,
      required this.typeOfAdministration,
      this.performer,
      required this.author,
      this.comment,
      required this.pathologies,
      this.mandatory,
      required this.authoredByPatient,
      this.vaccineRefId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_vaccinationsData_vaccines_vaccines', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        vaccineId, r'Gget_vaccinationsData_vaccines_vaccines', 'vaccineId');
    BuiltValueNullFieldError.checkNotNull(effectiveTime,
        r'Gget_vaccinationsData_vaccines_vaccines', 'effectiveTime');
    BuiltValueNullFieldError.checkNotNull(
        name, r'Gget_vaccinationsData_vaccines_vaccines', 'name');
    BuiltValueNullFieldError.checkNotNull(typeOfAdministration,
        r'Gget_vaccinationsData_vaccines_vaccines', 'typeOfAdministration');
    BuiltValueNullFieldError.checkNotNull(
        author, r'Gget_vaccinationsData_vaccines_vaccines', 'author');
    BuiltValueNullFieldError.checkNotNull(
        pathologies, r'Gget_vaccinationsData_vaccines_vaccines', 'pathologies');
    BuiltValueNullFieldError.checkNotNull(authoredByPatient,
        r'Gget_vaccinationsData_vaccines_vaccines', 'authoredByPatient');
  }

  @override
  Gget_vaccinationsData_vaccines_vaccines rebuild(
          void Function(Gget_vaccinationsData_vaccines_vaccinesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_vaccinationsData_vaccines_vaccinesBuilder toBuilder() =>
      new Gget_vaccinationsData_vaccines_vaccinesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_vaccinationsData_vaccines_vaccines &&
        G__typename == other.G__typename &&
        vaccineId == other.vaccineId &&
        effectiveTime == other.effectiveTime &&
        name == other.name &&
        lotNumber == other.lotNumber &&
        typeOfAdministration == other.typeOfAdministration &&
        performer == other.performer &&
        author == other.author &&
        comment == other.comment &&
        pathologies == other.pathologies &&
        mandatory == other.mandatory &&
        authoredByPatient == other.authoredByPatient &&
        vaccineRefId == other.vaccineRefId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, vaccineId.hashCode);
    _$hash = $jc(_$hash, effectiveTime.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, lotNumber.hashCode);
    _$hash = $jc(_$hash, typeOfAdministration.hashCode);
    _$hash = $jc(_$hash, performer.hashCode);
    _$hash = $jc(_$hash, author.hashCode);
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jc(_$hash, pathologies.hashCode);
    _$hash = $jc(_$hash, mandatory.hashCode);
    _$hash = $jc(_$hash, authoredByPatient.hashCode);
    _$hash = $jc(_$hash, vaccineRefId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_vaccinationsData_vaccines_vaccines')
          ..add('G__typename', G__typename)
          ..add('vaccineId', vaccineId)
          ..add('effectiveTime', effectiveTime)
          ..add('name', name)
          ..add('lotNumber', lotNumber)
          ..add('typeOfAdministration', typeOfAdministration)
          ..add('performer', performer)
          ..add('author', author)
          ..add('comment', comment)
          ..add('pathologies', pathologies)
          ..add('mandatory', mandatory)
          ..add('authoredByPatient', authoredByPatient)
          ..add('vaccineRefId', vaccineRefId))
        .toString();
  }
}

class Gget_vaccinationsData_vaccines_vaccinesBuilder
    implements
        Builder<Gget_vaccinationsData_vaccines_vaccines,
            Gget_vaccinationsData_vaccines_vaccinesBuilder> {
  _$Gget_vaccinationsData_vaccines_vaccines? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _vaccineId;
  String? get vaccineId => _$this._vaccineId;
  set vaccineId(String? vaccineId) => _$this._vaccineId = vaccineId;

  String? _effectiveTime;
  String? get effectiveTime => _$this._effectiveTime;
  set effectiveTime(String? effectiveTime) =>
      _$this._effectiveTime = effectiveTime;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _lotNumber;
  String? get lotNumber => _$this._lotNumber;
  set lotNumber(String? lotNumber) => _$this._lotNumber = lotNumber;

  _i2.GVaccineTypeOfAdministrationEnum? _typeOfAdministration;
  _i2.GVaccineTypeOfAdministrationEnum? get typeOfAdministration =>
      _$this._typeOfAdministration;
  set typeOfAdministration(
          _i2.GVaccineTypeOfAdministrationEnum? typeOfAdministration) =>
      _$this._typeOfAdministration = typeOfAdministration;

  String? _performer;
  String? get performer => _$this._performer;
  set performer(String? performer) => _$this._performer = performer;

  String? _author;
  String? get author => _$this._author;
  set author(String? author) => _$this._author = author;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  String? _pathologies;
  String? get pathologies => _$this._pathologies;
  set pathologies(String? pathologies) => _$this._pathologies = pathologies;

  bool? _mandatory;
  bool? get mandatory => _$this._mandatory;
  set mandatory(bool? mandatory) => _$this._mandatory = mandatory;

  bool? _authoredByPatient;
  bool? get authoredByPatient => _$this._authoredByPatient;
  set authoredByPatient(bool? authoredByPatient) =>
      _$this._authoredByPatient = authoredByPatient;

  String? _vaccineRefId;
  String? get vaccineRefId => _$this._vaccineRefId;
  set vaccineRefId(String? vaccineRefId) => _$this._vaccineRefId = vaccineRefId;

  Gget_vaccinationsData_vaccines_vaccinesBuilder() {
    Gget_vaccinationsData_vaccines_vaccines._initializeBuilder(this);
  }

  Gget_vaccinationsData_vaccines_vaccinesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _vaccineId = $v.vaccineId;
      _effectiveTime = $v.effectiveTime;
      _name = $v.name;
      _lotNumber = $v.lotNumber;
      _typeOfAdministration = $v.typeOfAdministration;
      _performer = $v.performer;
      _author = $v.author;
      _comment = $v.comment;
      _pathologies = $v.pathologies;
      _mandatory = $v.mandatory;
      _authoredByPatient = $v.authoredByPatient;
      _vaccineRefId = $v.vaccineRefId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_vaccinationsData_vaccines_vaccines other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_vaccinationsData_vaccines_vaccines;
  }

  @override
  void update(
      void Function(Gget_vaccinationsData_vaccines_vaccinesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_vaccinationsData_vaccines_vaccines build() => _build();

  _$Gget_vaccinationsData_vaccines_vaccines _build() {
    final _$result = _$v ??
        new _$Gget_vaccinationsData_vaccines_vaccines._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'Gget_vaccinationsData_vaccines_vaccines', 'G__typename'),
            vaccineId: BuiltValueNullFieldError.checkNotNull(
                vaccineId, r'Gget_vaccinationsData_vaccines_vaccines', 'vaccineId'),
            effectiveTime: BuiltValueNullFieldError.checkNotNull(
                effectiveTime, r'Gget_vaccinationsData_vaccines_vaccines', 'effectiveTime'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'Gget_vaccinationsData_vaccines_vaccines', 'name'),
            lotNumber: lotNumber,
            typeOfAdministration: BuiltValueNullFieldError.checkNotNull(
                typeOfAdministration, r'Gget_vaccinationsData_vaccines_vaccines', 'typeOfAdministration'),
            performer: performer,
            author: BuiltValueNullFieldError.checkNotNull(
                author, r'Gget_vaccinationsData_vaccines_vaccines', 'author'),
            comment: comment,
            pathologies: BuiltValueNullFieldError.checkNotNull(
                pathologies, r'Gget_vaccinationsData_vaccines_vaccines', 'pathologies'),
            mandatory: mandatory,
            authoredByPatient: BuiltValueNullFieldError.checkNotNull(authoredByPatient, r'Gget_vaccinationsData_vaccines_vaccines', 'authoredByPatient'),
            vaccineRefId: vaccineRefId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
