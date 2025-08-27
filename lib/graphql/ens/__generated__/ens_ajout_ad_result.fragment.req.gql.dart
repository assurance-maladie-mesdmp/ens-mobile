// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ajout_ad_result.fragment.ast.gql.dart'
    as _i4;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ajout_ad_result.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ajout_ad_result.fragment.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql/ast.dart' as _i5;

part 'ens_ajout_ad_result.fragment.req.gql.g.dart';

abstract class GactivationProfilResultReq
    implements
        Built<GactivationProfilResultReq, GactivationProfilResultReqBuilder>,
        _i1.FragmentRequest<_i2.GactivationProfilResultData,
            _i3.GactivationProfilResultVars> {
  GactivationProfilResultReq._();

  factory GactivationProfilResultReq(
          [void Function(GactivationProfilResultReqBuilder b) updates]) =
      _$GactivationProfilResultReq;

  static void _initializeBuilder(GactivationProfilResultReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'activationProfilResult';

  @override
  _i3.GactivationProfilResultVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GactivationProfilResultData? parseData(Map<String, dynamic> json) =>
      _i2.GactivationProfilResultData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GactivationProfilResultData data) =>
      data.toJson();

  static Serializer<GactivationProfilResultReq> get serializer =>
      _$gactivationProfilResultReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GactivationProfilResultReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GactivationProfilResultReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GactivationProfilResultReq.serializer,
        json,
      );
}
