// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_messagerie_acknowledge.query.data.gql.g.dart';

abstract class GacknowledgeData
    implements Built<GacknowledgeData, GacknowledgeDataBuilder> {
  GacknowledgeData._();

  factory GacknowledgeData([void Function(GacknowledgeDataBuilder b) updates]) =
      _$GacknowledgeData;

  static void _initializeBuilder(GacknowledgeDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GacknowledgeData_acknowledge get acknowledge;
  static Serializer<GacknowledgeData> get serializer =>
      _$gacknowledgeDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GacknowledgeData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GacknowledgeData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GacknowledgeData.serializer,
        json,
      );
}

abstract class GacknowledgeData_acknowledge
    implements
        Built<GacknowledgeData_acknowledge,
            GacknowledgeData_acknowledgeBuilder> {
  GacknowledgeData_acknowledge._();

  factory GacknowledgeData_acknowledge(
          [void Function(GacknowledgeData_acknowledgeBuilder b) updates]) =
      _$GacknowledgeData_acknowledge;

  static void _initializeBuilder(GacknowledgeData_acknowledgeBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<GacknowledgeData_acknowledge> get serializer =>
      _$gacknowledgeDataAcknowledgeSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GacknowledgeData_acknowledge.serializer,
        this,
      ) as Map<String, dynamic>);

  static GacknowledgeData_acknowledge? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GacknowledgeData_acknowledge.serializer,
        json,
      );
}
