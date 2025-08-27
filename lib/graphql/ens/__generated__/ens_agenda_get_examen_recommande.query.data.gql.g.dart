// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_agenda_get_examen_recommande.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_examen_recommandeData> _$ggetExamenRecommandeDataSerializer =
    new _$Gget_examen_recommandeDataSerializer();
Serializer<Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDate>
    _$ggetExamenRecommandeDataFetchPreventionByPatientIdAndCodeAndDateSerializer =
    new _$Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDateSerializer();

class _$Gget_examen_recommandeDataSerializer
    implements StructuredSerializer<Gget_examen_recommandeData> {
  @override
  final Iterable<Type> types = const [
    Gget_examen_recommandeData,
    _$Gget_examen_recommandeData
  ];
  @override
  final String wireName = 'Gget_examen_recommandeData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_examen_recommandeData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.fetchPreventionByPatientIdAndCodeAndDate;
    if (value != null) {
      result
        ..add('fetchPreventionByPatientIdAndCodeAndDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDate)));
    }
    return result;
  }

  @override
  Gget_examen_recommandeData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_examen_recommandeDataBuilder();

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
        case 'fetchPreventionByPatientIdAndCodeAndDate':
          result.fetchPreventionByPatientIdAndCodeAndDate.replace(serializers
                  .deserialize(value,
                      specifiedType: const FullType(
                          Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDate))!
              as Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDate);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDateSerializer
    implements
        StructuredSerializer<
            Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDate> {
  @override
  final Iterable<Type> types = const [
    Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDate,
    _$Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDate
  ];
  @override
  final String wireName =
      'Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDate';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDate
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'dateDebutCampagne',
      serializers.serialize(object.dateDebutCampagne,
          specifiedType: const FullType(String)),
      'dateDebutPrevention',
      serializers.serialize(object.dateDebutPrevention,
          specifiedType: const FullType(String)),
      'dateFinPrevention',
      serializers.serialize(object.dateFinPrevention,
          specifiedType: const FullType(String)),
      'statut',
      serializers.serialize(object.statut,
          specifiedType: const FullType(_i3.GPreventionTypeEnum)),
    ];
    Object? value;
    value = object.dateFinCampagne;
    if (value != null) {
      result
        ..add('dateFinCampagne')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.executionDate;
    if (value != null) {
      result
        ..add('executionDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.requirementLevel;
    if (value != null) {
      result
        ..add('requirementLevel')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDate
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDateBuilder();

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
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'dateDebutCampagne':
          result.dateDebutCampagne = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'dateFinCampagne':
          result.dateFinCampagne = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'dateDebutPrevention':
          result.dateDebutPrevention = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'dateFinPrevention':
          result.dateFinPrevention = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'statut':
          result.statut = serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GPreventionTypeEnum))!
              as _i3.GPreventionTypeEnum;
          break;
        case 'executionDate':
          result.executionDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'requirementLevel':
          result.requirementLevel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_examen_recommandeData extends Gget_examen_recommandeData {
  @override
  final String G__typename;
  @override
  final Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDate?
      fetchPreventionByPatientIdAndCodeAndDate;

  factory _$Gget_examen_recommandeData(
          [void Function(Gget_examen_recommandeDataBuilder)? updates]) =>
      (new Gget_examen_recommandeDataBuilder()..update(updates))._build();

  _$Gget_examen_recommandeData._(
      {required this.G__typename,
      this.fetchPreventionByPatientIdAndCodeAndDate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_examen_recommandeData', 'G__typename');
  }

  @override
  Gget_examen_recommandeData rebuild(
          void Function(Gget_examen_recommandeDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_examen_recommandeDataBuilder toBuilder() =>
      new Gget_examen_recommandeDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_examen_recommandeData &&
        G__typename == other.G__typename &&
        fetchPreventionByPatientIdAndCodeAndDate ==
            other.fetchPreventionByPatientIdAndCodeAndDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, fetchPreventionByPatientIdAndCodeAndDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_examen_recommandeData')
          ..add('G__typename', G__typename)
          ..add('fetchPreventionByPatientIdAndCodeAndDate',
              fetchPreventionByPatientIdAndCodeAndDate))
        .toString();
  }
}

class Gget_examen_recommandeDataBuilder
    implements
        Builder<Gget_examen_recommandeData, Gget_examen_recommandeDataBuilder> {
  _$Gget_examen_recommandeData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDateBuilder?
      _fetchPreventionByPatientIdAndCodeAndDate;
  Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDateBuilder
      get fetchPreventionByPatientIdAndCodeAndDate => _$this
              ._fetchPreventionByPatientIdAndCodeAndDate ??=
          new Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDateBuilder();
  set fetchPreventionByPatientIdAndCodeAndDate(
          Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDateBuilder?
              fetchPreventionByPatientIdAndCodeAndDate) =>
      _$this._fetchPreventionByPatientIdAndCodeAndDate =
          fetchPreventionByPatientIdAndCodeAndDate;

  Gget_examen_recommandeDataBuilder() {
    Gget_examen_recommandeData._initializeBuilder(this);
  }

  Gget_examen_recommandeDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _fetchPreventionByPatientIdAndCodeAndDate =
          $v.fetchPreventionByPatientIdAndCodeAndDate?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_examen_recommandeData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_examen_recommandeData;
  }

  @override
  void update(void Function(Gget_examen_recommandeDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_examen_recommandeData build() => _build();

  _$Gget_examen_recommandeData _build() {
    _$Gget_examen_recommandeData _$result;
    try {
      _$result = _$v ??
          new _$Gget_examen_recommandeData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gget_examen_recommandeData', 'G__typename'),
              fetchPreventionByPatientIdAndCodeAndDate:
                  _fetchPreventionByPatientIdAndCodeAndDate?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fetchPreventionByPatientIdAndCodeAndDate';
        _fetchPreventionByPatientIdAndCodeAndDate?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_examen_recommandeData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDate
    extends Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDate {
  @override
  final String G__typename;
  @override
  final String code;
  @override
  final String type;
  @override
  final String title;
  @override
  final String dateDebutCampagne;
  @override
  final String? dateFinCampagne;
  @override
  final String dateDebutPrevention;
  @override
  final String dateFinPrevention;
  @override
  final _i3.GPreventionTypeEnum statut;
  @override
  final String? executionDate;
  @override
  final String? requirementLevel;

  factory _$Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDate(
          [void Function(
                  Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDateBuilder)?
              updates]) =>
      (new Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDateBuilder()
            ..update(updates))
          ._build();

  _$Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDate._(
      {required this.G__typename,
      required this.code,
      required this.type,
      required this.title,
      required this.dateDebutCampagne,
      this.dateFinCampagne,
      required this.dateDebutPrevention,
      required this.dateFinPrevention,
      required this.statut,
      this.executionDate,
      this.requirementLevel})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDate',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        code,
        r'Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDate',
        'code');
    BuiltValueNullFieldError.checkNotNull(
        type,
        r'Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDate',
        'type');
    BuiltValueNullFieldError.checkNotNull(
        title,
        r'Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDate',
        'title');
    BuiltValueNullFieldError.checkNotNull(
        dateDebutCampagne,
        r'Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDate',
        'dateDebutCampagne');
    BuiltValueNullFieldError.checkNotNull(
        dateDebutPrevention,
        r'Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDate',
        'dateDebutPrevention');
    BuiltValueNullFieldError.checkNotNull(
        dateFinPrevention,
        r'Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDate',
        'dateFinPrevention');
    BuiltValueNullFieldError.checkNotNull(
        statut,
        r'Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDate',
        'statut');
  }

  @override
  Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDate rebuild(
          void Function(
                  Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDateBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDateBuilder
      toBuilder() =>
          new Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDateBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDate &&
        G__typename == other.G__typename &&
        code == other.code &&
        type == other.type &&
        title == other.title &&
        dateDebutCampagne == other.dateDebutCampagne &&
        dateFinCampagne == other.dateFinCampagne &&
        dateDebutPrevention == other.dateDebutPrevention &&
        dateFinPrevention == other.dateFinPrevention &&
        statut == other.statut &&
        executionDate == other.executionDate &&
        requirementLevel == other.requirementLevel;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, dateDebutCampagne.hashCode);
    _$hash = $jc(_$hash, dateFinCampagne.hashCode);
    _$hash = $jc(_$hash, dateDebutPrevention.hashCode);
    _$hash = $jc(_$hash, dateFinPrevention.hashCode);
    _$hash = $jc(_$hash, statut.hashCode);
    _$hash = $jc(_$hash, executionDate.hashCode);
    _$hash = $jc(_$hash, requirementLevel.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDate')
          ..add('G__typename', G__typename)
          ..add('code', code)
          ..add('type', type)
          ..add('title', title)
          ..add('dateDebutCampagne', dateDebutCampagne)
          ..add('dateFinCampagne', dateFinCampagne)
          ..add('dateDebutPrevention', dateDebutPrevention)
          ..add('dateFinPrevention', dateFinPrevention)
          ..add('statut', statut)
          ..add('executionDate', executionDate)
          ..add('requirementLevel', requirementLevel))
        .toString();
  }
}

class Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDateBuilder
    implements
        Builder<
            Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDate,
            Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDateBuilder> {
  _$Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDate? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _dateDebutCampagne;
  String? get dateDebutCampagne => _$this._dateDebutCampagne;
  set dateDebutCampagne(String? dateDebutCampagne) =>
      _$this._dateDebutCampagne = dateDebutCampagne;

  String? _dateFinCampagne;
  String? get dateFinCampagne => _$this._dateFinCampagne;
  set dateFinCampagne(String? dateFinCampagne) =>
      _$this._dateFinCampagne = dateFinCampagne;

  String? _dateDebutPrevention;
  String? get dateDebutPrevention => _$this._dateDebutPrevention;
  set dateDebutPrevention(String? dateDebutPrevention) =>
      _$this._dateDebutPrevention = dateDebutPrevention;

  String? _dateFinPrevention;
  String? get dateFinPrevention => _$this._dateFinPrevention;
  set dateFinPrevention(String? dateFinPrevention) =>
      _$this._dateFinPrevention = dateFinPrevention;

  _i3.GPreventionTypeEnum? _statut;
  _i3.GPreventionTypeEnum? get statut => _$this._statut;
  set statut(_i3.GPreventionTypeEnum? statut) => _$this._statut = statut;

  String? _executionDate;
  String? get executionDate => _$this._executionDate;
  set executionDate(String? executionDate) =>
      _$this._executionDate = executionDate;

  String? _requirementLevel;
  String? get requirementLevel => _$this._requirementLevel;
  set requirementLevel(String? requirementLevel) =>
      _$this._requirementLevel = requirementLevel;

  Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDateBuilder() {
    Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDate
        ._initializeBuilder(this);
  }

  Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDateBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _code = $v.code;
      _type = $v.type;
      _title = $v.title;
      _dateDebutCampagne = $v.dateDebutCampagne;
      _dateFinCampagne = $v.dateFinCampagne;
      _dateDebutPrevention = $v.dateDebutPrevention;
      _dateFinPrevention = $v.dateFinPrevention;
      _statut = $v.statut;
      _executionDate = $v.executionDate;
      _requirementLevel = $v.requirementLevel;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDate
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDate;
  }

  @override
  void update(
      void Function(
              Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDateBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDate build() =>
      _build();

  _$Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDate
      _build() {
    final _$result = _$v ??
        new _$Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDate._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDate', 'G__typename'),
            code: BuiltValueNullFieldError.checkNotNull(
                code, r'Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDate', 'code'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDate', 'type'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDate', 'title'),
            dateDebutCampagne: BuiltValueNullFieldError.checkNotNull(
                dateDebutCampagne,
                r'Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDate',
                'dateDebutCampagne'),
            dateFinCampagne: dateFinCampagne,
            dateDebutPrevention: BuiltValueNullFieldError.checkNotNull(
                dateDebutPrevention,
                r'Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDate',
                'dateDebutPrevention'),
            dateFinPrevention: BuiltValueNullFieldError.checkNotNull(dateFinPrevention, r'Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDate', 'dateFinPrevention'),
            statut: BuiltValueNullFieldError.checkNotNull(statut, r'Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDate', 'statut'),
            executionDate: executionDate,
            requirementLevel: requirementLevel);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
