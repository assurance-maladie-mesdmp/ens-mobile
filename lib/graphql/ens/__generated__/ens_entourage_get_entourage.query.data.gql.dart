// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_entourage_structure.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_entourage_get_entourage.query.data.gql.g.dart';

abstract class Gget_entourage_contactData
    implements
        Built<Gget_entourage_contactData, Gget_entourage_contactDataBuilder> {
  Gget_entourage_contactData._();

  factory Gget_entourage_contactData(
          [void Function(Gget_entourage_contactDataBuilder b) updates]) =
      _$Gget_entourage_contactData;

  static void _initializeBuilder(Gget_entourage_contactDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gget_entourage_contactData_getWishes get getWishes;
  static Serializer<Gget_entourage_contactData> get serializer =>
      _$ggetEntourageContactDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_entourage_contactData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_entourage_contactData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_entourage_contactData.serializer,
        json,
      );
}

abstract class Gget_entourage_contactData_getWishes
    implements
        Built<Gget_entourage_contactData_getWishes,
            Gget_entourage_contactData_getWishesBuilder>,
        _i2.GentourageStructure {
  Gget_entourage_contactData_getWishes._();

  factory Gget_entourage_contactData_getWishes(
      [void Function(Gget_entourage_contactData_getWishesBuilder b)
          updates]) = _$Gget_entourage_contactData_getWishes;

  static void _initializeBuilder(
          Gget_entourage_contactData_getWishesBuilder b) =>
      b..G__typename = 'WishesModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  Gget_entourage_contactData_getWishes_structure get structure;
  static Serializer<Gget_entourage_contactData_getWishes> get serializer =>
      _$ggetEntourageContactDataGetWishesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_entourage_contactData_getWishes.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_entourage_contactData_getWishes? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_entourage_contactData_getWishes.serializer,
        json,
      );
}

abstract class Gget_entourage_contactData_getWishes_structure
    implements
        Built<Gget_entourage_contactData_getWishes_structure,
            Gget_entourage_contactData_getWishes_structureBuilder>,
        _i2.GentourageStructure_structure {
  Gget_entourage_contactData_getWishes_structure._();

  factory Gget_entourage_contactData_getWishes_structure(
      [void Function(Gget_entourage_contactData_getWishes_structureBuilder b)
          updates]) = _$Gget_entourage_contactData_getWishes_structure;

  static void _initializeBuilder(
          Gget_entourage_contactData_getWishes_structureBuilder b) =>
      b..G__typename = 'StructureModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<Gget_entourage_contactData_getWishes_structure_emergencyContacts>?
      get emergencyContacts;
  @override
  Gget_entourage_contactData_getWishes_structure_trustedPerson?
      get trustedPerson;
  @override
  BuiltList<Gget_entourage_contactData_getWishes_structure_caregiverPersons>?
      get caregiverPersons;
  @override
  BuiltList<Gget_entourage_contactData_getWishes_structure_helpedPersons>?
      get helpedPersons;
  @override
  bool? get informedAboutOrganDonation;
  static Serializer<Gget_entourage_contactData_getWishes_structure>
      get serializer => _$ggetEntourageContactDataGetWishesStructureSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_entourage_contactData_getWishes_structure.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_entourage_contactData_getWishes_structure? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_entourage_contactData_getWishes_structure.serializer,
        json,
      );
}

abstract class Gget_entourage_contactData_getWishes_structure_emergencyContacts
    implements
        Built<Gget_entourage_contactData_getWishes_structure_emergencyContacts,
            Gget_entourage_contactData_getWishes_structure_emergencyContactsBuilder>,
        _i2.GentourageStructure_structure_emergencyContacts {
  Gget_entourage_contactData_getWishes_structure_emergencyContacts._();

  factory Gget_entourage_contactData_getWishes_structure_emergencyContacts(
          [void Function(
                  Gget_entourage_contactData_getWishes_structure_emergencyContactsBuilder
                      b)
              updates]) =
      _$Gget_entourage_contactData_getWishes_structure_emergencyContacts;

  static void _initializeBuilder(
          Gget_entourage_contactData_getWishes_structure_emergencyContactsBuilder
              b) =>
      b..G__typename = 'EmergencyContactModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get idContact;
  @override
  String? get fullName;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  _i3.GContactType get contactType;
  @override
  _i3.GEntourageRelation? get relation;
  @override
  String? get fixedLineNumber;
  @override
  String? get mobileNumber;
  @override
  String? get emailAddress;
  @override
  String? get streetAddressLine;
  @override
  String? get postalCode;
  @override
  String? get city;
  @override
  String? get country;
  static Serializer<
          Gget_entourage_contactData_getWishes_structure_emergencyContacts>
      get serializer =>
          _$ggetEntourageContactDataGetWishesStructureEmergencyContactsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_entourage_contactData_getWishes_structure_emergencyContacts
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_entourage_contactData_getWishes_structure_emergencyContacts?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_entourage_contactData_getWishes_structure_emergencyContacts
                .serializer,
            json,
          );
}

abstract class Gget_entourage_contactData_getWishes_structure_trustedPerson
    implements
        Built<Gget_entourage_contactData_getWishes_structure_trustedPerson,
            Gget_entourage_contactData_getWishes_structure_trustedPersonBuilder>,
        _i2.GentourageStructure_structure_trustedPerson {
  Gget_entourage_contactData_getWishes_structure_trustedPerson._();

  factory Gget_entourage_contactData_getWishes_structure_trustedPerson(
          [void Function(
                  Gget_entourage_contactData_getWishes_structure_trustedPersonBuilder
                      b)
              updates]) =
      _$Gget_entourage_contactData_getWishes_structure_trustedPerson;

  static void _initializeBuilder(
          Gget_entourage_contactData_getWishes_structure_trustedPersonBuilder
              b) =>
      b..G__typename = 'TrustedPersonModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get idContact;
  @override
  String? get fullName;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  _i3.GContactType get contactType;
  @override
  _i3.GEntourageRelation? get relation;
  @override
  String? get fixedLineNumber;
  @override
  String? get mobileNumber;
  @override
  String? get emailAddress;
  @override
  String? get streetAddressLine;
  @override
  String? get postalCode;
  @override
  String? get city;
  @override
  String? get country;
  static Serializer<
          Gget_entourage_contactData_getWishes_structure_trustedPerson>
      get serializer =>
          _$ggetEntourageContactDataGetWishesStructureTrustedPersonSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_entourage_contactData_getWishes_structure_trustedPerson.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_entourage_contactData_getWishes_structure_trustedPerson? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_entourage_contactData_getWishes_structure_trustedPerson.serializer,
        json,
      );
}

abstract class Gget_entourage_contactData_getWishes_structure_caregiverPersons
    implements
        Built<Gget_entourage_contactData_getWishes_structure_caregiverPersons,
            Gget_entourage_contactData_getWishes_structure_caregiverPersonsBuilder>,
        _i2.GentourageStructure_structure_caregiverPersons {
  Gget_entourage_contactData_getWishes_structure_caregiverPersons._();

  factory Gget_entourage_contactData_getWishes_structure_caregiverPersons(
          [void Function(
                  Gget_entourage_contactData_getWishes_structure_caregiverPersonsBuilder
                      b)
              updates]) =
      _$Gget_entourage_contactData_getWishes_structure_caregiverPersons;

  static void _initializeBuilder(
          Gget_entourage_contactData_getWishes_structure_caregiverPersonsBuilder
              b) =>
      b..G__typename = 'CaregiverPersonsModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get idContact;
  @override
  String? get fullName;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  _i3.GContactType get contactType;
  @override
  _i3.GEntourageRelation? get relation;
  @override
  String? get fixedLineNumber;
  @override
  String? get mobileNumber;
  @override
  String? get emailAddress;
  @override
  String? get streetAddressLine;
  @override
  String? get postalCode;
  @override
  String? get city;
  @override
  String? get country;
  static Serializer<
          Gget_entourage_contactData_getWishes_structure_caregiverPersons>
      get serializer =>
          _$ggetEntourageContactDataGetWishesStructureCaregiverPersonsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_entourage_contactData_getWishes_structure_caregiverPersons
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_entourage_contactData_getWishes_structure_caregiverPersons?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_entourage_contactData_getWishes_structure_caregiverPersons
                .serializer,
            json,
          );
}

abstract class Gget_entourage_contactData_getWishes_structure_helpedPersons
    implements
        Built<Gget_entourage_contactData_getWishes_structure_helpedPersons,
            Gget_entourage_contactData_getWishes_structure_helpedPersonsBuilder>,
        _i2.GentourageStructure_structure_helpedPersons {
  Gget_entourage_contactData_getWishes_structure_helpedPersons._();

  factory Gget_entourage_contactData_getWishes_structure_helpedPersons(
          [void Function(
                  Gget_entourage_contactData_getWishes_structure_helpedPersonsBuilder
                      b)
              updates]) =
      _$Gget_entourage_contactData_getWishes_structure_helpedPersons;

  static void _initializeBuilder(
          Gget_entourage_contactData_getWishes_structure_helpedPersonsBuilder
              b) =>
      b..G__typename = 'HelpedPersonsModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get idContact;
  @override
  String? get fullName;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  _i3.GContactType get contactType;
  @override
  _i3.GEntourageRelation? get relation;
  @override
  String? get fixedLineNumber;
  @override
  String? get mobileNumber;
  @override
  String? get emailAddress;
  @override
  String? get streetAddressLine;
  @override
  String? get postalCode;
  @override
  String? get city;
  @override
  String? get country;
  static Serializer<
          Gget_entourage_contactData_getWishes_structure_helpedPersons>
      get serializer =>
          _$ggetEntourageContactDataGetWishesStructureHelpedPersonsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_entourage_contactData_getWishes_structure_helpedPersons.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_entourage_contactData_getWishes_structure_helpedPersons? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_entourage_contactData_getWishes_structure_helpedPersons.serializer,
        json,
      );
}
