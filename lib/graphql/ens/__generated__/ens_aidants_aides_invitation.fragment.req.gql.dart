// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_aidants_aides_invitation.fragment.ast.gql.dart'
    as _i4;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_aidants_aides_invitation.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_aidants_aides_invitation.fragment.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql/ast.dart' as _i5;

part 'ens_aidants_aides_invitation.fragment.req.gql.g.dart';

abstract class GinvitationReq
    implements
        Built<GinvitationReq, GinvitationReqBuilder>,
        _i1.FragmentRequest<_i2.GinvitationData, _i3.GinvitationVars> {
  GinvitationReq._();

  factory GinvitationReq([void Function(GinvitationReqBuilder b) updates]) =
      _$GinvitationReq;

  static void _initializeBuilder(GinvitationReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'invitation';

  @override
  _i3.GinvitationVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GinvitationData? parseData(Map<String, dynamic> json) =>
      _i2.GinvitationData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GinvitationData data) => data.toJson();

  static Serializer<GinvitationReq> get serializer =>
      _$ginvitationReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GinvitationReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GinvitationReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GinvitationReq.serializer,
        json,
      );
}
