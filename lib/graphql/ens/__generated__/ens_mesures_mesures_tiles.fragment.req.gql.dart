// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mesures_mesures_tiles.fragment.ast.gql.dart'
    as _i4;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mesures_mesures_tiles.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mesures_mesures_tiles.fragment.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql/ast.dart' as _i5;

part 'ens_mesures_mesures_tiles.fragment.req.gql.g.dart';

abstract class GmesuresTilesReq
    implements
        Built<GmesuresTilesReq, GmesuresTilesReqBuilder>,
        _i1.FragmentRequest<_i2.GmesuresTilesData, _i3.GmesuresTilesVars> {
  GmesuresTilesReq._();

  factory GmesuresTilesReq([void Function(GmesuresTilesReqBuilder b) updates]) =
      _$GmesuresTilesReq;

  static void _initializeBuilder(GmesuresTilesReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'mesuresTiles';

  @override
  _i3.GmesuresTilesVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GmesuresTilesData? parseData(Map<String, dynamic> json) =>
      _i2.GmesuresTilesData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GmesuresTilesData data) => data.toJson();

  static Serializer<GmesuresTilesReq> get serializer =>
      _$gmesuresTilesReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GmesuresTilesReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmesuresTilesReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GmesuresTilesReq.serializer,
        json,
      );
}
