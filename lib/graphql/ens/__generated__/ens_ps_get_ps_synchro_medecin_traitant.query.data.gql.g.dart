// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_ps_get_ps_synchro_medecin_traitant.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_pml_professionnels_sante_synchro_medecin_traitantData>
    _$ggetPmlProfessionnelsSanteSynchroMedecinTraitantDataSerializer =
    new _$Gget_pml_professionnels_sante_synchro_medecin_traitantDataSerializer();
Serializer<
        Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt>
    _$ggetPmlProfessionnelsSanteSynchroMedecinTraitantDataGetHealthProfessionalsAndSynchroMtSerializer =
    new _$Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMtSerializer();
Serializer<
        Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals>
    _$ggetPmlProfessionnelsSanteSynchroMedecinTraitantDataGetHealthProfessionalsAndSynchroMtHealthProfessionalsSerializer =
    new _$Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionalsSerializer();
Serializer<
        Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_exercices>
    _$ggetPmlProfessionnelsSanteSynchroMedecinTraitantDataGetHealthProfessionalsAndSynchroMtHealthProfessionalsExercicesSerializer =
    new _$Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_exercicesSerializer();
Serializer<
        Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_adresses>
    _$ggetPmlProfessionnelsSanteSynchroMedecinTraitantDataGetHealthProfessionalsAndSynchroMtHealthProfessionalsAdressesSerializer =
    new _$Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_adressesSerializer();

class _$Gget_pml_professionnels_sante_synchro_medecin_traitantDataSerializer
    implements
        StructuredSerializer<
            Gget_pml_professionnels_sante_synchro_medecin_traitantData> {
  @override
  final Iterable<Type> types = const [
    Gget_pml_professionnels_sante_synchro_medecin_traitantData,
    _$Gget_pml_professionnels_sante_synchro_medecin_traitantData
  ];
  @override
  final String wireName =
      'Gget_pml_professionnels_sante_synchro_medecin_traitantData';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_pml_professionnels_sante_synchro_medecin_traitantData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'getHealthProfessionalsAndSynchroMt',
      serializers.serialize(object.getHealthProfessionalsAndSynchroMt,
          specifiedType: const FullType(
              Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt)),
    ];

    return result;
  }

  @override
  Gget_pml_professionnels_sante_synchro_medecin_traitantData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_pml_professionnels_sante_synchro_medecin_traitantDataBuilder();

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
        case 'getHealthProfessionalsAndSynchroMt':
          result.getHealthProfessionalsAndSynchroMt.replace(serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                      Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt))!
              as Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMtSerializer
    implements
        StructuredSerializer<
            Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt> {
  @override
  final Iterable<Type> types = const [
    Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt,
    _$Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt
  ];
  @override
  final String wireName =
      'Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'healthProfessionals',
      serializers.serialize(object.healthProfessionals,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals)
          ])),
    ];

    return result;
  }

  @override
  Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMtBuilder();

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
        case 'healthProfessionals':
          result.healthProfessionals.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionalsSerializer
    implements
        StructuredSerializer<
            Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals> {
  @override
  final Iterable<Type> types = const [
    Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals,
    _$Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals
  ];
  @override
  final String wireName =
      'Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals
          object,
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
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_exercices)
            ])));
    }
    value = object.adresses;
    if (value != null) {
      result
        ..add('adresses')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_adresses)
            ])));
    }
    value = object.role;
    if (value != null) {
      result
        ..add('role')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i3.GHealthProfessionalRoleEnum)));
    }
    return result;
  }

  @override
  Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionalsBuilder();

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
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_exercices)
              ]))! as BuiltList<Object?>);
          break;
        case 'adresses':
          result.adresses.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_adresses)
              ]))! as BuiltList<Object?>);
          break;
        case 'role':
          result.role = serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i3.GHealthProfessionalRoleEnum))
              as _i3.GHealthProfessionalRoleEnum?;
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

class _$Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_exercicesSerializer
    implements
        StructuredSerializer<
            Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_exercices> {
  @override
  final Iterable<Type> types = const [
    Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_exercices,
    _$Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_exercices
  ];
  @override
  final String wireName =
      'Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_exercices';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_exercices
          object,
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
  Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_exercices
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_exercicesBuilder();

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

class _$Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_adressesSerializer
    implements
        StructuredSerializer<
            Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_adresses> {
  @override
  final Iterable<Type> types = const [
    Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_adresses,
    _$Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_adresses
  ];
  @override
  final String wireName =
      'Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_adresses';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_adresses
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
  Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_adresses
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_adressesBuilder();

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

class _$Gget_pml_professionnels_sante_synchro_medecin_traitantData
    extends Gget_pml_professionnels_sante_synchro_medecin_traitantData {
  @override
  final String G__typename;
  @override
  final Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt
      getHealthProfessionalsAndSynchroMt;

  factory _$Gget_pml_professionnels_sante_synchro_medecin_traitantData(
          [void Function(
                  Gget_pml_professionnels_sante_synchro_medecin_traitantDataBuilder)?
              updates]) =>
      (new Gget_pml_professionnels_sante_synchro_medecin_traitantDataBuilder()
            ..update(updates))
          ._build();

  _$Gget_pml_professionnels_sante_synchro_medecin_traitantData._(
      {required this.G__typename,
      required this.getHealthProfessionalsAndSynchroMt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_pml_professionnels_sante_synchro_medecin_traitantData',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        getHealthProfessionalsAndSynchroMt,
        r'Gget_pml_professionnels_sante_synchro_medecin_traitantData',
        'getHealthProfessionalsAndSynchroMt');
  }

  @override
  Gget_pml_professionnels_sante_synchro_medecin_traitantData rebuild(
          void Function(
                  Gget_pml_professionnels_sante_synchro_medecin_traitantDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_pml_professionnels_sante_synchro_medecin_traitantDataBuilder
      toBuilder() =>
          new Gget_pml_professionnels_sante_synchro_medecin_traitantDataBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_pml_professionnels_sante_synchro_medecin_traitantData &&
        G__typename == other.G__typename &&
        getHealthProfessionalsAndSynchroMt ==
            other.getHealthProfessionalsAndSynchroMt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getHealthProfessionalsAndSynchroMt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_pml_professionnels_sante_synchro_medecin_traitantData')
          ..add('G__typename', G__typename)
          ..add('getHealthProfessionalsAndSynchroMt',
              getHealthProfessionalsAndSynchroMt))
        .toString();
  }
}

class Gget_pml_professionnels_sante_synchro_medecin_traitantDataBuilder
    implements
        Builder<Gget_pml_professionnels_sante_synchro_medecin_traitantData,
            Gget_pml_professionnels_sante_synchro_medecin_traitantDataBuilder> {
  _$Gget_pml_professionnels_sante_synchro_medecin_traitantData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMtBuilder?
      _getHealthProfessionalsAndSynchroMt;
  Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMtBuilder
      get getHealthProfessionalsAndSynchroMt => _$this
              ._getHealthProfessionalsAndSynchroMt ??=
          new Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMtBuilder();
  set getHealthProfessionalsAndSynchroMt(
          Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMtBuilder?
              getHealthProfessionalsAndSynchroMt) =>
      _$this._getHealthProfessionalsAndSynchroMt =
          getHealthProfessionalsAndSynchroMt;

  Gget_pml_professionnels_sante_synchro_medecin_traitantDataBuilder() {
    Gget_pml_professionnels_sante_synchro_medecin_traitantData
        ._initializeBuilder(this);
  }

  Gget_pml_professionnels_sante_synchro_medecin_traitantDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getHealthProfessionalsAndSynchroMt =
          $v.getHealthProfessionalsAndSynchroMt.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_pml_professionnels_sante_synchro_medecin_traitantData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_pml_professionnels_sante_synchro_medecin_traitantData;
  }

  @override
  void update(
      void Function(
              Gget_pml_professionnels_sante_synchro_medecin_traitantDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_pml_professionnels_sante_synchro_medecin_traitantData build() =>
      _build();

  _$Gget_pml_professionnels_sante_synchro_medecin_traitantData _build() {
    _$Gget_pml_professionnels_sante_synchro_medecin_traitantData _$result;
    try {
      _$result = _$v ??
          new _$Gget_pml_professionnels_sante_synchro_medecin_traitantData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_pml_professionnels_sante_synchro_medecin_traitantData',
                  'G__typename'),
              getHealthProfessionalsAndSynchroMt:
                  getHealthProfessionalsAndSynchroMt.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getHealthProfessionalsAndSynchroMt';
        getHealthProfessionalsAndSynchroMt.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_pml_professionnels_sante_synchro_medecin_traitantData',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt
    extends Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt {
  @override
  final String G__typename;
  @override
  final BuiltList<
          Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals>
      healthProfessionals;

  factory _$Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt(
          [void Function(
                  Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMtBuilder)?
              updates]) =>
      (new Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMtBuilder()
            ..update(updates))
          ._build();

  _$Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt._(
      {required this.G__typename, required this.healthProfessionals})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        healthProfessionals,
        r'Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt',
        'healthProfessionals');
  }

  @override
  Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt
      rebuild(
              void Function(
                      Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMtBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMtBuilder
      toBuilder() =>
          new Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMtBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt &&
        G__typename == other.G__typename &&
        healthProfessionals == other.healthProfessionals;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, healthProfessionals.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt')
          ..add('G__typename', G__typename)
          ..add('healthProfessionals', healthProfessionals))
        .toString();
  }
}

class Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMtBuilder
    implements
        Builder<
            Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt,
            Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMtBuilder> {
  _$Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<
          Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals>?
      _healthProfessionals;
  ListBuilder<
          Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals>
      get healthProfessionals => _$this._healthProfessionals ??= new ListBuilder<
          Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals>();
  set healthProfessionals(
          ListBuilder<
                  Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals>?
              healthProfessionals) =>
      _$this._healthProfessionals = healthProfessionals;

  Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMtBuilder() {
    Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt
        ._initializeBuilder(this);
  }

  Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMtBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _healthProfessionals = $v.healthProfessionals.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt;
  }

  @override
  void update(
      void Function(
              Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMtBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt
      build() => _build();

  _$Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt
      _build() {
    _$Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt
        _$result;
    try {
      _$result = _$v ??
          new _$Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt
              ._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt',
                  'G__typename'),
              healthProfessionals: healthProfessionals.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'healthProfessionals';
        healthProfessionals.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals
    extends Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals {
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
  final BuiltList<
          Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_exercices>?
      exercices;
  @override
  final BuiltList<
          Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_adresses>?
      adresses;
  @override
  final _i3.GHealthProfessionalRoleEnum? role;
  @override
  final bool active;

  factory _$Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals(
          [void Function(
                  Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionalsBuilder)?
              updates]) =>
      (new Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionalsBuilder()
            ..update(updates))
          ._build();

  _$Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals._(
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
        G__typename,
        r'Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        healthProfessionalId,
        r'Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals',
        'healthProfessionalId');
    BuiltValueNullFieldError.checkNotNull(
        declaredReferrer,
        r'Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals',
        'declaredReferrer');
    BuiltValueNullFieldError.checkNotNull(
        incorrectReferrer,
        r'Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals',
        'incorrectReferrer');
    BuiltValueNullFieldError.checkNotNull(
        firstName,
        r'Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals',
        'firstName');
    BuiltValueNullFieldError.checkNotNull(
        lastName,
        r'Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals',
        'lastName');
    BuiltValueNullFieldError.checkNotNull(
        active,
        r'Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals',
        'active');
  }

  @override
  Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals
      rebuild(
              void Function(
                      Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionalsBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionalsBuilder
      toBuilder() =>
          new Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionalsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals &&
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
    return (newBuiltValueToStringHelper(
            r'Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals')
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

class Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionalsBuilder
    implements
        Builder<
            Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals,
            Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionalsBuilder> {
  _$Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals?
      _$v;

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

  ListBuilder<
          Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_exercices>?
      _exercices;
  ListBuilder<
          Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_exercices>
      get exercices => _$this._exercices ??= new ListBuilder<
          Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_exercices>();
  set exercices(
          ListBuilder<
                  Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_exercices>?
              exercices) =>
      _$this._exercices = exercices;

  ListBuilder<
          Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_adresses>?
      _adresses;
  ListBuilder<
          Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_adresses>
      get adresses => _$this._adresses ??= new ListBuilder<
          Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_adresses>();
  set adresses(
          ListBuilder<
                  Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_adresses>?
              adresses) =>
      _$this._adresses = adresses;

  _i3.GHealthProfessionalRoleEnum? _role;
  _i3.GHealthProfessionalRoleEnum? get role => _$this._role;
  set role(_i3.GHealthProfessionalRoleEnum? role) => _$this._role = role;

  bool? _active;
  bool? get active => _$this._active;
  set active(bool? active) => _$this._active = active;

  Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionalsBuilder() {
    Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals
        ._initializeBuilder(this);
  }

  Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionalsBuilder
      get _$this {
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
  void replace(
      Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals;
  }

  @override
  void update(
      void Function(
              Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionalsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals
      build() => _build();

  _$Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals
      _build() {
    _$Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals
        _$result;
    try {
      _$result = _$v ??
          new _$Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals', 'G__typename'),
              nationalId: nationalId,
              healthProfessionalId: BuiltValueNullFieldError.checkNotNull(
                  healthProfessionalId,
                  r'Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals',
                  'healthProfessionalId'),
              declaredReferrer: BuiltValueNullFieldError.checkNotNull(
                  declaredReferrer,
                  r'Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals',
                  'declaredReferrer'),
              incorrectReferrer: BuiltValueNullFieldError.checkNotNull(
                  incorrectReferrer,
                  r'Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals',
                  'incorrectReferrer'),
              firstName: BuiltValueNullFieldError.checkNotNull(
                  firstName, r'Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals', 'firstName'),
              lastName: BuiltValueNullFieldError.checkNotNull(lastName, r'Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals', 'lastName'),
              exercices: _exercices?.build(),
              adresses: _adresses?.build(),
              role: role,
              active: BuiltValueNullFieldError.checkNotNull(active, r'Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals', 'active'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'exercices';
        _exercices?.build();
        _$failedField = 'adresses';
        _adresses?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_exercices
    extends Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_exercices {
  @override
  final String G__typename;
  @override
  final String profession;
  @override
  final String? specialities;

  factory _$Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_exercices(
          [void Function(
                  Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_exercicesBuilder)?
              updates]) =>
      (new Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_exercicesBuilder()
            ..update(updates))
          ._build();

  _$Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_exercices._(
      {required this.G__typename, required this.profession, this.specialities})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_exercices',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        profession,
        r'Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_exercices',
        'profession');
  }

  @override
  Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_exercices
      rebuild(
              void Function(
                      Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_exercicesBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_exercicesBuilder
      toBuilder() =>
          new Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_exercicesBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_exercices &&
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
    return (newBuiltValueToStringHelper(
            r'Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_exercices')
          ..add('G__typename', G__typename)
          ..add('profession', profession)
          ..add('specialities', specialities))
        .toString();
  }
}

class Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_exercicesBuilder
    implements
        Builder<
            Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_exercices,
            Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_exercicesBuilder> {
  _$Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_exercices?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _profession;
  String? get profession => _$this._profession;
  set profession(String? profession) => _$this._profession = profession;

  String? _specialities;
  String? get specialities => _$this._specialities;
  set specialities(String? specialities) => _$this._specialities = specialities;

  Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_exercicesBuilder() {
    Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_exercices
        ._initializeBuilder(this);
  }

  Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_exercicesBuilder
      get _$this {
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
  void replace(
      Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_exercices
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_exercices;
  }

  @override
  void update(
      void Function(
              Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_exercicesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_exercices
      build() => _build();

  _$Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_exercices
      _build() {
    final _$result = _$v ??
        new _$Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_exercices
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_exercices',
                'G__typename'),
            profession: BuiltValueNullFieldError.checkNotNull(
                profession,
                r'Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_exercices',
                'profession'),
            specialities: specialities);
    replace(_$result);
    return _$result;
  }
}

class _$Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_adresses
    extends Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_adresses {
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

  factory _$Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_adresses(
          [void Function(
                  Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_adressesBuilder)?
              updates]) =>
      (new Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_adressesBuilder()
            ..update(updates))
          ._build();

  _$Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_adresses._(
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
        r'Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_adresses',
        'G__typename');
  }

  @override
  Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_adresses
      rebuild(
              void Function(
                      Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_adressesBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_adressesBuilder
      toBuilder() =>
          new Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_adressesBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_adresses &&
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
            r'Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_adresses')
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

class Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_adressesBuilder
    implements
        Builder<
            Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_adresses,
            Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_adressesBuilder> {
  _$Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_adresses?
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

  Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_adressesBuilder() {
    Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_adresses
        ._initializeBuilder(this);
  }

  Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_adressesBuilder
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
      Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_adresses
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_adresses;
  }

  @override
  void update(
      void Function(
              Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_adressesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_adresses
      build() => _build();

  _$Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_adresses
      _build() {
    final _$result = _$v ??
        new _$Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_adresses
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_adresses',
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
