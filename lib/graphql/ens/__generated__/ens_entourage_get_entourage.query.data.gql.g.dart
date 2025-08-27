// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_entourage_get_entourage.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_entourage_contactData> _$ggetEntourageContactDataSerializer =
    new _$Gget_entourage_contactDataSerializer();
Serializer<Gget_entourage_contactData_getWishes>
    _$ggetEntourageContactDataGetWishesSerializer =
    new _$Gget_entourage_contactData_getWishesSerializer();
Serializer<Gget_entourage_contactData_getWishes_structure>
    _$ggetEntourageContactDataGetWishesStructureSerializer =
    new _$Gget_entourage_contactData_getWishes_structureSerializer();
Serializer<Gget_entourage_contactData_getWishes_structure_emergencyContacts>
    _$ggetEntourageContactDataGetWishesStructureEmergencyContactsSerializer =
    new _$Gget_entourage_contactData_getWishes_structure_emergencyContactsSerializer();
Serializer<Gget_entourage_contactData_getWishes_structure_trustedPerson>
    _$ggetEntourageContactDataGetWishesStructureTrustedPersonSerializer =
    new _$Gget_entourage_contactData_getWishes_structure_trustedPersonSerializer();
Serializer<Gget_entourage_contactData_getWishes_structure_caregiverPersons>
    _$ggetEntourageContactDataGetWishesStructureCaregiverPersonsSerializer =
    new _$Gget_entourage_contactData_getWishes_structure_caregiverPersonsSerializer();
Serializer<Gget_entourage_contactData_getWishes_structure_helpedPersons>
    _$ggetEntourageContactDataGetWishesStructureHelpedPersonsSerializer =
    new _$Gget_entourage_contactData_getWishes_structure_helpedPersonsSerializer();

class _$Gget_entourage_contactDataSerializer
    implements StructuredSerializer<Gget_entourage_contactData> {
  @override
  final Iterable<Type> types = const [
    Gget_entourage_contactData,
    _$Gget_entourage_contactData
  ];
  @override
  final String wireName = 'Gget_entourage_contactData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_entourage_contactData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'getWishes',
      serializers.serialize(object.getWishes,
          specifiedType: const FullType(Gget_entourage_contactData_getWishes)),
    ];

    return result;
  }

  @override
  Gget_entourage_contactData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_entourage_contactDataBuilder();

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
        case 'getWishes':
          result.getWishes.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(Gget_entourage_contactData_getWishes))!
              as Gget_entourage_contactData_getWishes);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_entourage_contactData_getWishesSerializer
    implements StructuredSerializer<Gget_entourage_contactData_getWishes> {
  @override
  final Iterable<Type> types = const [
    Gget_entourage_contactData_getWishes,
    _$Gget_entourage_contactData_getWishes
  ];
  @override
  final String wireName = 'Gget_entourage_contactData_getWishes';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_entourage_contactData_getWishes object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'structure',
      serializers.serialize(object.structure,
          specifiedType:
              const FullType(Gget_entourage_contactData_getWishes_structure)),
    ];

    return result;
  }

  @override
  Gget_entourage_contactData_getWishes deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_entourage_contactData_getWishesBuilder();

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
        case 'structure':
          result.structure.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_entourage_contactData_getWishes_structure))!
              as Gget_entourage_contactData_getWishes_structure);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_entourage_contactData_getWishes_structureSerializer
    implements
        StructuredSerializer<Gget_entourage_contactData_getWishes_structure> {
  @override
  final Iterable<Type> types = const [
    Gget_entourage_contactData_getWishes_structure,
    _$Gget_entourage_contactData_getWishes_structure
  ];
  @override
  final String wireName = 'Gget_entourage_contactData_getWishes_structure';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_entourage_contactData_getWishes_structure object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.emergencyContacts;
    if (value != null) {
      result
        ..add('emergencyContacts')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  Gget_entourage_contactData_getWishes_structure_emergencyContacts)
            ])));
    }
    value = object.trustedPerson;
    if (value != null) {
      result
        ..add('trustedPerson')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Gget_entourage_contactData_getWishes_structure_trustedPerson)));
    }
    value = object.caregiverPersons;
    if (value != null) {
      result
        ..add('caregiverPersons')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  Gget_entourage_contactData_getWishes_structure_caregiverPersons)
            ])));
    }
    value = object.helpedPersons;
    if (value != null) {
      result
        ..add('helpedPersons')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  Gget_entourage_contactData_getWishes_structure_helpedPersons)
            ])));
    }
    value = object.informedAboutOrganDonation;
    if (value != null) {
      result
        ..add('informedAboutOrganDonation')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  Gget_entourage_contactData_getWishes_structure deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_entourage_contactData_getWishes_structureBuilder();

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
        case 'emergencyContacts':
          result.emergencyContacts.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_entourage_contactData_getWishes_structure_emergencyContacts)
              ]))! as BuiltList<Object?>);
          break;
        case 'trustedPerson':
          result.trustedPerson.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_entourage_contactData_getWishes_structure_trustedPerson))!
              as Gget_entourage_contactData_getWishes_structure_trustedPerson);
          break;
        case 'caregiverPersons':
          result.caregiverPersons.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_entourage_contactData_getWishes_structure_caregiverPersons)
              ]))! as BuiltList<Object?>);
          break;
        case 'helpedPersons':
          result.helpedPersons.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_entourage_contactData_getWishes_structure_helpedPersons)
              ]))! as BuiltList<Object?>);
          break;
        case 'informedAboutOrganDonation':
          result.informedAboutOrganDonation = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_entourage_contactData_getWishes_structure_emergencyContactsSerializer
    implements
        StructuredSerializer<
            Gget_entourage_contactData_getWishes_structure_emergencyContacts> {
  @override
  final Iterable<Type> types = const [
    Gget_entourage_contactData_getWishes_structure_emergencyContacts,
    _$Gget_entourage_contactData_getWishes_structure_emergencyContacts
  ];
  @override
  final String wireName =
      'Gget_entourage_contactData_getWishes_structure_emergencyContacts';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_entourage_contactData_getWishes_structure_emergencyContacts object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'idContact',
      serializers.serialize(object.idContact,
          specifiedType: const FullType(String)),
      'contactType',
      serializers.serialize(object.contactType,
          specifiedType: const FullType(_i3.GContactType)),
    ];
    Object? value;
    value = object.fullName;
    if (value != null) {
      result
        ..add('fullName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
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
    value = object.relation;
    if (value != null) {
      result
        ..add('relation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i3.GEntourageRelation)));
    }
    value = object.fixedLineNumber;
    if (value != null) {
      result
        ..add('fixedLineNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mobileNumber;
    if (value != null) {
      result
        ..add('mobileNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.emailAddress;
    if (value != null) {
      result
        ..add('emailAddress')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.streetAddressLine;
    if (value != null) {
      result
        ..add('streetAddressLine')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.postalCode;
    if (value != null) {
      result
        ..add('postalCode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.city;
    if (value != null) {
      result
        ..add('city')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.country;
    if (value != null) {
      result
        ..add('country')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Gget_entourage_contactData_getWishes_structure_emergencyContacts deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_entourage_contactData_getWishes_structure_emergencyContactsBuilder();

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
        case 'idContact':
          result.idContact = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'fullName':
          result.fullName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'contactType':
          result.contactType = serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GContactType))!
              as _i3.GContactType;
          break;
        case 'relation':
          result.relation = serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GEntourageRelation))
              as _i3.GEntourageRelation?;
          break;
        case 'fixedLineNumber':
          result.fixedLineNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'mobileNumber':
          result.mobileNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'emailAddress':
          result.emailAddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'streetAddressLine':
          result.streetAddressLine = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'postalCode':
          result.postalCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_entourage_contactData_getWishes_structure_trustedPersonSerializer
    implements
        StructuredSerializer<
            Gget_entourage_contactData_getWishes_structure_trustedPerson> {
  @override
  final Iterable<Type> types = const [
    Gget_entourage_contactData_getWishes_structure_trustedPerson,
    _$Gget_entourage_contactData_getWishes_structure_trustedPerson
  ];
  @override
  final String wireName =
      'Gget_entourage_contactData_getWishes_structure_trustedPerson';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_entourage_contactData_getWishes_structure_trustedPerson object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'idContact',
      serializers.serialize(object.idContact,
          specifiedType: const FullType(String)),
      'contactType',
      serializers.serialize(object.contactType,
          specifiedType: const FullType(_i3.GContactType)),
    ];
    Object? value;
    value = object.fullName;
    if (value != null) {
      result
        ..add('fullName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
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
    value = object.relation;
    if (value != null) {
      result
        ..add('relation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i3.GEntourageRelation)));
    }
    value = object.fixedLineNumber;
    if (value != null) {
      result
        ..add('fixedLineNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mobileNumber;
    if (value != null) {
      result
        ..add('mobileNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.emailAddress;
    if (value != null) {
      result
        ..add('emailAddress')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.streetAddressLine;
    if (value != null) {
      result
        ..add('streetAddressLine')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.postalCode;
    if (value != null) {
      result
        ..add('postalCode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.city;
    if (value != null) {
      result
        ..add('city')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.country;
    if (value != null) {
      result
        ..add('country')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Gget_entourage_contactData_getWishes_structure_trustedPerson deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_entourage_contactData_getWishes_structure_trustedPersonBuilder();

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
        case 'idContact':
          result.idContact = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'fullName':
          result.fullName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'contactType':
          result.contactType = serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GContactType))!
              as _i3.GContactType;
          break;
        case 'relation':
          result.relation = serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GEntourageRelation))
              as _i3.GEntourageRelation?;
          break;
        case 'fixedLineNumber':
          result.fixedLineNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'mobileNumber':
          result.mobileNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'emailAddress':
          result.emailAddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'streetAddressLine':
          result.streetAddressLine = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'postalCode':
          result.postalCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_entourage_contactData_getWishes_structure_caregiverPersonsSerializer
    implements
        StructuredSerializer<
            Gget_entourage_contactData_getWishes_structure_caregiverPersons> {
  @override
  final Iterable<Type> types = const [
    Gget_entourage_contactData_getWishes_structure_caregiverPersons,
    _$Gget_entourage_contactData_getWishes_structure_caregiverPersons
  ];
  @override
  final String wireName =
      'Gget_entourage_contactData_getWishes_structure_caregiverPersons';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_entourage_contactData_getWishes_structure_caregiverPersons object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'idContact',
      serializers.serialize(object.idContact,
          specifiedType: const FullType(String)),
      'contactType',
      serializers.serialize(object.contactType,
          specifiedType: const FullType(_i3.GContactType)),
    ];
    Object? value;
    value = object.fullName;
    if (value != null) {
      result
        ..add('fullName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
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
    value = object.relation;
    if (value != null) {
      result
        ..add('relation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i3.GEntourageRelation)));
    }
    value = object.fixedLineNumber;
    if (value != null) {
      result
        ..add('fixedLineNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mobileNumber;
    if (value != null) {
      result
        ..add('mobileNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.emailAddress;
    if (value != null) {
      result
        ..add('emailAddress')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.streetAddressLine;
    if (value != null) {
      result
        ..add('streetAddressLine')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.postalCode;
    if (value != null) {
      result
        ..add('postalCode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.city;
    if (value != null) {
      result
        ..add('city')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.country;
    if (value != null) {
      result
        ..add('country')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Gget_entourage_contactData_getWishes_structure_caregiverPersons deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_entourage_contactData_getWishes_structure_caregiverPersonsBuilder();

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
        case 'idContact':
          result.idContact = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'fullName':
          result.fullName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'contactType':
          result.contactType = serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GContactType))!
              as _i3.GContactType;
          break;
        case 'relation':
          result.relation = serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GEntourageRelation))
              as _i3.GEntourageRelation?;
          break;
        case 'fixedLineNumber':
          result.fixedLineNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'mobileNumber':
          result.mobileNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'emailAddress':
          result.emailAddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'streetAddressLine':
          result.streetAddressLine = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'postalCode':
          result.postalCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_entourage_contactData_getWishes_structure_helpedPersonsSerializer
    implements
        StructuredSerializer<
            Gget_entourage_contactData_getWishes_structure_helpedPersons> {
  @override
  final Iterable<Type> types = const [
    Gget_entourage_contactData_getWishes_structure_helpedPersons,
    _$Gget_entourage_contactData_getWishes_structure_helpedPersons
  ];
  @override
  final String wireName =
      'Gget_entourage_contactData_getWishes_structure_helpedPersons';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_entourage_contactData_getWishes_structure_helpedPersons object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'idContact',
      serializers.serialize(object.idContact,
          specifiedType: const FullType(String)),
      'contactType',
      serializers.serialize(object.contactType,
          specifiedType: const FullType(_i3.GContactType)),
    ];
    Object? value;
    value = object.fullName;
    if (value != null) {
      result
        ..add('fullName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
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
    value = object.relation;
    if (value != null) {
      result
        ..add('relation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i3.GEntourageRelation)));
    }
    value = object.fixedLineNumber;
    if (value != null) {
      result
        ..add('fixedLineNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mobileNumber;
    if (value != null) {
      result
        ..add('mobileNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.emailAddress;
    if (value != null) {
      result
        ..add('emailAddress')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.streetAddressLine;
    if (value != null) {
      result
        ..add('streetAddressLine')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.postalCode;
    if (value != null) {
      result
        ..add('postalCode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.city;
    if (value != null) {
      result
        ..add('city')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.country;
    if (value != null) {
      result
        ..add('country')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Gget_entourage_contactData_getWishes_structure_helpedPersons deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_entourage_contactData_getWishes_structure_helpedPersonsBuilder();

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
        case 'idContact':
          result.idContact = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'fullName':
          result.fullName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'contactType':
          result.contactType = serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GContactType))!
              as _i3.GContactType;
          break;
        case 'relation':
          result.relation = serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GEntourageRelation))
              as _i3.GEntourageRelation?;
          break;
        case 'fixedLineNumber':
          result.fixedLineNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'mobileNumber':
          result.mobileNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'emailAddress':
          result.emailAddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'streetAddressLine':
          result.streetAddressLine = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'postalCode':
          result.postalCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_entourage_contactData extends Gget_entourage_contactData {
  @override
  final String G__typename;
  @override
  final Gget_entourage_contactData_getWishes getWishes;

  factory _$Gget_entourage_contactData(
          [void Function(Gget_entourage_contactDataBuilder)? updates]) =>
      (new Gget_entourage_contactDataBuilder()..update(updates))._build();

  _$Gget_entourage_contactData._(
      {required this.G__typename, required this.getWishes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_entourage_contactData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        getWishes, r'Gget_entourage_contactData', 'getWishes');
  }

  @override
  Gget_entourage_contactData rebuild(
          void Function(Gget_entourage_contactDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_entourage_contactDataBuilder toBuilder() =>
      new Gget_entourage_contactDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_entourage_contactData &&
        G__typename == other.G__typename &&
        getWishes == other.getWishes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getWishes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_entourage_contactData')
          ..add('G__typename', G__typename)
          ..add('getWishes', getWishes))
        .toString();
  }
}

class Gget_entourage_contactDataBuilder
    implements
        Builder<Gget_entourage_contactData, Gget_entourage_contactDataBuilder> {
  _$Gget_entourage_contactData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_entourage_contactData_getWishesBuilder? _getWishes;
  Gget_entourage_contactData_getWishesBuilder get getWishes =>
      _$this._getWishes ??= new Gget_entourage_contactData_getWishesBuilder();
  set getWishes(Gget_entourage_contactData_getWishesBuilder? getWishes) =>
      _$this._getWishes = getWishes;

  Gget_entourage_contactDataBuilder() {
    Gget_entourage_contactData._initializeBuilder(this);
  }

  Gget_entourage_contactDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getWishes = $v.getWishes.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_entourage_contactData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_entourage_contactData;
  }

  @override
  void update(void Function(Gget_entourage_contactDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_entourage_contactData build() => _build();

  _$Gget_entourage_contactData _build() {
    _$Gget_entourage_contactData _$result;
    try {
      _$result = _$v ??
          new _$Gget_entourage_contactData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gget_entourage_contactData', 'G__typename'),
              getWishes: getWishes.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getWishes';
        getWishes.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_entourage_contactData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_entourage_contactData_getWishes
    extends Gget_entourage_contactData_getWishes {
  @override
  final String G__typename;
  @override
  final Gget_entourage_contactData_getWishes_structure structure;

  factory _$Gget_entourage_contactData_getWishes(
          [void Function(Gget_entourage_contactData_getWishesBuilder)?
              updates]) =>
      (new Gget_entourage_contactData_getWishesBuilder()..update(updates))
          ._build();

  _$Gget_entourage_contactData_getWishes._(
      {required this.G__typename, required this.structure})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_entourage_contactData_getWishes', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        structure, r'Gget_entourage_contactData_getWishes', 'structure');
  }

  @override
  Gget_entourage_contactData_getWishes rebuild(
          void Function(Gget_entourage_contactData_getWishesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_entourage_contactData_getWishesBuilder toBuilder() =>
      new Gget_entourage_contactData_getWishesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_entourage_contactData_getWishes &&
        G__typename == other.G__typename &&
        structure == other.structure;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, structure.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_entourage_contactData_getWishes')
          ..add('G__typename', G__typename)
          ..add('structure', structure))
        .toString();
  }
}

class Gget_entourage_contactData_getWishesBuilder
    implements
        Builder<Gget_entourage_contactData_getWishes,
            Gget_entourage_contactData_getWishesBuilder> {
  _$Gget_entourage_contactData_getWishes? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_entourage_contactData_getWishes_structureBuilder? _structure;
  Gget_entourage_contactData_getWishes_structureBuilder get structure =>
      _$this._structure ??=
          new Gget_entourage_contactData_getWishes_structureBuilder();
  set structure(
          Gget_entourage_contactData_getWishes_structureBuilder? structure) =>
      _$this._structure = structure;

  Gget_entourage_contactData_getWishesBuilder() {
    Gget_entourage_contactData_getWishes._initializeBuilder(this);
  }

  Gget_entourage_contactData_getWishesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _structure = $v.structure.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_entourage_contactData_getWishes other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_entourage_contactData_getWishes;
  }

  @override
  void update(
      void Function(Gget_entourage_contactData_getWishesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_entourage_contactData_getWishes build() => _build();

  _$Gget_entourage_contactData_getWishes _build() {
    _$Gget_entourage_contactData_getWishes _$result;
    try {
      _$result = _$v ??
          new _$Gget_entourage_contactData_getWishes._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gget_entourage_contactData_getWishes', 'G__typename'),
              structure: structure.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'structure';
        structure.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_entourage_contactData_getWishes',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_entourage_contactData_getWishes_structure
    extends Gget_entourage_contactData_getWishes_structure {
  @override
  final String G__typename;
  @override
  final BuiltList<
          Gget_entourage_contactData_getWishes_structure_emergencyContacts>?
      emergencyContacts;
  @override
  final Gget_entourage_contactData_getWishes_structure_trustedPerson?
      trustedPerson;
  @override
  final BuiltList<
          Gget_entourage_contactData_getWishes_structure_caregiverPersons>?
      caregiverPersons;
  @override
  final BuiltList<Gget_entourage_contactData_getWishes_structure_helpedPersons>?
      helpedPersons;
  @override
  final bool? informedAboutOrganDonation;

  factory _$Gget_entourage_contactData_getWishes_structure(
          [void Function(Gget_entourage_contactData_getWishes_structureBuilder)?
              updates]) =>
      (new Gget_entourage_contactData_getWishes_structureBuilder()
            ..update(updates))
          ._build();

  _$Gget_entourage_contactData_getWishes_structure._(
      {required this.G__typename,
      this.emergencyContacts,
      this.trustedPerson,
      this.caregiverPersons,
      this.helpedPersons,
      this.informedAboutOrganDonation})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_entourage_contactData_getWishes_structure', 'G__typename');
  }

  @override
  Gget_entourage_contactData_getWishes_structure rebuild(
          void Function(Gget_entourage_contactData_getWishes_structureBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_entourage_contactData_getWishes_structureBuilder toBuilder() =>
      new Gget_entourage_contactData_getWishes_structureBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_entourage_contactData_getWishes_structure &&
        G__typename == other.G__typename &&
        emergencyContacts == other.emergencyContacts &&
        trustedPerson == other.trustedPerson &&
        caregiverPersons == other.caregiverPersons &&
        helpedPersons == other.helpedPersons &&
        informedAboutOrganDonation == other.informedAboutOrganDonation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, emergencyContacts.hashCode);
    _$hash = $jc(_$hash, trustedPerson.hashCode);
    _$hash = $jc(_$hash, caregiverPersons.hashCode);
    _$hash = $jc(_$hash, helpedPersons.hashCode);
    _$hash = $jc(_$hash, informedAboutOrganDonation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_entourage_contactData_getWishes_structure')
          ..add('G__typename', G__typename)
          ..add('emergencyContacts', emergencyContacts)
          ..add('trustedPerson', trustedPerson)
          ..add('caregiverPersons', caregiverPersons)
          ..add('helpedPersons', helpedPersons)
          ..add('informedAboutOrganDonation', informedAboutOrganDonation))
        .toString();
  }
}

class Gget_entourage_contactData_getWishes_structureBuilder
    implements
        Builder<Gget_entourage_contactData_getWishes_structure,
            Gget_entourage_contactData_getWishes_structureBuilder> {
  _$Gget_entourage_contactData_getWishes_structure? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<Gget_entourage_contactData_getWishes_structure_emergencyContacts>?
      _emergencyContacts;
  ListBuilder<Gget_entourage_contactData_getWishes_structure_emergencyContacts>
      get emergencyContacts => _$this._emergencyContacts ??= new ListBuilder<
          Gget_entourage_contactData_getWishes_structure_emergencyContacts>();
  set emergencyContacts(
          ListBuilder<
                  Gget_entourage_contactData_getWishes_structure_emergencyContacts>?
              emergencyContacts) =>
      _$this._emergencyContacts = emergencyContacts;

  Gget_entourage_contactData_getWishes_structure_trustedPersonBuilder?
      _trustedPerson;
  Gget_entourage_contactData_getWishes_structure_trustedPersonBuilder
      get trustedPerson => _$this._trustedPerson ??=
          new Gget_entourage_contactData_getWishes_structure_trustedPersonBuilder();
  set trustedPerson(
          Gget_entourage_contactData_getWishes_structure_trustedPersonBuilder?
              trustedPerson) =>
      _$this._trustedPerson = trustedPerson;

  ListBuilder<Gget_entourage_contactData_getWishes_structure_caregiverPersons>?
      _caregiverPersons;
  ListBuilder<Gget_entourage_contactData_getWishes_structure_caregiverPersons>
      get caregiverPersons => _$this._caregiverPersons ??= new ListBuilder<
          Gget_entourage_contactData_getWishes_structure_caregiverPersons>();
  set caregiverPersons(
          ListBuilder<
                  Gget_entourage_contactData_getWishes_structure_caregiverPersons>?
              caregiverPersons) =>
      _$this._caregiverPersons = caregiverPersons;

  ListBuilder<Gget_entourage_contactData_getWishes_structure_helpedPersons>?
      _helpedPersons;
  ListBuilder<Gget_entourage_contactData_getWishes_structure_helpedPersons>
      get helpedPersons => _$this._helpedPersons ??= new ListBuilder<
          Gget_entourage_contactData_getWishes_structure_helpedPersons>();
  set helpedPersons(
          ListBuilder<
                  Gget_entourage_contactData_getWishes_structure_helpedPersons>?
              helpedPersons) =>
      _$this._helpedPersons = helpedPersons;

  bool? _informedAboutOrganDonation;
  bool? get informedAboutOrganDonation => _$this._informedAboutOrganDonation;
  set informedAboutOrganDonation(bool? informedAboutOrganDonation) =>
      _$this._informedAboutOrganDonation = informedAboutOrganDonation;

  Gget_entourage_contactData_getWishes_structureBuilder() {
    Gget_entourage_contactData_getWishes_structure._initializeBuilder(this);
  }

  Gget_entourage_contactData_getWishes_structureBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _emergencyContacts = $v.emergencyContacts?.toBuilder();
      _trustedPerson = $v.trustedPerson?.toBuilder();
      _caregiverPersons = $v.caregiverPersons?.toBuilder();
      _helpedPersons = $v.helpedPersons?.toBuilder();
      _informedAboutOrganDonation = $v.informedAboutOrganDonation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_entourage_contactData_getWishes_structure other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_entourage_contactData_getWishes_structure;
  }

  @override
  void update(
      void Function(Gget_entourage_contactData_getWishes_structureBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_entourage_contactData_getWishes_structure build() => _build();

  _$Gget_entourage_contactData_getWishes_structure _build() {
    _$Gget_entourage_contactData_getWishes_structure _$result;
    try {
      _$result = _$v ??
          new _$Gget_entourage_contactData_getWishes_structure._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_entourage_contactData_getWishes_structure',
                  'G__typename'),
              emergencyContacts: _emergencyContacts?.build(),
              trustedPerson: _trustedPerson?.build(),
              caregiverPersons: _caregiverPersons?.build(),
              helpedPersons: _helpedPersons?.build(),
              informedAboutOrganDonation: informedAboutOrganDonation);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'emergencyContacts';
        _emergencyContacts?.build();
        _$failedField = 'trustedPerson';
        _trustedPerson?.build();
        _$failedField = 'caregiverPersons';
        _caregiverPersons?.build();
        _$failedField = 'helpedPersons';
        _helpedPersons?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_entourage_contactData_getWishes_structure',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_entourage_contactData_getWishes_structure_emergencyContacts
    extends Gget_entourage_contactData_getWishes_structure_emergencyContacts {
  @override
  final String G__typename;
  @override
  final String idContact;
  @override
  final String? fullName;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final _i3.GContactType contactType;
  @override
  final _i3.GEntourageRelation? relation;
  @override
  final String? fixedLineNumber;
  @override
  final String? mobileNumber;
  @override
  final String? emailAddress;
  @override
  final String? streetAddressLine;
  @override
  final String? postalCode;
  @override
  final String? city;
  @override
  final String? country;

  factory _$Gget_entourage_contactData_getWishes_structure_emergencyContacts(
          [void Function(
                  Gget_entourage_contactData_getWishes_structure_emergencyContactsBuilder)?
              updates]) =>
      (new Gget_entourage_contactData_getWishes_structure_emergencyContactsBuilder()
            ..update(updates))
          ._build();

  _$Gget_entourage_contactData_getWishes_structure_emergencyContacts._(
      {required this.G__typename,
      required this.idContact,
      this.fullName,
      this.firstName,
      this.lastName,
      required this.contactType,
      this.relation,
      this.fixedLineNumber,
      this.mobileNumber,
      this.emailAddress,
      this.streetAddressLine,
      this.postalCode,
      this.city,
      this.country})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_entourage_contactData_getWishes_structure_emergencyContacts',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        idContact,
        r'Gget_entourage_contactData_getWishes_structure_emergencyContacts',
        'idContact');
    BuiltValueNullFieldError.checkNotNull(
        contactType,
        r'Gget_entourage_contactData_getWishes_structure_emergencyContacts',
        'contactType');
  }

  @override
  Gget_entourage_contactData_getWishes_structure_emergencyContacts rebuild(
          void Function(
                  Gget_entourage_contactData_getWishes_structure_emergencyContactsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_entourage_contactData_getWishes_structure_emergencyContactsBuilder
      toBuilder() =>
          new Gget_entourage_contactData_getWishes_structure_emergencyContactsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_entourage_contactData_getWishes_structure_emergencyContacts &&
        G__typename == other.G__typename &&
        idContact == other.idContact &&
        fullName == other.fullName &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        contactType == other.contactType &&
        relation == other.relation &&
        fixedLineNumber == other.fixedLineNumber &&
        mobileNumber == other.mobileNumber &&
        emailAddress == other.emailAddress &&
        streetAddressLine == other.streetAddressLine &&
        postalCode == other.postalCode &&
        city == other.city &&
        country == other.country;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, idContact.hashCode);
    _$hash = $jc(_$hash, fullName.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, contactType.hashCode);
    _$hash = $jc(_$hash, relation.hashCode);
    _$hash = $jc(_$hash, fixedLineNumber.hashCode);
    _$hash = $jc(_$hash, mobileNumber.hashCode);
    _$hash = $jc(_$hash, emailAddress.hashCode);
    _$hash = $jc(_$hash, streetAddressLine.hashCode);
    _$hash = $jc(_$hash, postalCode.hashCode);
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_entourage_contactData_getWishes_structure_emergencyContacts')
          ..add('G__typename', G__typename)
          ..add('idContact', idContact)
          ..add('fullName', fullName)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('contactType', contactType)
          ..add('relation', relation)
          ..add('fixedLineNumber', fixedLineNumber)
          ..add('mobileNumber', mobileNumber)
          ..add('emailAddress', emailAddress)
          ..add('streetAddressLine', streetAddressLine)
          ..add('postalCode', postalCode)
          ..add('city', city)
          ..add('country', country))
        .toString();
  }
}

class Gget_entourage_contactData_getWishes_structure_emergencyContactsBuilder
    implements
        Builder<
            Gget_entourage_contactData_getWishes_structure_emergencyContacts,
            Gget_entourage_contactData_getWishes_structure_emergencyContactsBuilder> {
  _$Gget_entourage_contactData_getWishes_structure_emergencyContacts? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _idContact;
  String? get idContact => _$this._idContact;
  set idContact(String? idContact) => _$this._idContact = idContact;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  _i3.GContactType? _contactType;
  _i3.GContactType? get contactType => _$this._contactType;
  set contactType(_i3.GContactType? contactType) =>
      _$this._contactType = contactType;

  _i3.GEntourageRelation? _relation;
  _i3.GEntourageRelation? get relation => _$this._relation;
  set relation(_i3.GEntourageRelation? relation) => _$this._relation = relation;

  String? _fixedLineNumber;
  String? get fixedLineNumber => _$this._fixedLineNumber;
  set fixedLineNumber(String? fixedLineNumber) =>
      _$this._fixedLineNumber = fixedLineNumber;

  String? _mobileNumber;
  String? get mobileNumber => _$this._mobileNumber;
  set mobileNumber(String? mobileNumber) => _$this._mobileNumber = mobileNumber;

  String? _emailAddress;
  String? get emailAddress => _$this._emailAddress;
  set emailAddress(String? emailAddress) => _$this._emailAddress = emailAddress;

  String? _streetAddressLine;
  String? get streetAddressLine => _$this._streetAddressLine;
  set streetAddressLine(String? streetAddressLine) =>
      _$this._streetAddressLine = streetAddressLine;

  String? _postalCode;
  String? get postalCode => _$this._postalCode;
  set postalCode(String? postalCode) => _$this._postalCode = postalCode;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  Gget_entourage_contactData_getWishes_structure_emergencyContactsBuilder() {
    Gget_entourage_contactData_getWishes_structure_emergencyContacts
        ._initializeBuilder(this);
  }

  Gget_entourage_contactData_getWishes_structure_emergencyContactsBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _idContact = $v.idContact;
      _fullName = $v.fullName;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _contactType = $v.contactType;
      _relation = $v.relation;
      _fixedLineNumber = $v.fixedLineNumber;
      _mobileNumber = $v.mobileNumber;
      _emailAddress = $v.emailAddress;
      _streetAddressLine = $v.streetAddressLine;
      _postalCode = $v.postalCode;
      _city = $v.city;
      _country = $v.country;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_entourage_contactData_getWishes_structure_emergencyContacts other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_entourage_contactData_getWishes_structure_emergencyContacts;
  }

  @override
  void update(
      void Function(
              Gget_entourage_contactData_getWishes_structure_emergencyContactsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_entourage_contactData_getWishes_structure_emergencyContacts build() =>
      _build();

  _$Gget_entourage_contactData_getWishes_structure_emergencyContacts _build() {
    final _$result = _$v ??
        new _$Gget_entourage_contactData_getWishes_structure_emergencyContacts
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_entourage_contactData_getWishes_structure_emergencyContacts',
                'G__typename'),
            idContact: BuiltValueNullFieldError.checkNotNull(
                idContact,
                r'Gget_entourage_contactData_getWishes_structure_emergencyContacts',
                'idContact'),
            fullName: fullName,
            firstName: firstName,
            lastName: lastName,
            contactType: BuiltValueNullFieldError.checkNotNull(
                contactType,
                r'Gget_entourage_contactData_getWishes_structure_emergencyContacts',
                'contactType'),
            relation: relation,
            fixedLineNumber: fixedLineNumber,
            mobileNumber: mobileNumber,
            emailAddress: emailAddress,
            streetAddressLine: streetAddressLine,
            postalCode: postalCode,
            city: city,
            country: country);
    replace(_$result);
    return _$result;
  }
}

class _$Gget_entourage_contactData_getWishes_structure_trustedPerson
    extends Gget_entourage_contactData_getWishes_structure_trustedPerson {
  @override
  final String G__typename;
  @override
  final String idContact;
  @override
  final String? fullName;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final _i3.GContactType contactType;
  @override
  final _i3.GEntourageRelation? relation;
  @override
  final String? fixedLineNumber;
  @override
  final String? mobileNumber;
  @override
  final String? emailAddress;
  @override
  final String? streetAddressLine;
  @override
  final String? postalCode;
  @override
  final String? city;
  @override
  final String? country;

  factory _$Gget_entourage_contactData_getWishes_structure_trustedPerson(
          [void Function(
                  Gget_entourage_contactData_getWishes_structure_trustedPersonBuilder)?
              updates]) =>
      (new Gget_entourage_contactData_getWishes_structure_trustedPersonBuilder()
            ..update(updates))
          ._build();

  _$Gget_entourage_contactData_getWishes_structure_trustedPerson._(
      {required this.G__typename,
      required this.idContact,
      this.fullName,
      this.firstName,
      this.lastName,
      required this.contactType,
      this.relation,
      this.fixedLineNumber,
      this.mobileNumber,
      this.emailAddress,
      this.streetAddressLine,
      this.postalCode,
      this.city,
      this.country})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_entourage_contactData_getWishes_structure_trustedPerson',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        idContact,
        r'Gget_entourage_contactData_getWishes_structure_trustedPerson',
        'idContact');
    BuiltValueNullFieldError.checkNotNull(
        contactType,
        r'Gget_entourage_contactData_getWishes_structure_trustedPerson',
        'contactType');
  }

  @override
  Gget_entourage_contactData_getWishes_structure_trustedPerson rebuild(
          void Function(
                  Gget_entourage_contactData_getWishes_structure_trustedPersonBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_entourage_contactData_getWishes_structure_trustedPersonBuilder
      toBuilder() =>
          new Gget_entourage_contactData_getWishes_structure_trustedPersonBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_entourage_contactData_getWishes_structure_trustedPerson &&
        G__typename == other.G__typename &&
        idContact == other.idContact &&
        fullName == other.fullName &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        contactType == other.contactType &&
        relation == other.relation &&
        fixedLineNumber == other.fixedLineNumber &&
        mobileNumber == other.mobileNumber &&
        emailAddress == other.emailAddress &&
        streetAddressLine == other.streetAddressLine &&
        postalCode == other.postalCode &&
        city == other.city &&
        country == other.country;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, idContact.hashCode);
    _$hash = $jc(_$hash, fullName.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, contactType.hashCode);
    _$hash = $jc(_$hash, relation.hashCode);
    _$hash = $jc(_$hash, fixedLineNumber.hashCode);
    _$hash = $jc(_$hash, mobileNumber.hashCode);
    _$hash = $jc(_$hash, emailAddress.hashCode);
    _$hash = $jc(_$hash, streetAddressLine.hashCode);
    _$hash = $jc(_$hash, postalCode.hashCode);
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_entourage_contactData_getWishes_structure_trustedPerson')
          ..add('G__typename', G__typename)
          ..add('idContact', idContact)
          ..add('fullName', fullName)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('contactType', contactType)
          ..add('relation', relation)
          ..add('fixedLineNumber', fixedLineNumber)
          ..add('mobileNumber', mobileNumber)
          ..add('emailAddress', emailAddress)
          ..add('streetAddressLine', streetAddressLine)
          ..add('postalCode', postalCode)
          ..add('city', city)
          ..add('country', country))
        .toString();
  }
}

class Gget_entourage_contactData_getWishes_structure_trustedPersonBuilder
    implements
        Builder<Gget_entourage_contactData_getWishes_structure_trustedPerson,
            Gget_entourage_contactData_getWishes_structure_trustedPersonBuilder> {
  _$Gget_entourage_contactData_getWishes_structure_trustedPerson? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _idContact;
  String? get idContact => _$this._idContact;
  set idContact(String? idContact) => _$this._idContact = idContact;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  _i3.GContactType? _contactType;
  _i3.GContactType? get contactType => _$this._contactType;
  set contactType(_i3.GContactType? contactType) =>
      _$this._contactType = contactType;

  _i3.GEntourageRelation? _relation;
  _i3.GEntourageRelation? get relation => _$this._relation;
  set relation(_i3.GEntourageRelation? relation) => _$this._relation = relation;

  String? _fixedLineNumber;
  String? get fixedLineNumber => _$this._fixedLineNumber;
  set fixedLineNumber(String? fixedLineNumber) =>
      _$this._fixedLineNumber = fixedLineNumber;

  String? _mobileNumber;
  String? get mobileNumber => _$this._mobileNumber;
  set mobileNumber(String? mobileNumber) => _$this._mobileNumber = mobileNumber;

  String? _emailAddress;
  String? get emailAddress => _$this._emailAddress;
  set emailAddress(String? emailAddress) => _$this._emailAddress = emailAddress;

  String? _streetAddressLine;
  String? get streetAddressLine => _$this._streetAddressLine;
  set streetAddressLine(String? streetAddressLine) =>
      _$this._streetAddressLine = streetAddressLine;

  String? _postalCode;
  String? get postalCode => _$this._postalCode;
  set postalCode(String? postalCode) => _$this._postalCode = postalCode;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  Gget_entourage_contactData_getWishes_structure_trustedPersonBuilder() {
    Gget_entourage_contactData_getWishes_structure_trustedPerson
        ._initializeBuilder(this);
  }

  Gget_entourage_contactData_getWishes_structure_trustedPersonBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _idContact = $v.idContact;
      _fullName = $v.fullName;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _contactType = $v.contactType;
      _relation = $v.relation;
      _fixedLineNumber = $v.fixedLineNumber;
      _mobileNumber = $v.mobileNumber;
      _emailAddress = $v.emailAddress;
      _streetAddressLine = $v.streetAddressLine;
      _postalCode = $v.postalCode;
      _city = $v.city;
      _country = $v.country;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_entourage_contactData_getWishes_structure_trustedPerson other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$Gget_entourage_contactData_getWishes_structure_trustedPerson;
  }

  @override
  void update(
      void Function(
              Gget_entourage_contactData_getWishes_structure_trustedPersonBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_entourage_contactData_getWishes_structure_trustedPerson build() =>
      _build();

  _$Gget_entourage_contactData_getWishes_structure_trustedPerson _build() {
    final _$result = _$v ??
        new _$Gget_entourage_contactData_getWishes_structure_trustedPerson._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_entourage_contactData_getWishes_structure_trustedPerson',
                'G__typename'),
            idContact: BuiltValueNullFieldError.checkNotNull(
                idContact,
                r'Gget_entourage_contactData_getWishes_structure_trustedPerson',
                'idContact'),
            fullName: fullName,
            firstName: firstName,
            lastName: lastName,
            contactType: BuiltValueNullFieldError.checkNotNull(
                contactType,
                r'Gget_entourage_contactData_getWishes_structure_trustedPerson',
                'contactType'),
            relation: relation,
            fixedLineNumber: fixedLineNumber,
            mobileNumber: mobileNumber,
            emailAddress: emailAddress,
            streetAddressLine: streetAddressLine,
            postalCode: postalCode,
            city: city,
            country: country);
    replace(_$result);
    return _$result;
  }
}

class _$Gget_entourage_contactData_getWishes_structure_caregiverPersons
    extends Gget_entourage_contactData_getWishes_structure_caregiverPersons {
  @override
  final String G__typename;
  @override
  final String idContact;
  @override
  final String? fullName;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final _i3.GContactType contactType;
  @override
  final _i3.GEntourageRelation? relation;
  @override
  final String? fixedLineNumber;
  @override
  final String? mobileNumber;
  @override
  final String? emailAddress;
  @override
  final String? streetAddressLine;
  @override
  final String? postalCode;
  @override
  final String? city;
  @override
  final String? country;

  factory _$Gget_entourage_contactData_getWishes_structure_caregiverPersons(
          [void Function(
                  Gget_entourage_contactData_getWishes_structure_caregiverPersonsBuilder)?
              updates]) =>
      (new Gget_entourage_contactData_getWishes_structure_caregiverPersonsBuilder()
            ..update(updates))
          ._build();

  _$Gget_entourage_contactData_getWishes_structure_caregiverPersons._(
      {required this.G__typename,
      required this.idContact,
      this.fullName,
      this.firstName,
      this.lastName,
      required this.contactType,
      this.relation,
      this.fixedLineNumber,
      this.mobileNumber,
      this.emailAddress,
      this.streetAddressLine,
      this.postalCode,
      this.city,
      this.country})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_entourage_contactData_getWishes_structure_caregiverPersons',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        idContact,
        r'Gget_entourage_contactData_getWishes_structure_caregiverPersons',
        'idContact');
    BuiltValueNullFieldError.checkNotNull(
        contactType,
        r'Gget_entourage_contactData_getWishes_structure_caregiverPersons',
        'contactType');
  }

  @override
  Gget_entourage_contactData_getWishes_structure_caregiverPersons rebuild(
          void Function(
                  Gget_entourage_contactData_getWishes_structure_caregiverPersonsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_entourage_contactData_getWishes_structure_caregiverPersonsBuilder
      toBuilder() =>
          new Gget_entourage_contactData_getWishes_structure_caregiverPersonsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_entourage_contactData_getWishes_structure_caregiverPersons &&
        G__typename == other.G__typename &&
        idContact == other.idContact &&
        fullName == other.fullName &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        contactType == other.contactType &&
        relation == other.relation &&
        fixedLineNumber == other.fixedLineNumber &&
        mobileNumber == other.mobileNumber &&
        emailAddress == other.emailAddress &&
        streetAddressLine == other.streetAddressLine &&
        postalCode == other.postalCode &&
        city == other.city &&
        country == other.country;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, idContact.hashCode);
    _$hash = $jc(_$hash, fullName.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, contactType.hashCode);
    _$hash = $jc(_$hash, relation.hashCode);
    _$hash = $jc(_$hash, fixedLineNumber.hashCode);
    _$hash = $jc(_$hash, mobileNumber.hashCode);
    _$hash = $jc(_$hash, emailAddress.hashCode);
    _$hash = $jc(_$hash, streetAddressLine.hashCode);
    _$hash = $jc(_$hash, postalCode.hashCode);
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_entourage_contactData_getWishes_structure_caregiverPersons')
          ..add('G__typename', G__typename)
          ..add('idContact', idContact)
          ..add('fullName', fullName)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('contactType', contactType)
          ..add('relation', relation)
          ..add('fixedLineNumber', fixedLineNumber)
          ..add('mobileNumber', mobileNumber)
          ..add('emailAddress', emailAddress)
          ..add('streetAddressLine', streetAddressLine)
          ..add('postalCode', postalCode)
          ..add('city', city)
          ..add('country', country))
        .toString();
  }
}

class Gget_entourage_contactData_getWishes_structure_caregiverPersonsBuilder
    implements
        Builder<Gget_entourage_contactData_getWishes_structure_caregiverPersons,
            Gget_entourage_contactData_getWishes_structure_caregiverPersonsBuilder> {
  _$Gget_entourage_contactData_getWishes_structure_caregiverPersons? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _idContact;
  String? get idContact => _$this._idContact;
  set idContact(String? idContact) => _$this._idContact = idContact;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  _i3.GContactType? _contactType;
  _i3.GContactType? get contactType => _$this._contactType;
  set contactType(_i3.GContactType? contactType) =>
      _$this._contactType = contactType;

  _i3.GEntourageRelation? _relation;
  _i3.GEntourageRelation? get relation => _$this._relation;
  set relation(_i3.GEntourageRelation? relation) => _$this._relation = relation;

  String? _fixedLineNumber;
  String? get fixedLineNumber => _$this._fixedLineNumber;
  set fixedLineNumber(String? fixedLineNumber) =>
      _$this._fixedLineNumber = fixedLineNumber;

  String? _mobileNumber;
  String? get mobileNumber => _$this._mobileNumber;
  set mobileNumber(String? mobileNumber) => _$this._mobileNumber = mobileNumber;

  String? _emailAddress;
  String? get emailAddress => _$this._emailAddress;
  set emailAddress(String? emailAddress) => _$this._emailAddress = emailAddress;

  String? _streetAddressLine;
  String? get streetAddressLine => _$this._streetAddressLine;
  set streetAddressLine(String? streetAddressLine) =>
      _$this._streetAddressLine = streetAddressLine;

  String? _postalCode;
  String? get postalCode => _$this._postalCode;
  set postalCode(String? postalCode) => _$this._postalCode = postalCode;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  Gget_entourage_contactData_getWishes_structure_caregiverPersonsBuilder() {
    Gget_entourage_contactData_getWishes_structure_caregiverPersons
        ._initializeBuilder(this);
  }

  Gget_entourage_contactData_getWishes_structure_caregiverPersonsBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _idContact = $v.idContact;
      _fullName = $v.fullName;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _contactType = $v.contactType;
      _relation = $v.relation;
      _fixedLineNumber = $v.fixedLineNumber;
      _mobileNumber = $v.mobileNumber;
      _emailAddress = $v.emailAddress;
      _streetAddressLine = $v.streetAddressLine;
      _postalCode = $v.postalCode;
      _city = $v.city;
      _country = $v.country;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_entourage_contactData_getWishes_structure_caregiverPersons other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_entourage_contactData_getWishes_structure_caregiverPersons;
  }

  @override
  void update(
      void Function(
              Gget_entourage_contactData_getWishes_structure_caregiverPersonsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_entourage_contactData_getWishes_structure_caregiverPersons build() =>
      _build();

  _$Gget_entourage_contactData_getWishes_structure_caregiverPersons _build() {
    final _$result = _$v ??
        new _$Gget_entourage_contactData_getWishes_structure_caregiverPersons._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_entourage_contactData_getWishes_structure_caregiverPersons',
                'G__typename'),
            idContact: BuiltValueNullFieldError.checkNotNull(
                idContact,
                r'Gget_entourage_contactData_getWishes_structure_caregiverPersons',
                'idContact'),
            fullName: fullName,
            firstName: firstName,
            lastName: lastName,
            contactType: BuiltValueNullFieldError.checkNotNull(
                contactType,
                r'Gget_entourage_contactData_getWishes_structure_caregiverPersons',
                'contactType'),
            relation: relation,
            fixedLineNumber: fixedLineNumber,
            mobileNumber: mobileNumber,
            emailAddress: emailAddress,
            streetAddressLine: streetAddressLine,
            postalCode: postalCode,
            city: city,
            country: country);
    replace(_$result);
    return _$result;
  }
}

class _$Gget_entourage_contactData_getWishes_structure_helpedPersons
    extends Gget_entourage_contactData_getWishes_structure_helpedPersons {
  @override
  final String G__typename;
  @override
  final String idContact;
  @override
  final String? fullName;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final _i3.GContactType contactType;
  @override
  final _i3.GEntourageRelation? relation;
  @override
  final String? fixedLineNumber;
  @override
  final String? mobileNumber;
  @override
  final String? emailAddress;
  @override
  final String? streetAddressLine;
  @override
  final String? postalCode;
  @override
  final String? city;
  @override
  final String? country;

  factory _$Gget_entourage_contactData_getWishes_structure_helpedPersons(
          [void Function(
                  Gget_entourage_contactData_getWishes_structure_helpedPersonsBuilder)?
              updates]) =>
      (new Gget_entourage_contactData_getWishes_structure_helpedPersonsBuilder()
            ..update(updates))
          ._build();

  _$Gget_entourage_contactData_getWishes_structure_helpedPersons._(
      {required this.G__typename,
      required this.idContact,
      this.fullName,
      this.firstName,
      this.lastName,
      required this.contactType,
      this.relation,
      this.fixedLineNumber,
      this.mobileNumber,
      this.emailAddress,
      this.streetAddressLine,
      this.postalCode,
      this.city,
      this.country})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_entourage_contactData_getWishes_structure_helpedPersons',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        idContact,
        r'Gget_entourage_contactData_getWishes_structure_helpedPersons',
        'idContact');
    BuiltValueNullFieldError.checkNotNull(
        contactType,
        r'Gget_entourage_contactData_getWishes_structure_helpedPersons',
        'contactType');
  }

  @override
  Gget_entourage_contactData_getWishes_structure_helpedPersons rebuild(
          void Function(
                  Gget_entourage_contactData_getWishes_structure_helpedPersonsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_entourage_contactData_getWishes_structure_helpedPersonsBuilder
      toBuilder() =>
          new Gget_entourage_contactData_getWishes_structure_helpedPersonsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_entourage_contactData_getWishes_structure_helpedPersons &&
        G__typename == other.G__typename &&
        idContact == other.idContact &&
        fullName == other.fullName &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        contactType == other.contactType &&
        relation == other.relation &&
        fixedLineNumber == other.fixedLineNumber &&
        mobileNumber == other.mobileNumber &&
        emailAddress == other.emailAddress &&
        streetAddressLine == other.streetAddressLine &&
        postalCode == other.postalCode &&
        city == other.city &&
        country == other.country;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, idContact.hashCode);
    _$hash = $jc(_$hash, fullName.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, contactType.hashCode);
    _$hash = $jc(_$hash, relation.hashCode);
    _$hash = $jc(_$hash, fixedLineNumber.hashCode);
    _$hash = $jc(_$hash, mobileNumber.hashCode);
    _$hash = $jc(_$hash, emailAddress.hashCode);
    _$hash = $jc(_$hash, streetAddressLine.hashCode);
    _$hash = $jc(_$hash, postalCode.hashCode);
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_entourage_contactData_getWishes_structure_helpedPersons')
          ..add('G__typename', G__typename)
          ..add('idContact', idContact)
          ..add('fullName', fullName)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('contactType', contactType)
          ..add('relation', relation)
          ..add('fixedLineNumber', fixedLineNumber)
          ..add('mobileNumber', mobileNumber)
          ..add('emailAddress', emailAddress)
          ..add('streetAddressLine', streetAddressLine)
          ..add('postalCode', postalCode)
          ..add('city', city)
          ..add('country', country))
        .toString();
  }
}

class Gget_entourage_contactData_getWishes_structure_helpedPersonsBuilder
    implements
        Builder<Gget_entourage_contactData_getWishes_structure_helpedPersons,
            Gget_entourage_contactData_getWishes_structure_helpedPersonsBuilder> {
  _$Gget_entourage_contactData_getWishes_structure_helpedPersons? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _idContact;
  String? get idContact => _$this._idContact;
  set idContact(String? idContact) => _$this._idContact = idContact;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  _i3.GContactType? _contactType;
  _i3.GContactType? get contactType => _$this._contactType;
  set contactType(_i3.GContactType? contactType) =>
      _$this._contactType = contactType;

  _i3.GEntourageRelation? _relation;
  _i3.GEntourageRelation? get relation => _$this._relation;
  set relation(_i3.GEntourageRelation? relation) => _$this._relation = relation;

  String? _fixedLineNumber;
  String? get fixedLineNumber => _$this._fixedLineNumber;
  set fixedLineNumber(String? fixedLineNumber) =>
      _$this._fixedLineNumber = fixedLineNumber;

  String? _mobileNumber;
  String? get mobileNumber => _$this._mobileNumber;
  set mobileNumber(String? mobileNumber) => _$this._mobileNumber = mobileNumber;

  String? _emailAddress;
  String? get emailAddress => _$this._emailAddress;
  set emailAddress(String? emailAddress) => _$this._emailAddress = emailAddress;

  String? _streetAddressLine;
  String? get streetAddressLine => _$this._streetAddressLine;
  set streetAddressLine(String? streetAddressLine) =>
      _$this._streetAddressLine = streetAddressLine;

  String? _postalCode;
  String? get postalCode => _$this._postalCode;
  set postalCode(String? postalCode) => _$this._postalCode = postalCode;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  Gget_entourage_contactData_getWishes_structure_helpedPersonsBuilder() {
    Gget_entourage_contactData_getWishes_structure_helpedPersons
        ._initializeBuilder(this);
  }

  Gget_entourage_contactData_getWishes_structure_helpedPersonsBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _idContact = $v.idContact;
      _fullName = $v.fullName;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _contactType = $v.contactType;
      _relation = $v.relation;
      _fixedLineNumber = $v.fixedLineNumber;
      _mobileNumber = $v.mobileNumber;
      _emailAddress = $v.emailAddress;
      _streetAddressLine = $v.streetAddressLine;
      _postalCode = $v.postalCode;
      _city = $v.city;
      _country = $v.country;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_entourage_contactData_getWishes_structure_helpedPersons other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$Gget_entourage_contactData_getWishes_structure_helpedPersons;
  }

  @override
  void update(
      void Function(
              Gget_entourage_contactData_getWishes_structure_helpedPersonsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_entourage_contactData_getWishes_structure_helpedPersons build() =>
      _build();

  _$Gget_entourage_contactData_getWishes_structure_helpedPersons _build() {
    final _$result = _$v ??
        new _$Gget_entourage_contactData_getWishes_structure_helpedPersons._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_entourage_contactData_getWishes_structure_helpedPersons',
                'G__typename'),
            idContact: BuiltValueNullFieldError.checkNotNull(
                idContact,
                r'Gget_entourage_contactData_getWishes_structure_helpedPersons',
                'idContact'),
            fullName: fullName,
            firstName: firstName,
            lastName: lastName,
            contactType: BuiltValueNullFieldError.checkNotNull(
                contactType,
                r'Gget_entourage_contactData_getWishes_structure_helpedPersons',
                'contactType'),
            relation: relation,
            fixedLineNumber: fixedLineNumber,
            mobileNumber: mobileNumber,
            emailAddress: emailAddress,
            streetAddressLine: streetAddressLine,
            postalCode: postalCode,
            city: city,
            country: country);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
