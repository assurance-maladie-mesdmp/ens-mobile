// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_mesures_mesures_tiles.fragment.data.gql.g.dart';

abstract class GmesuresTiles {
  String get G__typename;
  BuiltList<GmesuresTiles_tiles> get tiles;
  Map<String, dynamic> toJson();
}

abstract class GmesuresTiles_tiles {
  String get G__typename;
  _i1.GMeasureCode get type;
  bool get visible;
  Map<String, dynamic> toJson();
}

abstract class GmesuresTilesData
    implements
        Built<GmesuresTilesData, GmesuresTilesDataBuilder>,
        GmesuresTiles {
  GmesuresTilesData._();

  factory GmesuresTilesData(
          [void Function(GmesuresTilesDataBuilder b) updates]) =
      _$GmesuresTilesData;

  static void _initializeBuilder(GmesuresTilesDataBuilder b) =>
      b..G__typename = 'MeasureTileListModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GmesuresTilesData_tiles> get tiles;
  static Serializer<GmesuresTilesData> get serializer =>
      _$gmesuresTilesDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GmesuresTilesData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmesuresTilesData? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GmesuresTilesData.serializer,
        json,
      );
}

abstract class GmesuresTilesData_tiles
    implements
        Built<GmesuresTilesData_tiles, GmesuresTilesData_tilesBuilder>,
        GmesuresTiles_tiles {
  GmesuresTilesData_tiles._();

  factory GmesuresTilesData_tiles(
          [void Function(GmesuresTilesData_tilesBuilder b) updates]) =
      _$GmesuresTilesData_tiles;

  static void _initializeBuilder(GmesuresTilesData_tilesBuilder b) =>
      b..G__typename = 'MeasureTileModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  _i1.GMeasureCode get type;
  @override
  bool get visible;
  static Serializer<GmesuresTilesData_tiles> get serializer =>
      _$gmesuresTilesDataTilesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GmesuresTilesData_tiles.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmesuresTilesData_tiles? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GmesuresTilesData_tiles.serializer,
        json,
      );
}
