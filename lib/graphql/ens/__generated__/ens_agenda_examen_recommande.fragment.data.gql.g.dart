// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_agenda_examen_recommande.fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GexamenRecommandeData> _$gexamenRecommandeDataSerializer =
    new _$GexamenRecommandeDataSerializer();

class _$GexamenRecommandeDataSerializer
    implements StructuredSerializer<GexamenRecommandeData> {
  @override
  final Iterable<Type> types = const [
    GexamenRecommandeData,
    _$GexamenRecommandeData
  ];
  @override
  final String wireName = 'GexamenRecommandeData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GexamenRecommandeData object,
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
          specifiedType: const FullType(_i1.GPreventionTypeEnum)),
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
  GexamenRecommandeData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GexamenRecommandeDataBuilder();

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
                  specifiedType: const FullType(_i1.GPreventionTypeEnum))!
              as _i1.GPreventionTypeEnum;
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

class _$GexamenRecommandeData extends GexamenRecommandeData {
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
  final _i1.GPreventionTypeEnum statut;
  @override
  final String? executionDate;
  @override
  final String? requirementLevel;

  factory _$GexamenRecommandeData(
          [void Function(GexamenRecommandeDataBuilder)? updates]) =>
      (new GexamenRecommandeDataBuilder()..update(updates))._build();

  _$GexamenRecommandeData._(
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
        G__typename, r'GexamenRecommandeData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        code, r'GexamenRecommandeData', 'code');
    BuiltValueNullFieldError.checkNotNull(
        type, r'GexamenRecommandeData', 'type');
    BuiltValueNullFieldError.checkNotNull(
        title, r'GexamenRecommandeData', 'title');
    BuiltValueNullFieldError.checkNotNull(
        dateDebutCampagne, r'GexamenRecommandeData', 'dateDebutCampagne');
    BuiltValueNullFieldError.checkNotNull(
        dateDebutPrevention, r'GexamenRecommandeData', 'dateDebutPrevention');
    BuiltValueNullFieldError.checkNotNull(
        dateFinPrevention, r'GexamenRecommandeData', 'dateFinPrevention');
    BuiltValueNullFieldError.checkNotNull(
        statut, r'GexamenRecommandeData', 'statut');
  }

  @override
  GexamenRecommandeData rebuild(
          void Function(GexamenRecommandeDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GexamenRecommandeDataBuilder toBuilder() =>
      new GexamenRecommandeDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GexamenRecommandeData &&
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
    return (newBuiltValueToStringHelper(r'GexamenRecommandeData')
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

class GexamenRecommandeDataBuilder
    implements Builder<GexamenRecommandeData, GexamenRecommandeDataBuilder> {
  _$GexamenRecommandeData? _$v;

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

  _i1.GPreventionTypeEnum? _statut;
  _i1.GPreventionTypeEnum? get statut => _$this._statut;
  set statut(_i1.GPreventionTypeEnum? statut) => _$this._statut = statut;

  String? _executionDate;
  String? get executionDate => _$this._executionDate;
  set executionDate(String? executionDate) =>
      _$this._executionDate = executionDate;

  String? _requirementLevel;
  String? get requirementLevel => _$this._requirementLevel;
  set requirementLevel(String? requirementLevel) =>
      _$this._requirementLevel = requirementLevel;

  GexamenRecommandeDataBuilder() {
    GexamenRecommandeData._initializeBuilder(this);
  }

  GexamenRecommandeDataBuilder get _$this {
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
  void replace(GexamenRecommandeData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GexamenRecommandeData;
  }

  @override
  void update(void Function(GexamenRecommandeDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GexamenRecommandeData build() => _build();

  _$GexamenRecommandeData _build() {
    final _$result = _$v ??
        new _$GexamenRecommandeData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GexamenRecommandeData', 'G__typename'),
            code: BuiltValueNullFieldError.checkNotNull(
                code, r'GexamenRecommandeData', 'code'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'GexamenRecommandeData', 'type'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'GexamenRecommandeData', 'title'),
            dateDebutCampagne: BuiltValueNullFieldError.checkNotNull(
                dateDebutCampagne, r'GexamenRecommandeData', 'dateDebutCampagne'),
            dateFinCampagne: dateFinCampagne,
            dateDebutPrevention: BuiltValueNullFieldError.checkNotNull(
                dateDebutPrevention,
                r'GexamenRecommandeData',
                'dateDebutPrevention'),
            dateFinPrevention: BuiltValueNullFieldError.checkNotNull(
                dateFinPrevention, r'GexamenRecommandeData', 'dateFinPrevention'),
            statut: BuiltValueNullFieldError.checkNotNull(
                statut, r'GexamenRecommandeData', 'statut'),
            executionDate: executionDate,
            requirementLevel: requirementLevel);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
