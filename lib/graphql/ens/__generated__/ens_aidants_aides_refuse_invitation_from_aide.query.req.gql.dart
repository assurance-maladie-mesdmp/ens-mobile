// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_aidants_aides_refuse_invitation_from_aide.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_aidants_aides_refuse_invitation_from_aide.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_aidants_aides_refuse_invitation_from_aide.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_aidants_aides_refuse_invitation_from_aide.query.req.gql.g.dart';

abstract class Grefuse_invitation_from_aideReq
    implements
        Built<Grefuse_invitation_from_aideReq,
            Grefuse_invitation_from_aideReqBuilder>,
        _i1.OperationRequest<_i2.Grefuse_invitation_from_aideData,
            _i3.Grefuse_invitation_from_aideVars> {
  Grefuse_invitation_from_aideReq._();

  factory Grefuse_invitation_from_aideReq(
          [void Function(Grefuse_invitation_from_aideReqBuilder b) updates]) =
      _$Grefuse_invitation_from_aideReq;

  static void _initializeBuilder(Grefuse_invitation_from_aideReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'refuse_invitation_from_aide',
    )
    ..executeOnListen = true;

  @override
  _i3.Grefuse_invitation_from_aideVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
        context: context ?? const _i4.Context(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.Grefuse_invitation_from_aideData? Function(
    _i2.Grefuse_invitation_from_aideData?,
    _i2.Grefuse_invitation_from_aideData?,
  )? get updateResult;
  @override
  _i2.Grefuse_invitation_from_aideData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.Grefuse_invitation_from_aideData? parseData(Map<String, dynamic> json) =>
      _i2.Grefuse_invitation_from_aideData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.Grefuse_invitation_from_aideData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.Grefuse_invitation_from_aideData,
      _i3.Grefuse_invitation_from_aideVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Grefuse_invitation_from_aideReq> get serializer =>
      _$grefuseInvitationFromAideReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Grefuse_invitation_from_aideReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Grefuse_invitation_from_aideReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Grefuse_invitation_from_aideReq.serializer,
        json,
      );
}
