// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_es.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i3;

part 'ens_ps.fragment.data.gql.g.dart';

abstract class Gps {
  String get G__typename;
  String? get nationalId;
  String get healthProfessionalId;
  bool get declaredReferrer;
  bool get incorrectReferrer;
  String get firstName;
  String get lastName;
  BuiltList<Gps_exercices>? get exercices;
  BuiltList<Gps_adresses>? get adresses;
  _i1.GHealthProfessionalRoleEnum? get role;
  bool get active;
  Map<String, dynamic> toJson();
}

abstract class Gps_exercices {
  String get G__typename;
  String get profession;
  String? get specialities;
  Map<String, dynamic> toJson();
}

abstract class Gps_adresses implements _i2.Gadresse_ps_es {
  @override
  String get G__typename;
  @override
  String? get adresseName;
  @override
  String? get cityZipCode;
  @override
  String? get roadNumber;
  @override
  String? get labelRoadType;
  @override
  String? get road;
  @override
  String? get commune;
  @override
  String? get numeroTelephone;
  @override
  Map<String, dynamic> toJson();
}

abstract class GpsData implements Built<GpsData, GpsDataBuilder>, Gps {
  GpsData._();

  factory GpsData([void Function(GpsDataBuilder b) updates]) = _$GpsData;

  static void _initializeBuilder(GpsDataBuilder b) =>
      b..G__typename = 'HealthProfessionalModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get nationalId;
  @override
  String get healthProfessionalId;
  @override
  bool get declaredReferrer;
  @override
  bool get incorrectReferrer;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  BuiltList<GpsData_exercices>? get exercices;
  @override
  BuiltList<GpsData_adresses>? get adresses;
  @override
  _i1.GHealthProfessionalRoleEnum? get role;
  @override
  bool get active;
  static Serializer<GpsData> get serializer => _$gpsDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GpsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GpsData? fromJson(Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GpsData.serializer,
        json,
      );
}

abstract class GpsData_exercices
    implements
        Built<GpsData_exercices, GpsData_exercicesBuilder>,
        Gps_exercices {
  GpsData_exercices._();

  factory GpsData_exercices(
          [void Function(GpsData_exercicesBuilder b) updates]) =
      _$GpsData_exercices;

  static void _initializeBuilder(GpsData_exercicesBuilder b) =>
      b..G__typename = 'HealthProfessionalExerciceModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get profession;
  @override
  String? get specialities;
  static Serializer<GpsData_exercices> get serializer =>
      _$gpsDataExercicesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GpsData_exercices.serializer,
        this,
      ) as Map<String, dynamic>);

  static GpsData_exercices? fromJson(Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GpsData_exercices.serializer,
        json,
      );
}

abstract class GpsData_adresses
    implements
        Built<GpsData_adresses, GpsData_adressesBuilder>,
        Gps_adresses,
        _i2.Gadresse_ps_es {
  GpsData_adresses._();

  factory GpsData_adresses([void Function(GpsData_adressesBuilder b) updates]) =
      _$GpsData_adresses;

  static void _initializeBuilder(GpsData_adressesBuilder b) =>
      b..G__typename = 'HealthProfessionalAddressModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get adresseName;
  @override
  String? get cityZipCode;
  @override
  String? get roadNumber;
  @override
  String? get labelRoadType;
  @override
  String? get road;
  @override
  String? get commune;
  @override
  String? get numeroTelephone;
  static Serializer<GpsData_adresses> get serializer =>
      _$gpsDataAdressesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GpsData_adresses.serializer,
        this,
      ) as Map<String, dynamic>);

  static GpsData_adresses? fromJson(Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GpsData_adresses.serializer,
        json,
      );
}
