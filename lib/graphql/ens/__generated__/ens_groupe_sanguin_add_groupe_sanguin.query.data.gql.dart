// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_groupe_sanguin_add_groupe_sanguin.query.data.gql.g.dart';

abstract class Gadd_groupe_sanguinData
    implements Built<Gadd_groupe_sanguinData, Gadd_groupe_sanguinDataBuilder> {
  Gadd_groupe_sanguinData._();

  factory Gadd_groupe_sanguinData(
          [void Function(Gadd_groupe_sanguinDataBuilder b) updates]) =
      _$Gadd_groupe_sanguinData;

  static void _initializeBuilder(Gadd_groupe_sanguinDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gadd_groupe_sanguinData_createBloodGroup get createBloodGroup;
  static Serializer<Gadd_groupe_sanguinData> get serializer =>
      _$gaddGroupeSanguinDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gadd_groupe_sanguinData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_groupe_sanguinData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gadd_groupe_sanguinData.serializer,
        json,
      );
}

abstract class Gadd_groupe_sanguinData_createBloodGroup
    implements
        Built<Gadd_groupe_sanguinData_createBloodGroup,
            Gadd_groupe_sanguinData_createBloodGroupBuilder> {
  Gadd_groupe_sanguinData_createBloodGroup._();

  factory Gadd_groupe_sanguinData_createBloodGroup(
      [void Function(Gadd_groupe_sanguinData_createBloodGroupBuilder b)
          updates]) = _$Gadd_groupe_sanguinData_createBloodGroup;

  static void _initializeBuilder(
          Gadd_groupe_sanguinData_createBloodGroupBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gadd_groupe_sanguinData_createBloodGroup> get serializer =>
      _$gaddGroupeSanguinDataCreateBloodGroupSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gadd_groupe_sanguinData_createBloodGroup.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_groupe_sanguinData_createBloodGroup? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gadd_groupe_sanguinData_createBloodGroup.serializer,
        json,
      );
}
