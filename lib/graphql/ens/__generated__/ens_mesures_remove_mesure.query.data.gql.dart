// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_mesures_remove_mesure.query.data.gql.g.dart';

abstract class Gremove_mesureData
    implements Built<Gremove_mesureData, Gremove_mesureDataBuilder> {
  Gremove_mesureData._();

  factory Gremove_mesureData(
          [void Function(Gremove_mesureDataBuilder b) updates]) =
      _$Gremove_mesureData;

  static void _initializeBuilder(Gremove_mesureDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gremove_mesureData_removeMeasure get removeMeasure;
  static Serializer<Gremove_mesureData> get serializer =>
      _$gremoveMesureDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gremove_mesureData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gremove_mesureData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gremove_mesureData.serializer,
        json,
      );
}

abstract class Gremove_mesureData_removeMeasure
    implements
        Built<Gremove_mesureData_removeMeasure,
            Gremove_mesureData_removeMeasureBuilder> {
  Gremove_mesureData_removeMeasure._();

  factory Gremove_mesureData_removeMeasure(
          [void Function(Gremove_mesureData_removeMeasureBuilder b) updates]) =
      _$Gremove_mesureData_removeMeasure;

  static void _initializeBuilder(Gremove_mesureData_removeMeasureBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gremove_mesureData_removeMeasure> get serializer =>
      _$gremoveMesureDataRemoveMeasureSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gremove_mesureData_removeMeasure.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gremove_mesureData_removeMeasure? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gremove_mesureData_removeMeasure.serializer,
        json,
      );
}
