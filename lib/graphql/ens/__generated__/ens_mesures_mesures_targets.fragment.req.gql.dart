// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mesures_mesures_targets.fragment.ast.gql.dart'
    as _i4;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mesures_mesures_targets.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mesures_mesures_targets.fragment.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql/ast.dart' as _i5;

part 'ens_mesures_mesures_targets.fragment.req.gql.g.dart';

abstract class GmesuresTargetsReq
    implements
        Built<GmesuresTargetsReq, GmesuresTargetsReqBuilder>,
        _i1.FragmentRequest<_i2.GmesuresTargetsData, _i3.GmesuresTargetsVars> {
  GmesuresTargetsReq._();

  factory GmesuresTargetsReq(
          [void Function(GmesuresTargetsReqBuilder b) updates]) =
      _$GmesuresTargetsReq;

  static void _initializeBuilder(GmesuresTargetsReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'mesuresTargets';

  @override
  _i3.GmesuresTargetsVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GmesuresTargetsData? parseData(Map<String, dynamic> json) =>
      _i2.GmesuresTargetsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GmesuresTargetsData data) =>
      data.toJson();

  static Serializer<GmesuresTargetsReq> get serializer =>
      _$gmesuresTargetsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GmesuresTargetsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmesuresTargetsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GmesuresTargetsReq.serializer,
        json,
      );
}
