// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_handicap_delete.query.data.gql.g.dart';

abstract class Gdelete_handicapData
    implements Built<Gdelete_handicapData, Gdelete_handicapDataBuilder> {
  Gdelete_handicapData._();

  factory Gdelete_handicapData(
          [void Function(Gdelete_handicapDataBuilder b) updates]) =
      _$Gdelete_handicapData;

  static void _initializeBuilder(Gdelete_handicapDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gdelete_handicapData_removeDisability get removeDisability;
  static Serializer<Gdelete_handicapData> get serializer =>
      _$gdeleteHandicapDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_handicapData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_handicapData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_handicapData.serializer,
        json,
      );
}

abstract class Gdelete_handicapData_removeDisability
    implements
        Built<Gdelete_handicapData_removeDisability,
            Gdelete_handicapData_removeDisabilityBuilder> {
  Gdelete_handicapData_removeDisability._();

  factory Gdelete_handicapData_removeDisability(
      [void Function(Gdelete_handicapData_removeDisabilityBuilder b)
          updates]) = _$Gdelete_handicapData_removeDisability;

  static void _initializeBuilder(
          Gdelete_handicapData_removeDisabilityBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gdelete_handicapData_removeDisability> get serializer =>
      _$gdeleteHandicapDataRemoveDisabilitySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_handicapData_removeDisability.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_handicapData_removeDisability? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_handicapData_removeDisability.serializer,
        json,
      );
}
