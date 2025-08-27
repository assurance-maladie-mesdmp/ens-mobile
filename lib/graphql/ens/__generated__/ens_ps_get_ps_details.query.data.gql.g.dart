// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_ps_get_ps_details.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_professionnels_de_sante_detailsData>
    _$ggetProfessionnelsDeSanteDetailsDataSerializer =
    new _$Gget_professionnels_de_sante_detailsDataSerializer();
Serializer<
        Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat>
    _$ggetProfessionnelsDeSanteDetailsDataGetHealthProfessionalReferentialByIdNatSerializer =
    new _$Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNatSerializer();
Serializer<
        Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat_adresses>
    _$ggetProfessionnelsDeSanteDetailsDataGetHealthProfessionalReferentialByIdNatAdressesSerializer =
    new _$Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat_adressesSerializer();

class _$Gget_professionnels_de_sante_detailsDataSerializer
    implements StructuredSerializer<Gget_professionnels_de_sante_detailsData> {
  @override
  final Iterable<Type> types = const [
    Gget_professionnels_de_sante_detailsData,
    _$Gget_professionnels_de_sante_detailsData
  ];
  @override
  final String wireName = 'Gget_professionnels_de_sante_detailsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_professionnels_de_sante_detailsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'getHealthProfessionalReferentialByIdNat',
      serializers.serialize(object.getHealthProfessionalReferentialByIdNat,
          specifiedType: const FullType(
              Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat)),
    ];

    return result;
  }

  @override
  Gget_professionnels_de_sante_detailsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_professionnels_de_sante_detailsDataBuilder();

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
        case 'getHealthProfessionalReferentialByIdNat':
          result.getHealthProfessionalReferentialByIdNat.replace(serializers
                  .deserialize(value,
                      specifiedType: const FullType(
                          Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat))!
              as Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNatSerializer
    implements
        StructuredSerializer<
            Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat> {
  @override
  final Iterable<Type> types = const [
    Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat,
    _$Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat
  ];
  @override
  final String wireName =
      'Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'idNat',
      serializers.serialize(object.idNat,
          specifiedType: const FullType(String)),
      'firstName',
      serializers.serialize(object.firstName,
          specifiedType: const FullType(String)),
      'lastName',
      serializers.serialize(object.lastName,
          specifiedType: const FullType(String)),
      'isContactable',
      serializers.serialize(object.isContactable,
          specifiedType: const FullType(bool)),
      'active',
      serializers.serialize(object.active, specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.profession;
    if (value != null) {
      result
        ..add('profession')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.specialities;
    if (value != null) {
      result
        ..add('specialities')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.shortLabelSpecialities;
    if (value != null) {
      result
        ..add('shortLabelSpecialities')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.contactId;
    if (value != null) {
      result
        ..add('contactId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.role;
    if (value != null) {
      result
        ..add('role')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GHealthProfessionalRoleEnum)));
    }
    value = object.adresses;
    if (value != null) {
      result
        ..add('adresses')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat_adresses)
            ])));
    }
    return result;
  }

  @override
  Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNatBuilder();

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
        case 'idNat':
          result.idNat = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'profession':
          result.profession = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'specialities':
          result.specialities = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'shortLabelSpecialities':
          result.shortLabelSpecialities = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isContactable':
          result.isContactable = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'contactId':
          result.contactId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'role':
          result.role = serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i2.GHealthProfessionalRoleEnum))
              as _i2.GHealthProfessionalRoleEnum?;
          break;
        case 'adresses':
          result.adresses.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat_adresses)
              ]))! as BuiltList<Object?>);
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

class _$Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat_adressesSerializer
    implements
        StructuredSerializer<
            Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat_adresses> {
  @override
  final Iterable<Type> types = const [
    Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat_adresses,
    _$Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat_adresses
  ];
  @override
  final String wireName =
      'Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat_adresses';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat_adresses
          object,
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
  Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat_adresses
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat_adressesBuilder();

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

class _$Gget_professionnels_de_sante_detailsData
    extends Gget_professionnels_de_sante_detailsData {
  @override
  final String G__typename;
  @override
  final Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat
      getHealthProfessionalReferentialByIdNat;

  factory _$Gget_professionnels_de_sante_detailsData(
          [void Function(Gget_professionnels_de_sante_detailsDataBuilder)?
              updates]) =>
      (new Gget_professionnels_de_sante_detailsDataBuilder()..update(updates))
          ._build();

  _$Gget_professionnels_de_sante_detailsData._(
      {required this.G__typename,
      required this.getHealthProfessionalReferentialByIdNat})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_professionnels_de_sante_detailsData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        getHealthProfessionalReferentialByIdNat,
        r'Gget_professionnels_de_sante_detailsData',
        'getHealthProfessionalReferentialByIdNat');
  }

  @override
  Gget_professionnels_de_sante_detailsData rebuild(
          void Function(Gget_professionnels_de_sante_detailsDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_professionnels_de_sante_detailsDataBuilder toBuilder() =>
      new Gget_professionnels_de_sante_detailsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_professionnels_de_sante_detailsData &&
        G__typename == other.G__typename &&
        getHealthProfessionalReferentialByIdNat ==
            other.getHealthProfessionalReferentialByIdNat;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getHealthProfessionalReferentialByIdNat.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_professionnels_de_sante_detailsData')
          ..add('G__typename', G__typename)
          ..add('getHealthProfessionalReferentialByIdNat',
              getHealthProfessionalReferentialByIdNat))
        .toString();
  }
}

class Gget_professionnels_de_sante_detailsDataBuilder
    implements
        Builder<Gget_professionnels_de_sante_detailsData,
            Gget_professionnels_de_sante_detailsDataBuilder> {
  _$Gget_professionnels_de_sante_detailsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNatBuilder?
      _getHealthProfessionalReferentialByIdNat;
  Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNatBuilder
      get getHealthProfessionalReferentialByIdNat => _$this
              ._getHealthProfessionalReferentialByIdNat ??=
          new Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNatBuilder();
  set getHealthProfessionalReferentialByIdNat(
          Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNatBuilder?
              getHealthProfessionalReferentialByIdNat) =>
      _$this._getHealthProfessionalReferentialByIdNat =
          getHealthProfessionalReferentialByIdNat;

  Gget_professionnels_de_sante_detailsDataBuilder() {
    Gget_professionnels_de_sante_detailsData._initializeBuilder(this);
  }

  Gget_professionnels_de_sante_detailsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getHealthProfessionalReferentialByIdNat =
          $v.getHealthProfessionalReferentialByIdNat.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_professionnels_de_sante_detailsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_professionnels_de_sante_detailsData;
  }

  @override
  void update(
      void Function(Gget_professionnels_de_sante_detailsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_professionnels_de_sante_detailsData build() => _build();

  _$Gget_professionnels_de_sante_detailsData _build() {
    _$Gget_professionnels_de_sante_detailsData _$result;
    try {
      _$result = _$v ??
          new _$Gget_professionnels_de_sante_detailsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gget_professionnels_de_sante_detailsData', 'G__typename'),
              getHealthProfessionalReferentialByIdNat:
                  getHealthProfessionalReferentialByIdNat.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getHealthProfessionalReferentialByIdNat';
        getHealthProfessionalReferentialByIdNat.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_professionnels_de_sante_detailsData',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat
    extends Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat {
  @override
  final String G__typename;
  @override
  final String idNat;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String? profession;
  @override
  final String? specialities;
  @override
  final String? shortLabelSpecialities;
  @override
  final bool isContactable;
  @override
  final String? contactId;
  @override
  final _i2.GHealthProfessionalRoleEnum? role;
  @override
  final BuiltList<
          Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat_adresses>?
      adresses;
  @override
  final bool active;

  factory _$Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat(
          [void Function(
                  Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNatBuilder)?
              updates]) =>
      (new Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNatBuilder()
            ..update(updates))
          ._build();

  _$Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat._(
      {required this.G__typename,
      required this.idNat,
      required this.firstName,
      required this.lastName,
      this.profession,
      this.specialities,
      this.shortLabelSpecialities,
      required this.isContactable,
      this.contactId,
      this.role,
      this.adresses,
      required this.active})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        idNat,
        r'Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat',
        'idNat');
    BuiltValueNullFieldError.checkNotNull(
        firstName,
        r'Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat',
        'firstName');
    BuiltValueNullFieldError.checkNotNull(
        lastName,
        r'Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat',
        'lastName');
    BuiltValueNullFieldError.checkNotNull(
        isContactable,
        r'Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat',
        'isContactable');
    BuiltValueNullFieldError.checkNotNull(
        active,
        r'Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat',
        'active');
  }

  @override
  Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat
      rebuild(
              void Function(
                      Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNatBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNatBuilder
      toBuilder() =>
          new Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNatBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat &&
        G__typename == other.G__typename &&
        idNat == other.idNat &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        profession == other.profession &&
        specialities == other.specialities &&
        shortLabelSpecialities == other.shortLabelSpecialities &&
        isContactable == other.isContactable &&
        contactId == other.contactId &&
        role == other.role &&
        adresses == other.adresses &&
        active == other.active;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, idNat.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, profession.hashCode);
    _$hash = $jc(_$hash, specialities.hashCode);
    _$hash = $jc(_$hash, shortLabelSpecialities.hashCode);
    _$hash = $jc(_$hash, isContactable.hashCode);
    _$hash = $jc(_$hash, contactId.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, adresses.hashCode);
    _$hash = $jc(_$hash, active.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat')
          ..add('G__typename', G__typename)
          ..add('idNat', idNat)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('profession', profession)
          ..add('specialities', specialities)
          ..add('shortLabelSpecialities', shortLabelSpecialities)
          ..add('isContactable', isContactable)
          ..add('contactId', contactId)
          ..add('role', role)
          ..add('adresses', adresses)
          ..add('active', active))
        .toString();
  }
}

class Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNatBuilder
    implements
        Builder<
            Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat,
            Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNatBuilder> {
  _$Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _idNat;
  String? get idNat => _$this._idNat;
  set idNat(String? idNat) => _$this._idNat = idNat;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _profession;
  String? get profession => _$this._profession;
  set profession(String? profession) => _$this._profession = profession;

  String? _specialities;
  String? get specialities => _$this._specialities;
  set specialities(String? specialities) => _$this._specialities = specialities;

  String? _shortLabelSpecialities;
  String? get shortLabelSpecialities => _$this._shortLabelSpecialities;
  set shortLabelSpecialities(String? shortLabelSpecialities) =>
      _$this._shortLabelSpecialities = shortLabelSpecialities;

  bool? _isContactable;
  bool? get isContactable => _$this._isContactable;
  set isContactable(bool? isContactable) =>
      _$this._isContactable = isContactable;

  String? _contactId;
  String? get contactId => _$this._contactId;
  set contactId(String? contactId) => _$this._contactId = contactId;

  _i2.GHealthProfessionalRoleEnum? _role;
  _i2.GHealthProfessionalRoleEnum? get role => _$this._role;
  set role(_i2.GHealthProfessionalRoleEnum? role) => _$this._role = role;

  ListBuilder<
          Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat_adresses>?
      _adresses;
  ListBuilder<
          Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat_adresses>
      get adresses => _$this._adresses ??= new ListBuilder<
          Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat_adresses>();
  set adresses(
          ListBuilder<
                  Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat_adresses>?
              adresses) =>
      _$this._adresses = adresses;

  bool? _active;
  bool? get active => _$this._active;
  set active(bool? active) => _$this._active = active;

  Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNatBuilder() {
    Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat
        ._initializeBuilder(this);
  }

  Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNatBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _idNat = $v.idNat;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _profession = $v.profession;
      _specialities = $v.specialities;
      _shortLabelSpecialities = $v.shortLabelSpecialities;
      _isContactable = $v.isContactable;
      _contactId = $v.contactId;
      _role = $v.role;
      _adresses = $v.adresses?.toBuilder();
      _active = $v.active;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat;
  }

  @override
  void update(
      void Function(
              Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNatBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat
      build() => _build();

  _$Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat
      _build() {
    _$Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat
        _$result;
    try {
      _$result = _$v ??
          new _$Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat',
                  'G__typename'),
              idNat: BuiltValueNullFieldError.checkNotNull(
                  idNat, r'Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat', 'idNat'),
              firstName: BuiltValueNullFieldError.checkNotNull(
                  firstName,
                  r'Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat',
                  'firstName'),
              lastName: BuiltValueNullFieldError.checkNotNull(
                  lastName,
                  r'Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat',
                  'lastName'),
              profession: profession,
              specialities: specialities,
              shortLabelSpecialities: shortLabelSpecialities,
              isContactable: BuiltValueNullFieldError.checkNotNull(
                  isContactable,
                  r'Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat',
                  'isContactable'),
              contactId: contactId,
              role: role,
              adresses: _adresses?.build(),
              active: BuiltValueNullFieldError.checkNotNull(active, r'Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat', 'active'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'adresses';
        _adresses?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat_adresses
    extends Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat_adresses {
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

  factory _$Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat_adresses(
          [void Function(
                  Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat_adressesBuilder)?
              updates]) =>
      (new Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat_adressesBuilder()
            ..update(updates))
          ._build();

  _$Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat_adresses._(
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
        G__typename,
        r'Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat_adresses',
        'G__typename');
  }

  @override
  Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat_adresses
      rebuild(
              void Function(
                      Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat_adressesBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat_adressesBuilder
      toBuilder() =>
          new Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat_adressesBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat_adresses &&
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
    return (newBuiltValueToStringHelper(
            r'Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat_adresses')
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

class Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat_adressesBuilder
    implements
        Builder<
            Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat_adresses,
            Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat_adressesBuilder> {
  _$Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat_adresses?
      _$v;

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

  Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat_adressesBuilder() {
    Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat_adresses
        ._initializeBuilder(this);
  }

  Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat_adressesBuilder
      get _$this {
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
  void replace(
      Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat_adresses
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat_adresses;
  }

  @override
  void update(
      void Function(
              Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat_adressesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat_adresses
      build() => _build();

  _$Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat_adresses
      _build() {
    final _$result = _$v ??
        new _$Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat_adresses
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat_adresses',
                'G__typename'),
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
