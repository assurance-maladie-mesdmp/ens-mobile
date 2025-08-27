// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_ps_block_ps.query.data.gql.g.dart';

abstract class Gblock_psData
    implements Built<Gblock_psData, Gblock_psDataBuilder> {
  Gblock_psData._();

  factory Gblock_psData([void Function(Gblock_psDataBuilder b) updates]) =
      _$Gblock_psData;

  static void _initializeBuilder(Gblock_psDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gblock_psData_blockPS get blockPS;
  static Serializer<Gblock_psData> get serializer => _$gblockPsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gblock_psData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gblock_psData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gblock_psData.serializer,
        json,
      );
}

abstract class Gblock_psData_blockPS
    implements Built<Gblock_psData_blockPS, Gblock_psData_blockPSBuilder> {
  Gblock_psData_blockPS._();

  factory Gblock_psData_blockPS(
          [void Function(Gblock_psData_blockPSBuilder b) updates]) =
      _$Gblock_psData_blockPS;

  static void _initializeBuilder(Gblock_psData_blockPSBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gblock_psData_blockPS> get serializer =>
      _$gblockPsDataBlockPSSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gblock_psData_blockPS.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gblock_psData_blockPS? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gblock_psData_blockPS.serializer,
        json,
      );
}
