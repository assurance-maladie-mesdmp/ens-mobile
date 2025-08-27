// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_es.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_es_get_es_details.query.data.gql.g.dart';

abstract class Gget_es_detailsData
    implements Built<Gget_es_detailsData, Gget_es_detailsDataBuilder> {
  Gget_es_detailsData._();

  factory Gget_es_detailsData(
          [void Function(Gget_es_detailsDataBuilder b) updates]) =
      _$Gget_es_detailsData;

  static void _initializeBuilder(Gget_es_detailsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gget_es_detailsData_getHealthStructureReferential
      get getHealthStructureReferential;
  static Serializer<Gget_es_detailsData> get serializer =>
      _$ggetEsDetailsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_es_detailsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_es_detailsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_es_detailsData.serializer,
        json,
      );
}

abstract class Gget_es_detailsData_getHealthStructureReferential
    implements
        Built<Gget_es_detailsData_getHealthStructureReferential,
            Gget_es_detailsData_getHealthStructureReferentialBuilder> {
  Gget_es_detailsData_getHealthStructureReferential._();

  factory Gget_es_detailsData_getHealthStructureReferential(
      [void Function(Gget_es_detailsData_getHealthStructureReferentialBuilder b)
          updates]) = _$Gget_es_detailsData_getHealthStructureReferential;

  static void _initializeBuilder(
          Gget_es_detailsData_getHealthStructureReferentialBuilder b) =>
      b..G__typename = 'HealthStructureReferentialModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String? get alias;
  String? get activity;
  String? get organizationId;
  bool get isContactable;
  String? get mail;
  Gget_es_detailsData_getHealthStructureReferential_addresses? get addresses;
  bool get active;
  static Serializer<Gget_es_detailsData_getHealthStructureReferential>
      get serializer =>
          _$ggetEsDetailsDataGetHealthStructureReferentialSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_es_detailsData_getHealthStructureReferential.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_es_detailsData_getHealthStructureReferential? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_es_detailsData_getHealthStructureReferential.serializer,
        json,
      );
}

abstract class Gget_es_detailsData_getHealthStructureReferential_addresses
    implements
        Built<Gget_es_detailsData_getHealthStructureReferential_addresses,
            Gget_es_detailsData_getHealthStructureReferential_addressesBuilder>,
        _i2.Gadresse_ps_es {
  Gget_es_detailsData_getHealthStructureReferential_addresses._();

  factory Gget_es_detailsData_getHealthStructureReferential_addresses(
      [void Function(
              Gget_es_detailsData_getHealthStructureReferential_addressesBuilder
                  b)
          updates]) = _$Gget_es_detailsData_getHealthStructureReferential_addresses;

  static void _initializeBuilder(
          Gget_es_detailsData_getHealthStructureReferential_addressesBuilder
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
  static Serializer<Gget_es_detailsData_getHealthStructureReferential_addresses>
      get serializer =>
          _$ggetEsDetailsDataGetHealthStructureReferentialAddressesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_es_detailsData_getHealthStructureReferential_addresses.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_es_detailsData_getHealthStructureReferential_addresses? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_es_detailsData_getHealthStructureReferential_addresses.serializer,
        json,
      );
}
