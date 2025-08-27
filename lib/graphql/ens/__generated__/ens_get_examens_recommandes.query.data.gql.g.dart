// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_get_examens_recommandes.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_examens_recommandesData>
    _$ggetExamensRecommandesDataSerializer =
    new _$Gget_examens_recommandesDataSerializer();
Serializer<Gget_examens_recommandesData_fetchPreventionsByPatientId>
    _$ggetExamensRecommandesDataFetchPreventionsByPatientIdSerializer =
    new _$Gget_examens_recommandesData_fetchPreventionsByPatientIdSerializer();

class _$Gget_examens_recommandesDataSerializer
    implements StructuredSerializer<Gget_examens_recommandesData> {
  @override
  final Iterable<Type> types = const [
    Gget_examens_recommandesData,
    _$Gget_examens_recommandesData
  ];
  @override
  final String wireName = 'Gget_examens_recommandesData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_examens_recommandesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.fetchPreventionsByPatientId;
    if (value != null) {
      result
        ..add('fetchPreventionsByPatientId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  Gget_examens_recommandesData_fetchPreventionsByPatientId)
            ])));
    }
    return result;
  }

  @override
  Gget_examens_recommandesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_examens_recommandesDataBuilder();

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
        case 'fetchPreventionsByPatientId':
          result.fetchPreventionsByPatientId.replace(serializers.deserialize(
              value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_examens_recommandesData_fetchPreventionsByPatientId)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_examens_recommandesData_fetchPreventionsByPatientIdSerializer
    implements
        StructuredSerializer<
            Gget_examens_recommandesData_fetchPreventionsByPatientId> {
  @override
  final Iterable<Type> types = const [
    Gget_examens_recommandesData_fetchPreventionsByPatientId,
    _$Gget_examens_recommandesData_fetchPreventionsByPatientId
  ];
  @override
  final String wireName =
      'Gget_examens_recommandesData_fetchPreventionsByPatientId';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_examens_recommandesData_fetchPreventionsByPatientId object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'dateDebutPrevention',
      serializers.serialize(object.dateDebutPrevention,
          specifiedType: const FullType(String)),
      'dateFinPrevention',
      serializers.serialize(object.dateFinPrevention,
          specifiedType: const FullType(String)),
      'statut',
      serializers.serialize(object.statut,
          specifiedType: const FullType(_i2.GPreventionTypeEnum)),
    ];

    return result;
  }

  @override
  Gget_examens_recommandesData_fetchPreventionsByPatientId deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_examens_recommandesData_fetchPreventionsByPatientIdBuilder();

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
                  specifiedType: const FullType(_i2.GPreventionTypeEnum))!
              as _i2.GPreventionTypeEnum;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_examens_recommandesData extends Gget_examens_recommandesData {
  @override
  final String G__typename;
  @override
  final BuiltList<Gget_examens_recommandesData_fetchPreventionsByPatientId>?
      fetchPreventionsByPatientId;

  factory _$Gget_examens_recommandesData(
          [void Function(Gget_examens_recommandesDataBuilder)? updates]) =>
      (new Gget_examens_recommandesDataBuilder()..update(updates))._build();

  _$Gget_examens_recommandesData._(
      {required this.G__typename, this.fetchPreventionsByPatientId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_examens_recommandesData', 'G__typename');
  }

  @override
  Gget_examens_recommandesData rebuild(
          void Function(Gget_examens_recommandesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_examens_recommandesDataBuilder toBuilder() =>
      new Gget_examens_recommandesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_examens_recommandesData &&
        G__typename == other.G__typename &&
        fetchPreventionsByPatientId == other.fetchPreventionsByPatientId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, fetchPreventionsByPatientId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_examens_recommandesData')
          ..add('G__typename', G__typename)
          ..add('fetchPreventionsByPatientId', fetchPreventionsByPatientId))
        .toString();
  }
}

class Gget_examens_recommandesDataBuilder
    implements
        Builder<Gget_examens_recommandesData,
            Gget_examens_recommandesDataBuilder> {
  _$Gget_examens_recommandesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<Gget_examens_recommandesData_fetchPreventionsByPatientId>?
      _fetchPreventionsByPatientId;
  ListBuilder<Gget_examens_recommandesData_fetchPreventionsByPatientId>
      get fetchPreventionsByPatientId =>
          _$this._fetchPreventionsByPatientId ??= new ListBuilder<
              Gget_examens_recommandesData_fetchPreventionsByPatientId>();
  set fetchPreventionsByPatientId(
          ListBuilder<Gget_examens_recommandesData_fetchPreventionsByPatientId>?
              fetchPreventionsByPatientId) =>
      _$this._fetchPreventionsByPatientId = fetchPreventionsByPatientId;

  Gget_examens_recommandesDataBuilder() {
    Gget_examens_recommandesData._initializeBuilder(this);
  }

  Gget_examens_recommandesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _fetchPreventionsByPatientId =
          $v.fetchPreventionsByPatientId?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_examens_recommandesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_examens_recommandesData;
  }

  @override
  void update(void Function(Gget_examens_recommandesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_examens_recommandesData build() => _build();

  _$Gget_examens_recommandesData _build() {
    _$Gget_examens_recommandesData _$result;
    try {
      _$result = _$v ??
          new _$Gget_examens_recommandesData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gget_examens_recommandesData', 'G__typename'),
              fetchPreventionsByPatientId:
                  _fetchPreventionsByPatientId?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fetchPreventionsByPatientId';
        _fetchPreventionsByPatientId?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_examens_recommandesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_examens_recommandesData_fetchPreventionsByPatientId
    extends Gget_examens_recommandesData_fetchPreventionsByPatientId {
  @override
  final String G__typename;
  @override
  final String dateDebutPrevention;
  @override
  final String dateFinPrevention;
  @override
  final _i2.GPreventionTypeEnum statut;

  factory _$Gget_examens_recommandesData_fetchPreventionsByPatientId(
          [void Function(
                  Gget_examens_recommandesData_fetchPreventionsByPatientIdBuilder)?
              updates]) =>
      (new Gget_examens_recommandesData_fetchPreventionsByPatientIdBuilder()
            ..update(updates))
          ._build();

  _$Gget_examens_recommandesData_fetchPreventionsByPatientId._(
      {required this.G__typename,
      required this.dateDebutPrevention,
      required this.dateFinPrevention,
      required this.statut})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_examens_recommandesData_fetchPreventionsByPatientId',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        dateDebutPrevention,
        r'Gget_examens_recommandesData_fetchPreventionsByPatientId',
        'dateDebutPrevention');
    BuiltValueNullFieldError.checkNotNull(
        dateFinPrevention,
        r'Gget_examens_recommandesData_fetchPreventionsByPatientId',
        'dateFinPrevention');
    BuiltValueNullFieldError.checkNotNull(statut,
        r'Gget_examens_recommandesData_fetchPreventionsByPatientId', 'statut');
  }

  @override
  Gget_examens_recommandesData_fetchPreventionsByPatientId rebuild(
          void Function(
                  Gget_examens_recommandesData_fetchPreventionsByPatientIdBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_examens_recommandesData_fetchPreventionsByPatientIdBuilder toBuilder() =>
      new Gget_examens_recommandesData_fetchPreventionsByPatientIdBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_examens_recommandesData_fetchPreventionsByPatientId &&
        G__typename == other.G__typename &&
        dateDebutPrevention == other.dateDebutPrevention &&
        dateFinPrevention == other.dateFinPrevention &&
        statut == other.statut;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, dateDebutPrevention.hashCode);
    _$hash = $jc(_$hash, dateFinPrevention.hashCode);
    _$hash = $jc(_$hash, statut.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_examens_recommandesData_fetchPreventionsByPatientId')
          ..add('G__typename', G__typename)
          ..add('dateDebutPrevention', dateDebutPrevention)
          ..add('dateFinPrevention', dateFinPrevention)
          ..add('statut', statut))
        .toString();
  }
}

class Gget_examens_recommandesData_fetchPreventionsByPatientIdBuilder
    implements
        Builder<Gget_examens_recommandesData_fetchPreventionsByPatientId,
            Gget_examens_recommandesData_fetchPreventionsByPatientIdBuilder> {
  _$Gget_examens_recommandesData_fetchPreventionsByPatientId? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _dateDebutPrevention;
  String? get dateDebutPrevention => _$this._dateDebutPrevention;
  set dateDebutPrevention(String? dateDebutPrevention) =>
      _$this._dateDebutPrevention = dateDebutPrevention;

  String? _dateFinPrevention;
  String? get dateFinPrevention => _$this._dateFinPrevention;
  set dateFinPrevention(String? dateFinPrevention) =>
      _$this._dateFinPrevention = dateFinPrevention;

  _i2.GPreventionTypeEnum? _statut;
  _i2.GPreventionTypeEnum? get statut => _$this._statut;
  set statut(_i2.GPreventionTypeEnum? statut) => _$this._statut = statut;

  Gget_examens_recommandesData_fetchPreventionsByPatientIdBuilder() {
    Gget_examens_recommandesData_fetchPreventionsByPatientId._initializeBuilder(
        this);
  }

  Gget_examens_recommandesData_fetchPreventionsByPatientIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _dateDebutPrevention = $v.dateDebutPrevention;
      _dateFinPrevention = $v.dateFinPrevention;
      _statut = $v.statut;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_examens_recommandesData_fetchPreventionsByPatientId other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_examens_recommandesData_fetchPreventionsByPatientId;
  }

  @override
  void update(
      void Function(
              Gget_examens_recommandesData_fetchPreventionsByPatientIdBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_examens_recommandesData_fetchPreventionsByPatientId build() => _build();

  _$Gget_examens_recommandesData_fetchPreventionsByPatientId _build() {
    final _$result = _$v ??
        new _$Gget_examens_recommandesData_fetchPreventionsByPatientId._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_examens_recommandesData_fetchPreventionsByPatientId',
                'G__typename'),
            dateDebutPrevention: BuiltValueNullFieldError.checkNotNull(
                dateDebutPrevention,
                r'Gget_examens_recommandesData_fetchPreventionsByPatientId',
                'dateDebutPrevention'),
            dateFinPrevention: BuiltValueNullFieldError.checkNotNull(
                dateFinPrevention,
                r'Gget_examens_recommandesData_fetchPreventionsByPatientId',
                'dateFinPrevention'),
            statut: BuiltValueNullFieldError.checkNotNull(
                statut,
                r'Gget_examens_recommandesData_fetchPreventionsByPatientId',
                'statut'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
