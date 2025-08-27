// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_ps_get_consentement.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_consentement_psData> _$ggetConsentementPsDataSerializer =
    new _$Gget_consentement_psDataSerializer();
Serializer<Gget_consentement_psData_getDmpConsentementForHealthcareStaff>
    _$ggetConsentementPsDataGetDmpConsentementForHealthcareStaffSerializer =
    new _$Gget_consentement_psData_getDmpConsentementForHealthcareStaffSerializer();
Serializer<
        Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModel>
    _$ggetConsentementPsDataGetDmpConsentementForHealthcareStaffDmpConsentementModelSerializer =
    new _$Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModelSerializer();

class _$Gget_consentement_psDataSerializer
    implements StructuredSerializer<Gget_consentement_psData> {
  @override
  final Iterable<Type> types = const [
    Gget_consentement_psData,
    _$Gget_consentement_psData
  ];
  @override
  final String wireName = 'Gget_consentement_psData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_consentement_psData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'getDmpConsentementForHealthcareStaff',
      serializers.serialize(object.getDmpConsentementForHealthcareStaff,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                Gget_consentement_psData_getDmpConsentementForHealthcareStaff)
          ])),
    ];

    return result;
  }

  @override
  Gget_consentement_psData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_consentement_psDataBuilder();

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
        case 'getDmpConsentementForHealthcareStaff':
          result.getDmpConsentementForHealthcareStaff.replace(
              serializers.deserialize(value,
                  specifiedType: const FullType(BuiltList, const [
                    const FullType(
                        Gget_consentement_psData_getDmpConsentementForHealthcareStaff)
                  ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_consentement_psData_getDmpConsentementForHealthcareStaffSerializer
    implements
        StructuredSerializer<
            Gget_consentement_psData_getDmpConsentementForHealthcareStaff> {
  @override
  final Iterable<Type> types = const [
    Gget_consentement_psData_getDmpConsentementForHealthcareStaff,
    _$Gget_consentement_psData_getDmpConsentementForHealthcareStaff
  ];
  @override
  final String wireName =
      'Gget_consentement_psData_getDmpConsentementForHealthcareStaff';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_consentement_psData_getDmpConsentementForHealthcareStaff object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'dmpConsentementModel',
      serializers.serialize(object.dmpConsentementModel,
          specifiedType: const FullType(
              Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModel)),
      'startDate',
      serializers.serialize(object.startDate,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'healthcareStaffType',
      serializers.serialize(object.healthcareStaffType,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.firstName;
    if (value != null) {
      result
        ..add('firstName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastName;
    if (value != null) {
      result
        ..add('lastName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Gget_consentement_psData_getDmpConsentementForHealthcareStaff deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_consentement_psData_getDmpConsentementForHealthcareStaffBuilder();

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
        case 'dmpConsentementModel':
          result.dmpConsentementModel.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModel))!
              as Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModel);
          break;
        case 'startDate':
          result.startDate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'healthcareStaffType':
          result.healthcareStaffType = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModelSerializer
    implements
        StructuredSerializer<
            Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModel> {
  @override
  final Iterable<Type> types = const [
    Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModel,
    _$Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModel
  ];
  @override
  final String wireName =
      'Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModel';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModel
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
      'identifier',
      serializers.serialize(object.identifier,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModel
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModelBuilder();

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
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'identifier':
          result.identifier = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_consentement_psData extends Gget_consentement_psData {
  @override
  final String G__typename;
  @override
  final BuiltList<Gget_consentement_psData_getDmpConsentementForHealthcareStaff>
      getDmpConsentementForHealthcareStaff;

  factory _$Gget_consentement_psData(
          [void Function(Gget_consentement_psDataBuilder)? updates]) =>
      (new Gget_consentement_psDataBuilder()..update(updates))._build();

  _$Gget_consentement_psData._(
      {required this.G__typename,
      required this.getDmpConsentementForHealthcareStaff})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_consentement_psData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(getDmpConsentementForHealthcareStaff,
        r'Gget_consentement_psData', 'getDmpConsentementForHealthcareStaff');
  }

  @override
  Gget_consentement_psData rebuild(
          void Function(Gget_consentement_psDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_consentement_psDataBuilder toBuilder() =>
      new Gget_consentement_psDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_consentement_psData &&
        G__typename == other.G__typename &&
        getDmpConsentementForHealthcareStaff ==
            other.getDmpConsentementForHealthcareStaff;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getDmpConsentementForHealthcareStaff.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_consentement_psData')
          ..add('G__typename', G__typename)
          ..add('getDmpConsentementForHealthcareStaff',
              getDmpConsentementForHealthcareStaff))
        .toString();
  }
}

class Gget_consentement_psDataBuilder
    implements
        Builder<Gget_consentement_psData, Gget_consentement_psDataBuilder> {
  _$Gget_consentement_psData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<Gget_consentement_psData_getDmpConsentementForHealthcareStaff>?
      _getDmpConsentementForHealthcareStaff;
  ListBuilder<Gget_consentement_psData_getDmpConsentementForHealthcareStaff>
      get getDmpConsentementForHealthcareStaff =>
          _$this._getDmpConsentementForHealthcareStaff ??= new ListBuilder<
              Gget_consentement_psData_getDmpConsentementForHealthcareStaff>();
  set getDmpConsentementForHealthcareStaff(
          ListBuilder<
                  Gget_consentement_psData_getDmpConsentementForHealthcareStaff>?
              getDmpConsentementForHealthcareStaff) =>
      _$this._getDmpConsentementForHealthcareStaff =
          getDmpConsentementForHealthcareStaff;

  Gget_consentement_psDataBuilder() {
    Gget_consentement_psData._initializeBuilder(this);
  }

  Gget_consentement_psDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getDmpConsentementForHealthcareStaff =
          $v.getDmpConsentementForHealthcareStaff.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_consentement_psData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_consentement_psData;
  }

  @override
  void update(void Function(Gget_consentement_psDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_consentement_psData build() => _build();

  _$Gget_consentement_psData _build() {
    _$Gget_consentement_psData _$result;
    try {
      _$result = _$v ??
          new _$Gget_consentement_psData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gget_consentement_psData', 'G__typename'),
              getDmpConsentementForHealthcareStaff:
                  getDmpConsentementForHealthcareStaff.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getDmpConsentementForHealthcareStaff';
        getDmpConsentementForHealthcareStaff.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_consentement_psData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_consentement_psData_getDmpConsentementForHealthcareStaff
    extends Gget_consentement_psData_getDmpConsentementForHealthcareStaff {
  @override
  final String G__typename;
  @override
  final Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModel
      dmpConsentementModel;
  @override
  final String startDate;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String id;
  @override
  final String healthcareStaffType;

  factory _$Gget_consentement_psData_getDmpConsentementForHealthcareStaff(
          [void Function(
                  Gget_consentement_psData_getDmpConsentementForHealthcareStaffBuilder)?
              updates]) =>
      (new Gget_consentement_psData_getDmpConsentementForHealthcareStaffBuilder()
            ..update(updates))
          ._build();

  _$Gget_consentement_psData_getDmpConsentementForHealthcareStaff._(
      {required this.G__typename,
      required this.dmpConsentementModel,
      required this.startDate,
      this.firstName,
      this.lastName,
      required this.id,
      required this.healthcareStaffType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_consentement_psData_getDmpConsentementForHealthcareStaff',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        dmpConsentementModel,
        r'Gget_consentement_psData_getDmpConsentementForHealthcareStaff',
        'dmpConsentementModel');
    BuiltValueNullFieldError.checkNotNull(
        startDate,
        r'Gget_consentement_psData_getDmpConsentementForHealthcareStaff',
        'startDate');
    BuiltValueNullFieldError.checkNotNull(id,
        r'Gget_consentement_psData_getDmpConsentementForHealthcareStaff', 'id');
    BuiltValueNullFieldError.checkNotNull(
        healthcareStaffType,
        r'Gget_consentement_psData_getDmpConsentementForHealthcareStaff',
        'healthcareStaffType');
  }

  @override
  Gget_consentement_psData_getDmpConsentementForHealthcareStaff rebuild(
          void Function(
                  Gget_consentement_psData_getDmpConsentementForHealthcareStaffBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_consentement_psData_getDmpConsentementForHealthcareStaffBuilder
      toBuilder() =>
          new Gget_consentement_psData_getDmpConsentementForHealthcareStaffBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_consentement_psData_getDmpConsentementForHealthcareStaff &&
        G__typename == other.G__typename &&
        dmpConsentementModel == other.dmpConsentementModel &&
        startDate == other.startDate &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        id == other.id &&
        healthcareStaffType == other.healthcareStaffType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, dmpConsentementModel.hashCode);
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, healthcareStaffType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_consentement_psData_getDmpConsentementForHealthcareStaff')
          ..add('G__typename', G__typename)
          ..add('dmpConsentementModel', dmpConsentementModel)
          ..add('startDate', startDate)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('id', id)
          ..add('healthcareStaffType', healthcareStaffType))
        .toString();
  }
}

class Gget_consentement_psData_getDmpConsentementForHealthcareStaffBuilder
    implements
        Builder<Gget_consentement_psData_getDmpConsentementForHealthcareStaff,
            Gget_consentement_psData_getDmpConsentementForHealthcareStaffBuilder> {
  _$Gget_consentement_psData_getDmpConsentementForHealthcareStaff? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModelBuilder?
      _dmpConsentementModel;
  Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModelBuilder
      get dmpConsentementModel => _$this._dmpConsentementModel ??=
          new Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModelBuilder();
  set dmpConsentementModel(
          Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModelBuilder?
              dmpConsentementModel) =>
      _$this._dmpConsentementModel = dmpConsentementModel;

  String? _startDate;
  String? get startDate => _$this._startDate;
  set startDate(String? startDate) => _$this._startDate = startDate;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _healthcareStaffType;
  String? get healthcareStaffType => _$this._healthcareStaffType;
  set healthcareStaffType(String? healthcareStaffType) =>
      _$this._healthcareStaffType = healthcareStaffType;

  Gget_consentement_psData_getDmpConsentementForHealthcareStaffBuilder() {
    Gget_consentement_psData_getDmpConsentementForHealthcareStaff
        ._initializeBuilder(this);
  }

  Gget_consentement_psData_getDmpConsentementForHealthcareStaffBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _dmpConsentementModel = $v.dmpConsentementModel.toBuilder();
      _startDate = $v.startDate;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _id = $v.id;
      _healthcareStaffType = $v.healthcareStaffType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_consentement_psData_getDmpConsentementForHealthcareStaff other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_consentement_psData_getDmpConsentementForHealthcareStaff;
  }

  @override
  void update(
      void Function(
              Gget_consentement_psData_getDmpConsentementForHealthcareStaffBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_consentement_psData_getDmpConsentementForHealthcareStaff build() =>
      _build();

  _$Gget_consentement_psData_getDmpConsentementForHealthcareStaff _build() {
    _$Gget_consentement_psData_getDmpConsentementForHealthcareStaff _$result;
    try {
      _$result = _$v ??
          new _$Gget_consentement_psData_getDmpConsentementForHealthcareStaff._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_consentement_psData_getDmpConsentementForHealthcareStaff',
                  'G__typename'),
              dmpConsentementModel: dmpConsentementModel.build(),
              startDate: BuiltValueNullFieldError.checkNotNull(
                  startDate,
                  r'Gget_consentement_psData_getDmpConsentementForHealthcareStaff',
                  'startDate'),
              firstName: firstName,
              lastName: lastName,
              id: BuiltValueNullFieldError.checkNotNull(
                  id,
                  r'Gget_consentement_psData_getDmpConsentementForHealthcareStaff',
                  'id'),
              healthcareStaffType: BuiltValueNullFieldError.checkNotNull(
                  healthcareStaffType,
                  r'Gget_consentement_psData_getDmpConsentementForHealthcareStaff',
                  'healthcareStaffType'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dmpConsentementModel';
        dmpConsentementModel.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_consentement_psData_getDmpConsentementForHealthcareStaff',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModel
    extends Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModel {
  @override
  final String G__typename;
  @override
  final String type;
  @override
  final String identifier;

  factory _$Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModel(
          [void Function(
                  Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModelBuilder)?
              updates]) =>
      (new Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModelBuilder()
            ..update(updates))
          ._build();

  _$Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModel._(
      {required this.G__typename, required this.type, required this.identifier})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModel',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        type,
        r'Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModel',
        'type');
    BuiltValueNullFieldError.checkNotNull(
        identifier,
        r'Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModel',
        'identifier');
  }

  @override
  Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModel
      rebuild(
              void Function(
                      Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModelBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModelBuilder
      toBuilder() =>
          new Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModelBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModel &&
        G__typename == other.G__typename &&
        type == other.type &&
        identifier == other.identifier;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, identifier.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModel')
          ..add('G__typename', G__typename)
          ..add('type', type)
          ..add('identifier', identifier))
        .toString();
  }
}

class Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModelBuilder
    implements
        Builder<
            Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModel,
            Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModelBuilder> {
  _$Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModel?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _identifier;
  String? get identifier => _$this._identifier;
  set identifier(String? identifier) => _$this._identifier = identifier;

  Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModelBuilder() {
    Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModel
        ._initializeBuilder(this);
  }

  Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModelBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _type = $v.type;
      _identifier = $v.identifier;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModel
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModel;
  }

  @override
  void update(
      void Function(
              Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModelBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModel
      build() => _build();

  _$Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModel
      _build() {
    final _$result = _$v ??
        new _$Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModel
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModel',
                'G__typename'),
            type: BuiltValueNullFieldError.checkNotNull(
                type,
                r'Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModel',
                'type'),
            identifier: BuiltValueNullFieldError.checkNotNull(
                identifier,
                r'Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModel',
                'identifier'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
