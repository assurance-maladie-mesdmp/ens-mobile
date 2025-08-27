// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ps_role_add_role_or_add_ps_and_role.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ps_role_add_role_or_add_ps_and_role.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ps_role_add_role_or_add_ps_and_role.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_ps_role_add_role_or_add_ps_and_role.req.gql.g.dart';

abstract class Gupdate_professionel_sante_roleReq
    implements
        Built<Gupdate_professionel_sante_roleReq,
            Gupdate_professionel_sante_roleReqBuilder>,
        _i1.OperationRequest<_i2.Gupdate_professionel_sante_roleData,
            _i3.Gupdate_professionel_sante_roleVars> {
  Gupdate_professionel_sante_roleReq._();

  factory Gupdate_professionel_sante_roleReq(
      [void Function(Gupdate_professionel_sante_roleReqBuilder b)
          updates]) = _$Gupdate_professionel_sante_roleReq;

  static void _initializeBuilder(Gupdate_professionel_sante_roleReqBuilder b) =>
      b
        ..operation = _i4.Operation(
          document: _i5.document,
          operationName: 'update_professionel_sante_role',
        )
        ..executeOnListen = true;

  @override
  _i3.Gupdate_professionel_sante_roleVars get vars;
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
  _i2.Gupdate_professionel_sante_roleData? Function(
    _i2.Gupdate_professionel_sante_roleData?,
    _i2.Gupdate_professionel_sante_roleData?,
  )? get updateResult;
  @override
  _i2.Gupdate_professionel_sante_roleData? get optimisticResponse;
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
  _i2.Gupdate_professionel_sante_roleData? parseData(
          Map<String, dynamic> json) =>
      _i2.Gupdate_professionel_sante_roleData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(
          _i2.Gupdate_professionel_sante_roleData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.Gupdate_professionel_sante_roleData,
      _i3.Gupdate_professionel_sante_roleVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gupdate_professionel_sante_roleReq> get serializer =>
      _$gupdateProfessionelSanteRoleReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gupdate_professionel_sante_roleReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_professionel_sante_roleReq? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gupdate_professionel_sante_roleReq.serializer,
        json,
      );
}
