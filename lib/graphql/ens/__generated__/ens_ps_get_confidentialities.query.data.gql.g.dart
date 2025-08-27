// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_ps_get_confidentialities.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_confidentialities_psData>
    _$ggetConfidentialitiesPsDataSerializer =
    new _$Gget_confidentialities_psDataSerializer();
Serializer<Gget_confidentialities_psData_getHealthProfessionalConfidentialities>
    _$ggetConfidentialitiesPsDataGetHealthProfessionalConfidentialitiesSerializer =
    new _$Gget_confidentialities_psData_getHealthProfessionalConfidentialitiesSerializer();
Serializer<
        Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialities>
    _$ggetConfidentialitiesPsDataGetHealthProfessionalConfidentialitiesConfidentialitiesSerializer =
    new _$Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialitiesSerializer();

class _$Gget_confidentialities_psDataSerializer
    implements StructuredSerializer<Gget_confidentialities_psData> {
  @override
  final Iterable<Type> types = const [
    Gget_confidentialities_psData,
    _$Gget_confidentialities_psData
  ];
  @override
  final String wireName = 'Gget_confidentialities_psData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_confidentialities_psData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'getHealthProfessionalConfidentialities',
      serializers.serialize(object.getHealthProfessionalConfidentialities,
          specifiedType: const FullType(
              Gget_confidentialities_psData_getHealthProfessionalConfidentialities)),
    ];

    return result;
  }

  @override
  Gget_confidentialities_psData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_confidentialities_psDataBuilder();

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
        case 'getHealthProfessionalConfidentialities':
          result.getHealthProfessionalConfidentialities.replace(serializers
                  .deserialize(value,
                      specifiedType: const FullType(
                          Gget_confidentialities_psData_getHealthProfessionalConfidentialities))!
              as Gget_confidentialities_psData_getHealthProfessionalConfidentialities);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_confidentialities_psData_getHealthProfessionalConfidentialitiesSerializer
    implements
        StructuredSerializer<
            Gget_confidentialities_psData_getHealthProfessionalConfidentialities> {
  @override
  final Iterable<Type> types = const [
    Gget_confidentialities_psData_getHealthProfessionalConfidentialities,
    _$Gget_confidentialities_psData_getHealthProfessionalConfidentialities
  ];
  @override
  final String wireName =
      'Gget_confidentialities_psData_getHealthProfessionalConfidentialities';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_confidentialities_psData_getHealthProfessionalConfidentialities
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'confidentialities',
      serializers.serialize(object.confidentialities,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialities)
          ])),
      'btg',
      serializers.serialize(object.btg, specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  Gget_confidentialities_psData_getHealthProfessionalConfidentialities
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_confidentialities_psData_getHealthProfessionalConfidentialitiesBuilder();

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
        case 'confidentialities':
          result.confidentialities.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialities)
              ]))! as BuiltList<Object?>);
          break;
        case 'btg':
          result.btg = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialitiesSerializer
    implements
        StructuredSerializer<
            Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialities> {
  @override
  final Iterable<Type> types = const [
    Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialities,
    _$Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialities
  ];
  @override
  final String wireName =
      'Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialities';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialities
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'consentId',
      serializers.serialize(object.consentId,
          specifiedType: const FullType(String)),
      'healthProfessionalId',
      serializers.serialize(object.healthProfessionalId,
          specifiedType: const FullType(String)),
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(String)),
      'startDate',
      serializers.serialize(object.startDate,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialities
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialitiesBuilder();

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
        case 'consentId':
          result.consentId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'healthProfessionalId':
          result.healthProfessionalId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'startDate':
          result.startDate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_confidentialities_psData extends Gget_confidentialities_psData {
  @override
  final String G__typename;
  @override
  final Gget_confidentialities_psData_getHealthProfessionalConfidentialities
      getHealthProfessionalConfidentialities;

  factory _$Gget_confidentialities_psData(
          [void Function(Gget_confidentialities_psDataBuilder)? updates]) =>
      (new Gget_confidentialities_psDataBuilder()..update(updates))._build();

  _$Gget_confidentialities_psData._(
      {required this.G__typename,
      required this.getHealthProfessionalConfidentialities})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_confidentialities_psData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        getHealthProfessionalConfidentialities,
        r'Gget_confidentialities_psData',
        'getHealthProfessionalConfidentialities');
  }

  @override
  Gget_confidentialities_psData rebuild(
          void Function(Gget_confidentialities_psDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_confidentialities_psDataBuilder toBuilder() =>
      new Gget_confidentialities_psDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_confidentialities_psData &&
        G__typename == other.G__typename &&
        getHealthProfessionalConfidentialities ==
            other.getHealthProfessionalConfidentialities;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getHealthProfessionalConfidentialities.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_confidentialities_psData')
          ..add('G__typename', G__typename)
          ..add('getHealthProfessionalConfidentialities',
              getHealthProfessionalConfidentialities))
        .toString();
  }
}

class Gget_confidentialities_psDataBuilder
    implements
        Builder<Gget_confidentialities_psData,
            Gget_confidentialities_psDataBuilder> {
  _$Gget_confidentialities_psData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_confidentialities_psData_getHealthProfessionalConfidentialitiesBuilder?
      _getHealthProfessionalConfidentialities;
  Gget_confidentialities_psData_getHealthProfessionalConfidentialitiesBuilder
      get getHealthProfessionalConfidentialities => _$this
              ._getHealthProfessionalConfidentialities ??=
          new Gget_confidentialities_psData_getHealthProfessionalConfidentialitiesBuilder();
  set getHealthProfessionalConfidentialities(
          Gget_confidentialities_psData_getHealthProfessionalConfidentialitiesBuilder?
              getHealthProfessionalConfidentialities) =>
      _$this._getHealthProfessionalConfidentialities =
          getHealthProfessionalConfidentialities;

  Gget_confidentialities_psDataBuilder() {
    Gget_confidentialities_psData._initializeBuilder(this);
  }

  Gget_confidentialities_psDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getHealthProfessionalConfidentialities =
          $v.getHealthProfessionalConfidentialities.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_confidentialities_psData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_confidentialities_psData;
  }

  @override
  void update(void Function(Gget_confidentialities_psDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_confidentialities_psData build() => _build();

  _$Gget_confidentialities_psData _build() {
    _$Gget_confidentialities_psData _$result;
    try {
      _$result = _$v ??
          new _$Gget_confidentialities_psData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gget_confidentialities_psData', 'G__typename'),
              getHealthProfessionalConfidentialities:
                  getHealthProfessionalConfidentialities.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getHealthProfessionalConfidentialities';
        getHealthProfessionalConfidentialities.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_confidentialities_psData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_confidentialities_psData_getHealthProfessionalConfidentialities
    extends Gget_confidentialities_psData_getHealthProfessionalConfidentialities {
  @override
  final String G__typename;
  @override
  final BuiltList<
          Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialities>
      confidentialities;
  @override
  final bool btg;

  factory _$Gget_confidentialities_psData_getHealthProfessionalConfidentialities(
          [void Function(
                  Gget_confidentialities_psData_getHealthProfessionalConfidentialitiesBuilder)?
              updates]) =>
      (new Gget_confidentialities_psData_getHealthProfessionalConfidentialitiesBuilder()
            ..update(updates))
          ._build();

  _$Gget_confidentialities_psData_getHealthProfessionalConfidentialities._(
      {required this.G__typename,
      required this.confidentialities,
      required this.btg})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_confidentialities_psData_getHealthProfessionalConfidentialities',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        confidentialities,
        r'Gget_confidentialities_psData_getHealthProfessionalConfidentialities',
        'confidentialities');
    BuiltValueNullFieldError.checkNotNull(
        btg,
        r'Gget_confidentialities_psData_getHealthProfessionalConfidentialities',
        'btg');
  }

  @override
  Gget_confidentialities_psData_getHealthProfessionalConfidentialities rebuild(
          void Function(
                  Gget_confidentialities_psData_getHealthProfessionalConfidentialitiesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_confidentialities_psData_getHealthProfessionalConfidentialitiesBuilder
      toBuilder() =>
          new Gget_confidentialities_psData_getHealthProfessionalConfidentialitiesBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_confidentialities_psData_getHealthProfessionalConfidentialities &&
        G__typename == other.G__typename &&
        confidentialities == other.confidentialities &&
        btg == other.btg;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, confidentialities.hashCode);
    _$hash = $jc(_$hash, btg.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_confidentialities_psData_getHealthProfessionalConfidentialities')
          ..add('G__typename', G__typename)
          ..add('confidentialities', confidentialities)
          ..add('btg', btg))
        .toString();
  }
}

class Gget_confidentialities_psData_getHealthProfessionalConfidentialitiesBuilder
    implements
        Builder<
            Gget_confidentialities_psData_getHealthProfessionalConfidentialities,
            Gget_confidentialities_psData_getHealthProfessionalConfidentialitiesBuilder> {
  _$Gget_confidentialities_psData_getHealthProfessionalConfidentialities? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<
          Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialities>?
      _confidentialities;
  ListBuilder<
          Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialities>
      get confidentialities => _$this._confidentialities ??= new ListBuilder<
          Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialities>();
  set confidentialities(
          ListBuilder<
                  Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialities>?
              confidentialities) =>
      _$this._confidentialities = confidentialities;

  bool? _btg;
  bool? get btg => _$this._btg;
  set btg(bool? btg) => _$this._btg = btg;

  Gget_confidentialities_psData_getHealthProfessionalConfidentialitiesBuilder() {
    Gget_confidentialities_psData_getHealthProfessionalConfidentialities
        ._initializeBuilder(this);
  }

  Gget_confidentialities_psData_getHealthProfessionalConfidentialitiesBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _confidentialities = $v.confidentialities.toBuilder();
      _btg = $v.btg;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_confidentialities_psData_getHealthProfessionalConfidentialities
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_confidentialities_psData_getHealthProfessionalConfidentialities;
  }

  @override
  void update(
      void Function(
              Gget_confidentialities_psData_getHealthProfessionalConfidentialitiesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_confidentialities_psData_getHealthProfessionalConfidentialities
      build() => _build();

  _$Gget_confidentialities_psData_getHealthProfessionalConfidentialities
      _build() {
    _$Gget_confidentialities_psData_getHealthProfessionalConfidentialities
        _$result;
    try {
      _$result = _$v ??
          new _$Gget_confidentialities_psData_getHealthProfessionalConfidentialities
              ._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_confidentialities_psData_getHealthProfessionalConfidentialities',
                  'G__typename'),
              confidentialities: confidentialities.build(),
              btg: BuiltValueNullFieldError.checkNotNull(
                  btg,
                  r'Gget_confidentialities_psData_getHealthProfessionalConfidentialities',
                  'btg'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'confidentialities';
        confidentialities.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_confidentialities_psData_getHealthProfessionalConfidentialities',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialities
    extends Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialities {
  @override
  final String G__typename;
  @override
  final String consentId;
  @override
  final String healthProfessionalId;
  @override
  final String status;
  @override
  final String startDate;

  factory _$Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialities(
          [void Function(
                  Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialitiesBuilder)?
              updates]) =>
      (new Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialitiesBuilder()
            ..update(updates))
          ._build();

  _$Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialities._(
      {required this.G__typename,
      required this.consentId,
      required this.healthProfessionalId,
      required this.status,
      required this.startDate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialities',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        consentId,
        r'Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialities',
        'consentId');
    BuiltValueNullFieldError.checkNotNull(
        healthProfessionalId,
        r'Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialities',
        'healthProfessionalId');
    BuiltValueNullFieldError.checkNotNull(
        status,
        r'Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialities',
        'status');
    BuiltValueNullFieldError.checkNotNull(
        startDate,
        r'Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialities',
        'startDate');
  }

  @override
  Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialities
      rebuild(
              void Function(
                      Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialitiesBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialitiesBuilder
      toBuilder() =>
          new Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialitiesBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialities &&
        G__typename == other.G__typename &&
        consentId == other.consentId &&
        healthProfessionalId == other.healthProfessionalId &&
        status == other.status &&
        startDate == other.startDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, consentId.hashCode);
    _$hash = $jc(_$hash, healthProfessionalId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialities')
          ..add('G__typename', G__typename)
          ..add('consentId', consentId)
          ..add('healthProfessionalId', healthProfessionalId)
          ..add('status', status)
          ..add('startDate', startDate))
        .toString();
  }
}

class Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialitiesBuilder
    implements
        Builder<
            Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialities,
            Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialitiesBuilder> {
  _$Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialities?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _consentId;
  String? get consentId => _$this._consentId;
  set consentId(String? consentId) => _$this._consentId = consentId;

  String? _healthProfessionalId;
  String? get healthProfessionalId => _$this._healthProfessionalId;
  set healthProfessionalId(String? healthProfessionalId) =>
      _$this._healthProfessionalId = healthProfessionalId;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _startDate;
  String? get startDate => _$this._startDate;
  set startDate(String? startDate) => _$this._startDate = startDate;

  Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialitiesBuilder() {
    Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialities
        ._initializeBuilder(this);
  }

  Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialitiesBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _consentId = $v.consentId;
      _healthProfessionalId = $v.healthProfessionalId;
      _status = $v.status;
      _startDate = $v.startDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialities
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialities;
  }

  @override
  void update(
      void Function(
              Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialitiesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialities
      build() => _build();

  _$Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialities
      _build() {
    final _$result = _$v ??
        new _$Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialities._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialities',
                'G__typename'),
            consentId: BuiltValueNullFieldError.checkNotNull(
                consentId, r'Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialities', 'consentId'),
            healthProfessionalId: BuiltValueNullFieldError.checkNotNull(
                healthProfessionalId,
                r'Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialities',
                'healthProfessionalId'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialities', 'status'),
            startDate: BuiltValueNullFieldError.checkNotNull(
                startDate,
                r'Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialities',
                'startDate'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
