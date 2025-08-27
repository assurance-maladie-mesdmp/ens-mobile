// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_aidants_aides_delegation.fragment.ast.gql.dart'
    as _i4;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_aidants_aides_delegation.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_aidants_aides_delegation.fragment.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql/ast.dart' as _i5;

part 'ens_aidants_aides_delegation.fragment.req.gql.g.dart';

abstract class GdelegationReq
    implements
        Built<GdelegationReq, GdelegationReqBuilder>,
        _i1.FragmentRequest<_i2.GdelegationData, _i3.GdelegationVars> {
  GdelegationReq._();

  factory GdelegationReq([void Function(GdelegationReqBuilder b) updates]) =
      _$GdelegationReq;

  static void _initializeBuilder(GdelegationReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'delegation';

  @override
  _i3.GdelegationVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GdelegationData? parseData(Map<String, dynamic> json) =>
      _i2.GdelegationData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GdelegationData data) => data.toJson();

  static Serializer<GdelegationReq> get serializer =>
      _$gdelegationReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GdelegationReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GdelegationReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GdelegationReq.serializer,
        json,
      );
}
