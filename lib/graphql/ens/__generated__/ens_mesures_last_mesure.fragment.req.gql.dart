// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mesures_last_mesure.fragment.ast.gql.dart'
    as _i4;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mesures_last_mesure.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mesures_last_mesure.fragment.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql/ast.dart' as _i5;

part 'ens_mesures_last_mesure.fragment.req.gql.g.dart';

abstract class GlastMesureReq
    implements
        Built<GlastMesureReq, GlastMesureReqBuilder>,
        _i1.FragmentRequest<_i2.GlastMesureData, _i3.GlastMesureVars> {
  GlastMesureReq._();

  factory GlastMesureReq([void Function(GlastMesureReqBuilder b) updates]) =
      _$GlastMesureReq;

  static void _initializeBuilder(GlastMesureReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'lastMesure';

  @override
  _i3.GlastMesureVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GlastMesureData? parseData(Map<String, dynamic> json) =>
      _i2.GlastMesureData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GlastMesureData data) => data.toJson();

  static Serializer<GlastMesureReq> get serializer =>
      _$glastMesureReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GlastMesureReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GlastMesureReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GlastMesureReq.serializer,
        json,
      );
}
