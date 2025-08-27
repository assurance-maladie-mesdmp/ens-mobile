// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_entourage_structure.fragment.data.gql.g.dart';

abstract class GentourageStructure {
  String get G__typename;
  GentourageStructure_structure get structure;
  Map<String, dynamic> toJson();
}

abstract class GentourageStructure_structure {
  String get G__typename;
  BuiltList<GentourageStructure_structure_emergencyContacts>?
      get emergencyContacts;
  GentourageStructure_structure_trustedPerson? get trustedPerson;
  BuiltList<GentourageStructure_structure_caregiverPersons>?
      get caregiverPersons;
  BuiltList<GentourageStructure_structure_helpedPersons>? get helpedPersons;
  bool? get informedAboutOrganDonation;
  Map<String, dynamic> toJson();
}

abstract class GentourageStructure_structure_emergencyContacts {
  String get G__typename;
  String get idContact;
  String? get fullName;
  String? get firstName;
  String? get lastName;
  _i1.GContactType get contactType;
  _i1.GEntourageRelation? get relation;
  String? get fixedLineNumber;
  String? get mobileNumber;
  String? get emailAddress;
  String? get streetAddressLine;
  String? get postalCode;
  String? get city;
  String? get country;
  Map<String, dynamic> toJson();
}

abstract class GentourageStructure_structure_trustedPerson {
  String get G__typename;
  String get idContact;
  String? get fullName;
  String? get firstName;
  String? get lastName;
  _i1.GContactType get contactType;
  _i1.GEntourageRelation? get relation;
  String? get fixedLineNumber;
  String? get mobileNumber;
  String? get emailAddress;
  String? get streetAddressLine;
  String? get postalCode;
  String? get city;
  String? get country;
  Map<String, dynamic> toJson();
}

abstract class GentourageStructure_structure_caregiverPersons {
  String get G__typename;
  String get idContact;
  String? get fullName;
  String? get firstName;
  String? get lastName;
  _i1.GContactType get contactType;
  _i1.GEntourageRelation? get relation;
  String? get fixedLineNumber;
  String? get mobileNumber;
  String? get emailAddress;
  String? get streetAddressLine;
  String? get postalCode;
  String? get city;
  String? get country;
  Map<String, dynamic> toJson();
}

abstract class GentourageStructure_structure_helpedPersons {
  String get G__typename;
  String get idContact;
  String? get fullName;
  String? get firstName;
  String? get lastName;
  _i1.GContactType get contactType;
  _i1.GEntourageRelation? get relation;
  String? get fixedLineNumber;
  String? get mobileNumber;
  String? get emailAddress;
  String? get streetAddressLine;
  String? get postalCode;
  String? get city;
  String? get country;
  Map<String, dynamic> toJson();
}

abstract class GentourageStructureData
    implements
        Built<GentourageStructureData, GentourageStructureDataBuilder>,
        GentourageStructure {
  GentourageStructureData._();

  factory GentourageStructureData(
          [void Function(GentourageStructureDataBuilder b) updates]) =
      _$GentourageStructureData;

  static void _initializeBuilder(GentourageStructureDataBuilder b) =>
      b..G__typename = 'WishesModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GentourageStructureData_structure get structure;
  static Serializer<GentourageStructureData> get serializer =>
      _$gentourageStructureDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GentourageStructureData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GentourageStructureData? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GentourageStructureData.serializer,
        json,
      );
}

abstract class GentourageStructureData_structure
    implements
        Built<GentourageStructureData_structure,
            GentourageStructureData_structureBuilder>,
        GentourageStructure_structure {
  GentourageStructureData_structure._();

  factory GentourageStructureData_structure(
          [void Function(GentourageStructureData_structureBuilder b) updates]) =
      _$GentourageStructureData_structure;

  static void _initializeBuilder(GentourageStructureData_structureBuilder b) =>
      b..G__typename = 'StructureModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GentourageStructureData_structure_emergencyContacts>?
      get emergencyContacts;
  @override
  GentourageStructureData_structure_trustedPerson? get trustedPerson;
  @override
  BuiltList<GentourageStructureData_structure_caregiverPersons>?
      get caregiverPersons;
  @override
  BuiltList<GentourageStructureData_structure_helpedPersons>? get helpedPersons;
  @override
  bool? get informedAboutOrganDonation;
  static Serializer<GentourageStructureData_structure> get serializer =>
      _$gentourageStructureDataStructureSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GentourageStructureData_structure.serializer,
        this,
      ) as Map<String, dynamic>);

  static GentourageStructureData_structure? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GentourageStructureData_structure.serializer,
        json,
      );
}

abstract class GentourageStructureData_structure_emergencyContacts
    implements
        Built<GentourageStructureData_structure_emergencyContacts,
            GentourageStructureData_structure_emergencyContactsBuilder>,
        GentourageStructure_structure_emergencyContacts {
  GentourageStructureData_structure_emergencyContacts._();

  factory GentourageStructureData_structure_emergencyContacts(
      [void Function(
              GentourageStructureData_structure_emergencyContactsBuilder b)
          updates]) = _$GentourageStructureData_structure_emergencyContacts;

  static void _initializeBuilder(
          GentourageStructureData_structure_emergencyContactsBuilder b) =>
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
  _i1.GContactType get contactType;
  @override
  _i1.GEntourageRelation? get relation;
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
  static Serializer<GentourageStructureData_structure_emergencyContacts>
      get serializer =>
          _$gentourageStructureDataStructureEmergencyContactsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GentourageStructureData_structure_emergencyContacts.serializer,
        this,
      ) as Map<String, dynamic>);

  static GentourageStructureData_structure_emergencyContacts? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GentourageStructureData_structure_emergencyContacts.serializer,
        json,
      );
}

abstract class GentourageStructureData_structure_trustedPerson
    implements
        Built<GentourageStructureData_structure_trustedPerson,
            GentourageStructureData_structure_trustedPersonBuilder>,
        GentourageStructure_structure_trustedPerson {
  GentourageStructureData_structure_trustedPerson._();

  factory GentourageStructureData_structure_trustedPerson(
      [void Function(GentourageStructureData_structure_trustedPersonBuilder b)
          updates]) = _$GentourageStructureData_structure_trustedPerson;

  static void _initializeBuilder(
          GentourageStructureData_structure_trustedPersonBuilder b) =>
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
  _i1.GContactType get contactType;
  @override
  _i1.GEntourageRelation? get relation;
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
  static Serializer<GentourageStructureData_structure_trustedPerson>
      get serializer =>
          _$gentourageStructureDataStructureTrustedPersonSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GentourageStructureData_structure_trustedPerson.serializer,
        this,
      ) as Map<String, dynamic>);

  static GentourageStructureData_structure_trustedPerson? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GentourageStructureData_structure_trustedPerson.serializer,
        json,
      );
}

abstract class GentourageStructureData_structure_caregiverPersons
    implements
        Built<GentourageStructureData_structure_caregiverPersons,
            GentourageStructureData_structure_caregiverPersonsBuilder>,
        GentourageStructure_structure_caregiverPersons {
  GentourageStructureData_structure_caregiverPersons._();

  factory GentourageStructureData_structure_caregiverPersons(
      [void Function(
              GentourageStructureData_structure_caregiverPersonsBuilder b)
          updates]) = _$GentourageStructureData_structure_caregiverPersons;

  static void _initializeBuilder(
          GentourageStructureData_structure_caregiverPersonsBuilder b) =>
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
  _i1.GContactType get contactType;
  @override
  _i1.GEntourageRelation? get relation;
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
  static Serializer<GentourageStructureData_structure_caregiverPersons>
      get serializer =>
          _$gentourageStructureDataStructureCaregiverPersonsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GentourageStructureData_structure_caregiverPersons.serializer,
        this,
      ) as Map<String, dynamic>);

  static GentourageStructureData_structure_caregiverPersons? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GentourageStructureData_structure_caregiverPersons.serializer,
        json,
      );
}

abstract class GentourageStructureData_structure_helpedPersons
    implements
        Built<GentourageStructureData_structure_helpedPersons,
            GentourageStructureData_structure_helpedPersonsBuilder>,
        GentourageStructure_structure_helpedPersons {
  GentourageStructureData_structure_helpedPersons._();

  factory GentourageStructureData_structure_helpedPersons(
      [void Function(GentourageStructureData_structure_helpedPersonsBuilder b)
          updates]) = _$GentourageStructureData_structure_helpedPersons;

  static void _initializeBuilder(
          GentourageStructureData_structure_helpedPersonsBuilder b) =>
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
  _i1.GContactType get contactType;
  @override
  _i1.GEntourageRelation? get relation;
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
  static Serializer<GentourageStructureData_structure_helpedPersons>
      get serializer =>
          _$gentourageStructureDataStructureHelpedPersonsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GentourageStructureData_structure_helpedPersons.serializer,
        this,
      ) as Map<String, dynamic>);

  static GentourageStructureData_structure_helpedPersons? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GentourageStructureData_structure_helpedPersons.serializer,
        json,
      );
}
