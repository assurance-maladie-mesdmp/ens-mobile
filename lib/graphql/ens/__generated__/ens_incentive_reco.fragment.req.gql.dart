// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_incentive_reco.fragment.ast.gql.dart'
    as _i4;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_incentive_reco.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_incentive_reco.fragment.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql/ast.dart' as _i5;

part 'ens_incentive_reco.fragment.req.gql.g.dart';

abstract class GincentiveRecoReq
    implements
        Built<GincentiveRecoReq, GincentiveRecoReqBuilder>,
        _i1.FragmentRequest<_i2.GincentiveRecoData, _i3.GincentiveRecoVars> {
  GincentiveRecoReq._();

  factory GincentiveRecoReq(
          [void Function(GincentiveRecoReqBuilder b) updates]) =
      _$GincentiveRecoReq;

  static void _initializeBuilder(GincentiveRecoReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'incentiveReco';

  @override
  _i3.GincentiveRecoVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GincentiveRecoData? parseData(Map<String, dynamic> json) =>
      _i2.GincentiveRecoData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GincentiveRecoData data) => data.toJson();

  static Serializer<GincentiveRecoReq> get serializer =>
      _$gincentiveRecoReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GincentiveRecoReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GincentiveRecoReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GincentiveRecoReq.serializer,
        json,
      );
}
