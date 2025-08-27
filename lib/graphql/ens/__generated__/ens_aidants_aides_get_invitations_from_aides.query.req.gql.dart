// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_aidants_aides_get_invitations_from_aides.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_aidants_aides_get_invitations_from_aides.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_aidants_aides_get_invitations_from_aides.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_aidants_aides_get_invitations_from_aides.query.req.gql.g.dart';

abstract class Gget_invitations_from_aidesReq
    implements
        Built<Gget_invitations_from_aidesReq,
            Gget_invitations_from_aidesReqBuilder>,
        _i1.OperationRequest<_i2.Gget_invitations_from_aidesData,
            _i3.Gget_invitations_from_aidesVars> {
  Gget_invitations_from_aidesReq._();

  factory Gget_invitations_from_aidesReq(
          [void Function(Gget_invitations_from_aidesReqBuilder b) updates]) =
      _$Gget_invitations_from_aidesReq;

  static void _initializeBuilder(Gget_invitations_from_aidesReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'get_invitations_from_aides',
    )
    ..executeOnListen = true;

  @override
  _i3.Gget_invitations_from_aidesVars get vars;
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
  _i2.Gget_invitations_from_aidesData? Function(
    _i2.Gget_invitations_from_aidesData?,
    _i2.Gget_invitations_from_aidesData?,
  )? get updateResult;
  @override
  _i2.Gget_invitations_from_aidesData? get optimisticResponse;
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
  _i2.Gget_invitations_from_aidesData? parseData(Map<String, dynamic> json) =>
      _i2.Gget_invitations_from_aidesData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.Gget_invitations_from_aidesData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.Gget_invitations_from_aidesData,
      _i3.Gget_invitations_from_aidesVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gget_invitations_from_aidesReq> get serializer =>
      _$ggetInvitationsFromAidesReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gget_invitations_from_aidesReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_invitations_from_aidesReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gget_invitations_from_aidesReq.serializer,
        json,
      );
}
