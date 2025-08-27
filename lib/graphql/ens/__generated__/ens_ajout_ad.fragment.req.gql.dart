// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ajout_ad.fragment.ast.gql.dart'
    as _i4;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ajout_ad.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ajout_ad.fragment.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql/ast.dart' as _i5;

part 'ens_ajout_ad.fragment.req.gql.g.dart';

abstract class GprofilMobileReq
    implements
        Built<GprofilMobileReq, GprofilMobileReqBuilder>,
        _i1.FragmentRequest<_i2.GprofilMobileData, _i3.GprofilMobileVars> {
  GprofilMobileReq._();

  factory GprofilMobileReq([void Function(GprofilMobileReqBuilder b) updates]) =
      _$GprofilMobileReq;

  static void _initializeBuilder(GprofilMobileReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'profilMobile';

  @override
  _i3.GprofilMobileVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GprofilMobileData? parseData(Map<String, dynamic> json) =>
      _i2.GprofilMobileData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GprofilMobileData data) => data.toJson();

  static Serializer<GprofilMobileReq> get serializer =>
      _$gprofilMobileReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GprofilMobileReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GprofilMobileReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GprofilMobileReq.serializer,
        json,
      );
}
