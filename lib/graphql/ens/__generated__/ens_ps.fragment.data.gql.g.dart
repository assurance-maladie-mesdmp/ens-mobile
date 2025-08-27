// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_ps.fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GpsData> _$gpsDataSerializer = new _$GpsDataSerializer();
Serializer<GpsData_exercices> _$gpsDataExercicesSerializer =
    new _$GpsData_exercicesSerializer();
Serializer<GpsData_adresses> _$gpsDataAdressesSerializer =
    new _$GpsData_adressesSerializer();

class _$GpsDataSerializer implements StructuredSerializer<GpsData> {
  @override
  final Iterable<Type> types = const [GpsData, _$GpsData];
  @override
  final String wireName = 'GpsData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GpsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'healthProfessionalId',
      serializers.serialize(object.healthProfessionalId,
          specifiedType: const FullType(String)),
      'declaredReferrer',
      serializers.serialize(object.declaredReferrer,
          specifiedType: const FullType(bool)),
      'incorrectReferrer',
      serializers.serialize(object.incorrectReferrer,
          specifiedType: const FullType(bool)),
      'firstName',
      serializers.serialize(object.firstName,
          specifiedType: const FullType(String)),
      'lastName',
      serializers.serialize(object.lastName,
          specifiedType: const FullType(String)),
      'active',
      serializers.serialize(object.active, specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.nationalId;
    if (value != null) {
      result
        ..add('nationalId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.exercices;
    if (value != null) {
      result
        ..add('exercices')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(GpsData_exercices)])));
    }
    value = object.adresses;
    if (value != null) {
      result
        ..add('adresses')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(GpsData_adresses)])));
    }
    value = object.role;
    if (value != null) {
      result
        ..add('role')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GHealthProfessionalRoleEnum)));
    }
    return result;
  }

  @override
  GpsData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GpsDataBuilder();

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
        case 'nationalId':
          result.nationalId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'healthProfessionalId':
          result.healthProfessionalId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'declaredReferrer':
          result.declaredReferrer = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'incorrectReferrer':
          result.incorrectReferrer = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'exercices':
          result.exercices.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GpsData_exercices)]))!
              as BuiltList<Object?>);
          break;
        case 'adresses':
          result.adresses.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GpsData_adresses)]))!
              as BuiltList<Object?>);
          break;
        case 'role':
          result.role = serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i1.GHealthProfessionalRoleEnum))
              as _i1.GHealthProfessionalRoleEnum?;
          break;
        case 'active':
          result.active = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GpsData_exercicesSerializer
    implements StructuredSerializer<GpsData_exercices> {
  @override
  final Iterable<Type> types = const [GpsData_exercices, _$GpsData_exercices];
  @override
  final String wireName = 'GpsData_exercices';

  @override
  Iterable<Object?> serialize(Serializers serializers, GpsData_exercices object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'profession',
      serializers.serialize(object.profession,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.specialities;
    if (value != null) {
      result
        ..add('specialities')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GpsData_exercices deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GpsData_exercicesBuilder();

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
        case 'profession':
          result.profession = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'specialities':
          result.specialities = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GpsData_adressesSerializer
    implements StructuredSerializer<GpsData_adresses> {
  @override
  final Iterable<Type> types = const [GpsData_adresses, _$GpsData_adresses];
  @override
  final String wireName = 'GpsData_adresses';

  @override
  Iterable<Object?> serialize(Serializers serializers, GpsData_adresses object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.adresseName;
    if (value != null) {
      result
        ..add('adresseName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cityZipCode;
    if (value != null) {
      result
        ..add('cityZipCode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.roadNumber;
    if (value != null) {
      result
        ..add('roadNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.labelRoadType;
    if (value != null) {
      result
        ..add('labelRoadType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.road;
    if (value != null) {
      result
        ..add('road')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.commune;
    if (value != null) {
      result
        ..add('commune')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.numeroTelephone;
    if (value != null) {
      result
        ..add('numeroTelephone')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GpsData_adresses deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GpsData_adressesBuilder();

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
        case 'adresseName':
          result.adresseName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cityZipCode':
          result.cityZipCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'roadNumber':
          result.roadNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'labelRoadType':
          result.labelRoadType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'road':
          result.road = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'commune':
          result.commune = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'numeroTelephone':
          result.numeroTelephone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GpsData extends GpsData {
  @override
  final String G__typename;
  @override
  final String? nationalId;
  @override
  final String healthProfessionalId;
  @override
  final bool declaredReferrer;
  @override
  final bool incorrectReferrer;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final BuiltList<GpsData_exercices>? exercices;
  @override
  final BuiltList<GpsData_adresses>? adresses;
  @override
  final _i1.GHealthProfessionalRoleEnum? role;
  @override
  final bool active;

  factory _$GpsData([void Function(GpsDataBuilder)? updates]) =>
      (new GpsDataBuilder()..update(updates))._build();

  _$GpsData._(
      {required this.G__typename,
      this.nationalId,
      required this.healthProfessionalId,
      required this.declaredReferrer,
      required this.incorrectReferrer,
      required this.firstName,
      required this.lastName,
      this.exercices,
      this.adresses,
      this.role,
      required this.active})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GpsData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        healthProfessionalId, r'GpsData', 'healthProfessionalId');
    BuiltValueNullFieldError.checkNotNull(
        declaredReferrer, r'GpsData', 'declaredReferrer');
    BuiltValueNullFieldError.checkNotNull(
        incorrectReferrer, r'GpsData', 'incorrectReferrer');
    BuiltValueNullFieldError.checkNotNull(firstName, r'GpsData', 'firstName');
    BuiltValueNullFieldError.checkNotNull(lastName, r'GpsData', 'lastName');
    BuiltValueNullFieldError.checkNotNull(active, r'GpsData', 'active');
  }

  @override
  GpsData rebuild(void Function(GpsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GpsDataBuilder toBuilder() => new GpsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GpsData &&
        G__typename == other.G__typename &&
        nationalId == other.nationalId &&
        healthProfessionalId == other.healthProfessionalId &&
        declaredReferrer == other.declaredReferrer &&
        incorrectReferrer == other.incorrectReferrer &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        exercices == other.exercices &&
        adresses == other.adresses &&
        role == other.role &&
        active == other.active;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, nationalId.hashCode);
    _$hash = $jc(_$hash, healthProfessionalId.hashCode);
    _$hash = $jc(_$hash, declaredReferrer.hashCode);
    _$hash = $jc(_$hash, incorrectReferrer.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, exercices.hashCode);
    _$hash = $jc(_$hash, adresses.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, active.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GpsData')
          ..add('G__typename', G__typename)
          ..add('nationalId', nationalId)
          ..add('healthProfessionalId', healthProfessionalId)
          ..add('declaredReferrer', declaredReferrer)
          ..add('incorrectReferrer', incorrectReferrer)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('exercices', exercices)
          ..add('adresses', adresses)
          ..add('role', role)
          ..add('active', active))
        .toString();
  }
}

class GpsDataBuilder implements Builder<GpsData, GpsDataBuilder> {
  _$GpsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _nationalId;
  String? get nationalId => _$this._nationalId;
  set nationalId(String? nationalId) => _$this._nationalId = nationalId;

  String? _healthProfessionalId;
  String? get healthProfessionalId => _$this._healthProfessionalId;
  set healthProfessionalId(String? healthProfessionalId) =>
      _$this._healthProfessionalId = healthProfessionalId;

  bool? _declaredReferrer;
  bool? get declaredReferrer => _$this._declaredReferrer;
  set declaredReferrer(bool? declaredReferrer) =>
      _$this._declaredReferrer = declaredReferrer;

  bool? _incorrectReferrer;
  bool? get incorrectReferrer => _$this._incorrectReferrer;
  set incorrectReferrer(bool? incorrectReferrer) =>
      _$this._incorrectReferrer = incorrectReferrer;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  ListBuilder<GpsData_exercices>? _exercices;
  ListBuilder<GpsData_exercices> get exercices =>
      _$this._exercices ??= new ListBuilder<GpsData_exercices>();
  set exercices(ListBuilder<GpsData_exercices>? exercices) =>
      _$this._exercices = exercices;

  ListBuilder<GpsData_adresses>? _adresses;
  ListBuilder<GpsData_adresses> get adresses =>
      _$this._adresses ??= new ListBuilder<GpsData_adresses>();
  set adresses(ListBuilder<GpsData_adresses>? adresses) =>
      _$this._adresses = adresses;

  _i1.GHealthProfessionalRoleEnum? _role;
  _i1.GHealthProfessionalRoleEnum? get role => _$this._role;
  set role(_i1.GHealthProfessionalRoleEnum? role) => _$this._role = role;

  bool? _active;
  bool? get active => _$this._active;
  set active(bool? active) => _$this._active = active;

  GpsDataBuilder() {
    GpsData._initializeBuilder(this);
  }

  GpsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _nationalId = $v.nationalId;
      _healthProfessionalId = $v.healthProfessionalId;
      _declaredReferrer = $v.declaredReferrer;
      _incorrectReferrer = $v.incorrectReferrer;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _exercices = $v.exercices?.toBuilder();
      _adresses = $v.adresses?.toBuilder();
      _role = $v.role;
      _active = $v.active;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GpsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GpsData;
  }

  @override
  void update(void Function(GpsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GpsData build() => _build();

  _$GpsData _build() {
    _$GpsData _$result;
    try {
      _$result = _$v ??
          new _$GpsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GpsData', 'G__typename'),
              nationalId: nationalId,
              healthProfessionalId: BuiltValueNullFieldError.checkNotNull(
                  healthProfessionalId, r'GpsData', 'healthProfessionalId'),
              declaredReferrer: BuiltValueNullFieldError.checkNotNull(
                  declaredReferrer, r'GpsData', 'declaredReferrer'),
              incorrectReferrer: BuiltValueNullFieldError.checkNotNull(
                  incorrectReferrer, r'GpsData', 'incorrectReferrer'),
              firstName: BuiltValueNullFieldError.checkNotNull(
                  firstName, r'GpsData', 'firstName'),
              lastName: BuiltValueNullFieldError.checkNotNull(
                  lastName, r'GpsData', 'lastName'),
              exercices: _exercices?.build(),
              adresses: _adresses?.build(),
              role: role,
              active: BuiltValueNullFieldError.checkNotNull(
                  active, r'GpsData', 'active'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'exercices';
        _exercices?.build();
        _$failedField = 'adresses';
        _adresses?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GpsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GpsData_exercices extends GpsData_exercices {
  @override
  final String G__typename;
  @override
  final String profession;
  @override
  final String? specialities;

  factory _$GpsData_exercices(
          [void Function(GpsData_exercicesBuilder)? updates]) =>
      (new GpsData_exercicesBuilder()..update(updates))._build();

  _$GpsData_exercices._(
      {required this.G__typename, required this.profession, this.specialities})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GpsData_exercices', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        profession, r'GpsData_exercices', 'profession');
  }

  @override
  GpsData_exercices rebuild(void Function(GpsData_exercicesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GpsData_exercicesBuilder toBuilder() =>
      new GpsData_exercicesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GpsData_exercices &&
        G__typename == other.G__typename &&
        profession == other.profession &&
        specialities == other.specialities;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, profession.hashCode);
    _$hash = $jc(_$hash, specialities.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GpsData_exercices')
          ..add('G__typename', G__typename)
          ..add('profession', profession)
          ..add('specialities', specialities))
        .toString();
  }
}

class GpsData_exercicesBuilder
    implements Builder<GpsData_exercices, GpsData_exercicesBuilder> {
  _$GpsData_exercices? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _profession;
  String? get profession => _$this._profession;
  set profession(String? profession) => _$this._profession = profession;

  String? _specialities;
  String? get specialities => _$this._specialities;
  set specialities(String? specialities) => _$this._specialities = specialities;

  GpsData_exercicesBuilder() {
    GpsData_exercices._initializeBuilder(this);
  }

  GpsData_exercicesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _profession = $v.profession;
      _specialities = $v.specialities;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GpsData_exercices other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GpsData_exercices;
  }

  @override
  void update(void Function(GpsData_exercicesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GpsData_exercices build() => _build();

  _$GpsData_exercices _build() {
    final _$result = _$v ??
        new _$GpsData_exercices._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GpsData_exercices', 'G__typename'),
            profession: BuiltValueNullFieldError.checkNotNull(
                profession, r'GpsData_exercices', 'profession'),
            specialities: specialities);
    replace(_$result);
    return _$result;
  }
}

class _$GpsData_adresses extends GpsData_adresses {
  @override
  final String G__typename;
  @override
  final String? adresseName;
  @override
  final String? cityZipCode;
  @override
  final String? roadNumber;
  @override
  final String? labelRoadType;
  @override
  final String? road;
  @override
  final String? commune;
  @override
  final String? numeroTelephone;

  factory _$GpsData_adresses(
          [void Function(GpsData_adressesBuilder)? updates]) =>
      (new GpsData_adressesBuilder()..update(updates))._build();

  _$GpsData_adresses._(
      {required this.G__typename,
      this.adresseName,
      this.cityZipCode,
      this.roadNumber,
      this.labelRoadType,
      this.road,
      this.commune,
      this.numeroTelephone})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GpsData_adresses', 'G__typename');
  }

  @override
  GpsData_adresses rebuild(void Function(GpsData_adressesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GpsData_adressesBuilder toBuilder() =>
      new GpsData_adressesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GpsData_adresses &&
        G__typename == other.G__typename &&
        adresseName == other.adresseName &&
        cityZipCode == other.cityZipCode &&
        roadNumber == other.roadNumber &&
        labelRoadType == other.labelRoadType &&
        road == other.road &&
        commune == other.commune &&
        numeroTelephone == other.numeroTelephone;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, adresseName.hashCode);
    _$hash = $jc(_$hash, cityZipCode.hashCode);
    _$hash = $jc(_$hash, roadNumber.hashCode);
    _$hash = $jc(_$hash, labelRoadType.hashCode);
    _$hash = $jc(_$hash, road.hashCode);
    _$hash = $jc(_$hash, commune.hashCode);
    _$hash = $jc(_$hash, numeroTelephone.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GpsData_adresses')
          ..add('G__typename', G__typename)
          ..add('adresseName', adresseName)
          ..add('cityZipCode', cityZipCode)
          ..add('roadNumber', roadNumber)
          ..add('labelRoadType', labelRoadType)
          ..add('road', road)
          ..add('commune', commune)
          ..add('numeroTelephone', numeroTelephone))
        .toString();
  }
}

class GpsData_adressesBuilder
    implements Builder<GpsData_adresses, GpsData_adressesBuilder> {
  _$GpsData_adresses? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _adresseName;
  String? get adresseName => _$this._adresseName;
  set adresseName(String? adresseName) => _$this._adresseName = adresseName;

  String? _cityZipCode;
  String? get cityZipCode => _$this._cityZipCode;
  set cityZipCode(String? cityZipCode) => _$this._cityZipCode = cityZipCode;

  String? _roadNumber;
  String? get roadNumber => _$this._roadNumber;
  set roadNumber(String? roadNumber) => _$this._roadNumber = roadNumber;

  String? _labelRoadType;
  String? get labelRoadType => _$this._labelRoadType;
  set labelRoadType(String? labelRoadType) =>
      _$this._labelRoadType = labelRoadType;

  String? _road;
  String? get road => _$this._road;
  set road(String? road) => _$this._road = road;

  String? _commune;
  String? get commune => _$this._commune;
  set commune(String? commune) => _$this._commune = commune;

  String? _numeroTelephone;
  String? get numeroTelephone => _$this._numeroTelephone;
  set numeroTelephone(String? numeroTelephone) =>
      _$this._numeroTelephone = numeroTelephone;

  GpsData_adressesBuilder() {
    GpsData_adresses._initializeBuilder(this);
  }

  GpsData_adressesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _adresseName = $v.adresseName;
      _cityZipCode = $v.cityZipCode;
      _roadNumber = $v.roadNumber;
      _labelRoadType = $v.labelRoadType;
      _road = $v.road;
      _commune = $v.commune;
      _numeroTelephone = $v.numeroTelephone;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GpsData_adresses other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GpsData_adresses;
  }

  @override
  void update(void Function(GpsData_adressesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GpsData_adresses build() => _build();

  _$GpsData_adresses _build() {
    final _$result = _$v ??
        new _$GpsData_adresses._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GpsData_adresses', 'G__typename'),
            adresseName: adresseName,
            cityZipCode: cityZipCode,
            roadNumber: roadNumber,
            labelRoadType: labelRoadType,
            road: road,
            commune: commune,
            numeroTelephone: numeroTelephone);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
