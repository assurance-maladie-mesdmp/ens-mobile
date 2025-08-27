// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_allergies_delete_allergie.query.data.gql.g.dart';

abstract class Gdelete_allergieData
    implements Built<Gdelete_allergieData, Gdelete_allergieDataBuilder> {
  Gdelete_allergieData._();

  factory Gdelete_allergieData(
          [void Function(Gdelete_allergieDataBuilder b) updates]) =
      _$Gdelete_allergieData;

  static void _initializeBuilder(Gdelete_allergieDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gdelete_allergieData_deleteAllergy get deleteAllergy;
  static Serializer<Gdelete_allergieData> get serializer =>
      _$gdeleteAllergieDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_allergieData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_allergieData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_allergieData.serializer,
        json,
      );
}

abstract class Gdelete_allergieData_deleteAllergy
    implements
        Built<Gdelete_allergieData_deleteAllergy,
            Gdelete_allergieData_deleteAllergyBuilder> {
  Gdelete_allergieData_deleteAllergy._();

  factory Gdelete_allergieData_deleteAllergy(
      [void Function(Gdelete_allergieData_deleteAllergyBuilder b)
          updates]) = _$Gdelete_allergieData_deleteAllergy;

  static void _initializeBuilder(Gdelete_allergieData_deleteAllergyBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gdelete_allergieData_deleteAllergy> get serializer =>
      _$gdeleteAllergieDataDeleteAllergySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_allergieData_deleteAllergy.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_allergieData_deleteAllergy? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_allergieData_deleteAllergy.serializer,
        json,
      );
}
