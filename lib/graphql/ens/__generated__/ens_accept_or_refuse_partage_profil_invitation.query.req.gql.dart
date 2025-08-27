// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_accept_or_refuse_partage_profil_invitation.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_accept_or_refuse_partage_profil_invitation.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_accept_or_refuse_partage_profil_invitation.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_accept_or_refuse_partage_profil_invitation.query.req.gql.g.dart';

abstract class Gaccept_or_refuse_partage_profil_invitationReq
    implements
        Built<Gaccept_or_refuse_partage_profil_invitationReq,
            Gaccept_or_refuse_partage_profil_invitationReqBuilder>,
        _i1.OperationRequest<
            _i2.Gaccept_or_refuse_partage_profil_invitationData,
            _i3.Gaccept_or_refuse_partage_profil_invitationVars> {
  Gaccept_or_refuse_partage_profil_invitationReq._();

  factory Gaccept_or_refuse_partage_profil_invitationReq(
      [void Function(Gaccept_or_refuse_partage_profil_invitationReqBuilder b)
          updates]) = _$Gaccept_or_refuse_partage_profil_invitationReq;

  static void _initializeBuilder(
          Gaccept_or_refuse_partage_profil_invitationReqBuilder b) =>
      b
        ..operation = _i4.Operation(
          document: _i5.document,
          operationName: 'accept_or_refuse_partage_profil_invitation',
        )
        ..executeOnListen = true;

  @override
  _i3.Gaccept_or_refuse_partage_profil_invitationVars get vars;
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
  _i2.Gaccept_or_refuse_partage_profil_invitationData? Function(
    _i2.Gaccept_or_refuse_partage_profil_invitationData?,
    _i2.Gaccept_or_refuse_partage_profil_invitationData?,
  )? get updateResult;
  @override
  _i2.Gaccept_or_refuse_partage_profil_invitationData? get optimisticResponse;
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
  _i2.Gaccept_or_refuse_partage_profil_invitationData? parseData(
          Map<String, dynamic> json) =>
      _i2.Gaccept_or_refuse_partage_profil_invitationData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(
          _i2.Gaccept_or_refuse_partage_profil_invitationData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.Gaccept_or_refuse_partage_profil_invitationData,
      _i3.Gaccept_or_refuse_partage_profil_invitationVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gaccept_or_refuse_partage_profil_invitationReq>
      get serializer => _$gacceptOrRefusePartageProfilInvitationReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gaccept_or_refuse_partage_profil_invitationReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gaccept_or_refuse_partage_profil_invitationReq? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gaccept_or_refuse_partage_profil_invitationReq.serializer,
        json,
      );
}
