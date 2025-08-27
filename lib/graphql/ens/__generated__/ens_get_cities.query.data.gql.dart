// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_get_cities.query.data.gql.g.dart';

abstract class Gget_citiesData
    implements Built<Gget_citiesData, Gget_citiesDataBuilder> {
  Gget_citiesData._();

  factory Gget_citiesData([void Function(Gget_citiesDataBuilder b) updates]) =
      _$Gget_citiesData;

  static void _initializeBuilder(Gget_citiesDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<Gget_citiesData_getGroupedCityInformation>
      get getGroupedCityInformation;
  static Serializer<Gget_citiesData> get serializer =>
      _$ggetCitiesDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_citiesData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_citiesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_citiesData.serializer,
        json,
      );
}

abstract class Gget_citiesData_getGroupedCityInformation
    implements
        Built<Gget_citiesData_getGroupedCityInformation,
            Gget_citiesData_getGroupedCityInformationBuilder> {
  Gget_citiesData_getGroupedCityInformation._();

  factory Gget_citiesData_getGroupedCityInformation(
      [void Function(Gget_citiesData_getGroupedCityInformationBuilder b)
          updates]) = _$Gget_citiesData_getGroupedCityInformation;

  static void _initializeBuilder(
          Gget_citiesData_getGroupedCityInformationBuilder b) =>
      b..G__typename = 'GroupedCityModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get inseeCode;
  String get departmentCode;
  BuiltList<String>? get zipCodes;
  String get cityName;
  static Serializer<Gget_citiesData_getGroupedCityInformation> get serializer =>
      _$ggetCitiesDataGetGroupedCityInformationSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_citiesData_getGroupedCityInformation.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_citiesData_getGroupedCityInformation? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_citiesData_getGroupedCityInformation.serializer,
        json,
      );
}
