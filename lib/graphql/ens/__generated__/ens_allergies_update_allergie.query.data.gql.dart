// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_allergies_update_allergie.query.data.gql.g.dart';

abstract class Gupdate_allergieData
    implements Built<Gupdate_allergieData, Gupdate_allergieDataBuilder> {
  Gupdate_allergieData._();

  factory Gupdate_allergieData(
          [void Function(Gupdate_allergieDataBuilder b) updates]) =
      _$Gupdate_allergieData;

  static void _initializeBuilder(Gupdate_allergieDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gupdate_allergieData_putAllergy get putAllergy;
  static Serializer<Gupdate_allergieData> get serializer =>
      _$gupdateAllergieDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_allergieData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_allergieData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gupdate_allergieData.serializer,
        json,
      );
}

abstract class Gupdate_allergieData_putAllergy
    implements
        Built<Gupdate_allergieData_putAllergy,
            Gupdate_allergieData_putAllergyBuilder> {
  Gupdate_allergieData_putAllergy._();

  factory Gupdate_allergieData_putAllergy(
          [void Function(Gupdate_allergieData_putAllergyBuilder b) updates]) =
      _$Gupdate_allergieData_putAllergy;

  static void _initializeBuilder(Gupdate_allergieData_putAllergyBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gupdate_allergieData_putAllergy> get serializer =>
      _$gupdateAllergieDataPutAllergySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_allergieData_putAllergy.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_allergieData_putAllergy? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gupdate_allergieData_putAllergy.serializer,
        json,
      );
}
