// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_handicap_create.query.data.gql.g.dart';

abstract class Gadd_handicapData
    implements Built<Gadd_handicapData, Gadd_handicapDataBuilder> {
  Gadd_handicapData._();

  factory Gadd_handicapData(
          [void Function(Gadd_handicapDataBuilder b) updates]) =
      _$Gadd_handicapData;

  static void _initializeBuilder(Gadd_handicapDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gadd_handicapData_createDisability get createDisability;
  static Serializer<Gadd_handicapData> get serializer =>
      _$gaddHandicapDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gadd_handicapData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_handicapData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gadd_handicapData.serializer,
        json,
      );
}

abstract class Gadd_handicapData_createDisability
    implements
        Built<Gadd_handicapData_createDisability,
            Gadd_handicapData_createDisabilityBuilder> {
  Gadd_handicapData_createDisability._();

  factory Gadd_handicapData_createDisability(
      [void Function(Gadd_handicapData_createDisabilityBuilder b)
          updates]) = _$Gadd_handicapData_createDisability;

  static void _initializeBuilder(Gadd_handicapData_createDisabilityBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gadd_handicapData_createDisability> get serializer =>
      _$gaddHandicapDataCreateDisabilitySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gadd_handicapData_createDisability.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_handicapData_createDisability? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gadd_handicapData_createDisability.serializer,
        json,
      );
}
