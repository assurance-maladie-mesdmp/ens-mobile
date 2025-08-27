// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_es.fragment.data.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_ps_get_ps_details.query.data.gql.g.dart';

abstract class Gget_professionnels_de_sante_detailsData
    implements
        Built<Gget_professionnels_de_sante_detailsData,
            Gget_professionnels_de_sante_detailsDataBuilder> {
  Gget_professionnels_de_sante_detailsData._();

  factory Gget_professionnels_de_sante_detailsData(
      [void Function(Gget_professionnels_de_sante_detailsDataBuilder b)
          updates]) = _$Gget_professionnels_de_sante_detailsData;

  static void _initializeBuilder(
          Gget_professionnels_de_sante_detailsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat
      get getHealthProfessionalReferentialByIdNat;
  static Serializer<Gget_professionnels_de_sante_detailsData> get serializer =>
      _$ggetProfessionnelsDeSanteDetailsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_professionnels_de_sante_detailsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_professionnels_de_sante_detailsData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_professionnels_de_sante_detailsData.serializer,
        json,
      );
}

abstract class Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat
    implements
        Built<
            Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat,
            Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNatBuilder> {
  Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat._();

  factory Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat(
          [void Function(
                  Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNatBuilder
                      b)
              updates]) =
      _$Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat;

  static void _initializeBuilder(
          Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNatBuilder
              b) =>
      b..G__typename = 'HealthProfessionalReferentialModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get idNat;
  String get firstName;
  String get lastName;
  String? get profession;
  String? get specialities;
  String? get shortLabelSpecialities;
  bool get isContactable;
  String? get contactId;
  _i2.GHealthProfessionalRoleEnum? get role;
  BuiltList<
          Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat_adresses>?
      get adresses;
  bool get active;
  static Serializer<
          Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat>
      get serializer =>
          _$ggetProfessionnelsDeSanteDetailsDataGetHealthProfessionalReferentialByIdNatSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat
                .serializer,
            json,
          );
}

abstract class Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat_adresses
    implements
        Built<
            Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat_adresses,
            Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat_adressesBuilder>,
        _i3.Gadresse_ps_es {
  Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat_adresses._();

  factory Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat_adresses(
          [void Function(
                  Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat_adressesBuilder
                      b)
              updates]) =
      _$Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat_adresses;

  static void _initializeBuilder(
          Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat_adressesBuilder
              b) =>
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
  static Serializer<
          Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat_adresses>
      get serializer =>
          _$ggetProfessionnelsDeSanteDetailsDataGetHealthProfessionalReferentialByIdNatAdressesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat_adresses
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat_adresses?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_professionnels_de_sante_detailsData_getHealthProfessionalReferentialByIdNat_adresses
                .serializer,
            json,
          );
}
