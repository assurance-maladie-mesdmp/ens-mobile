// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_maladies_delete_maladie.query.data.gql.g.dart';

abstract class Gdelete_maladieData
    implements Built<Gdelete_maladieData, Gdelete_maladieDataBuilder> {
  Gdelete_maladieData._();

  factory Gdelete_maladieData(
          [void Function(Gdelete_maladieDataBuilder b) updates]) =
      _$Gdelete_maladieData;

  static void _initializeBuilder(Gdelete_maladieDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gdelete_maladieData_deleteDisease get deleteDisease;
  static Serializer<Gdelete_maladieData> get serializer =>
      _$gdeleteMaladieDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_maladieData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_maladieData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_maladieData.serializer,
        json,
      );
}

abstract class Gdelete_maladieData_deleteDisease
    implements
        Built<Gdelete_maladieData_deleteDisease,
            Gdelete_maladieData_deleteDiseaseBuilder> {
  Gdelete_maladieData_deleteDisease._();

  factory Gdelete_maladieData_deleteDisease(
          [void Function(Gdelete_maladieData_deleteDiseaseBuilder b) updates]) =
      _$Gdelete_maladieData_deleteDisease;

  static void _initializeBuilder(Gdelete_maladieData_deleteDiseaseBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gdelete_maladieData_deleteDisease> get serializer =>
      _$gdeleteMaladieDataDeleteDiseaseSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_maladieData_deleteDisease.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_maladieData_deleteDisease? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_maladieData_deleteDisease.serializer,
        json,
      );
}
