// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_maladies_add_maladie.query.data.gql.g.dart';

abstract class Gadd_maladieData
    implements Built<Gadd_maladieData, Gadd_maladieDataBuilder> {
  Gadd_maladieData._();

  factory Gadd_maladieData([void Function(Gadd_maladieDataBuilder b) updates]) =
      _$Gadd_maladieData;

  static void _initializeBuilder(Gadd_maladieDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gadd_maladieData_postDisease get postDisease;
  static Serializer<Gadd_maladieData> get serializer =>
      _$gaddMaladieDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gadd_maladieData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_maladieData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gadd_maladieData.serializer,
        json,
      );
}

abstract class Gadd_maladieData_postDisease
    implements
        Built<Gadd_maladieData_postDisease,
            Gadd_maladieData_postDiseaseBuilder> {
  Gadd_maladieData_postDisease._();

  factory Gadd_maladieData_postDisease(
          [void Function(Gadd_maladieData_postDiseaseBuilder b) updates]) =
      _$Gadd_maladieData_postDisease;

  static void _initializeBuilder(Gadd_maladieData_postDiseaseBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gadd_maladieData_postDisease> get serializer =>
      _$gaddMaladieDataPostDiseaseSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gadd_maladieData_postDisease.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_maladieData_postDisease? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gadd_maladieData_postDisease.serializer,
        json,
      );
}
