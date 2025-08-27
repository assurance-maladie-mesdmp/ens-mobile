// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_allergies_add_allergie.query.data.gql.g.dart';

abstract class Gadd_allergieData
    implements Built<Gadd_allergieData, Gadd_allergieDataBuilder> {
  Gadd_allergieData._();

  factory Gadd_allergieData(
          [void Function(Gadd_allergieDataBuilder b) updates]) =
      _$Gadd_allergieData;

  static void _initializeBuilder(Gadd_allergieDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gadd_allergieData_postAllergy get postAllergy;
  static Serializer<Gadd_allergieData> get serializer =>
      _$gaddAllergieDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gadd_allergieData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_allergieData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gadd_allergieData.serializer,
        json,
      );
}

abstract class Gadd_allergieData_postAllergy
    implements
        Built<Gadd_allergieData_postAllergy,
            Gadd_allergieData_postAllergyBuilder> {
  Gadd_allergieData_postAllergy._();

  factory Gadd_allergieData_postAllergy(
          [void Function(Gadd_allergieData_postAllergyBuilder b) updates]) =
      _$Gadd_allergieData_postAllergy;

  static void _initializeBuilder(Gadd_allergieData_postAllergyBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gadd_allergieData_postAllergy> get serializer =>
      _$gaddAllergieDataPostAllergySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gadd_allergieData_postAllergy.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_allergieData_postAllergy? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gadd_allergieData_postAllergy.serializer,
        json,
      );
}
