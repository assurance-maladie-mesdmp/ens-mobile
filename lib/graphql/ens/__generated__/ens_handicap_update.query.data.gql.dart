// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_handicap_update.query.data.gql.g.dart';

abstract class Gupdate_handicapData
    implements Built<Gupdate_handicapData, Gupdate_handicapDataBuilder> {
  Gupdate_handicapData._();

  factory Gupdate_handicapData(
          [void Function(Gupdate_handicapDataBuilder b) updates]) =
      _$Gupdate_handicapData;

  static void _initializeBuilder(Gupdate_handicapDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gupdate_handicapData_updateDisability get updateDisability;
  static Serializer<Gupdate_handicapData> get serializer =>
      _$gupdateHandicapDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_handicapData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_handicapData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gupdate_handicapData.serializer,
        json,
      );
}

abstract class Gupdate_handicapData_updateDisability
    implements
        Built<Gupdate_handicapData_updateDisability,
            Gupdate_handicapData_updateDisabilityBuilder> {
  Gupdate_handicapData_updateDisability._();

  factory Gupdate_handicapData_updateDisability(
      [void Function(Gupdate_handicapData_updateDisabilityBuilder b)
          updates]) = _$Gupdate_handicapData_updateDisability;

  static void _initializeBuilder(
          Gupdate_handicapData_updateDisabilityBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gupdate_handicapData_updateDisability> get serializer =>
      _$gupdateHandicapDataUpdateDisabilitySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_handicapData_updateDisability.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_handicapData_updateDisability? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gupdate_handicapData_updateDisability.serializer,
        json,
      );
}
